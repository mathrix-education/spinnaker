import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mathrix_education_app/core/graphql/graphql_client.dart';
import 'package:mathrix_education_app/core/graphql/queries.dart';
import 'package:mathrix_education_app/core/routing/routes.dart';
import 'package:mathrix_education_app/ui/layouts/list_with_title.dart';
import 'package:mathrix_education_app/ui/layouts/standard_page.dart';
import 'package:mathrix_education_app/ui/texts/headline_4.dart';
import 'package:mathrix_education_app/ui/texts/title_green.dart';
import 'package:mathrix_education_app/ui/widgets/discipline_card.dart';
import 'package:mathrix_education_app/ui/widgets/progress_bar.dart';
import 'package:mathrix_education_app/ui/widgets/query_container.dart';
import 'package:mathrix_education_app/ui/widgets/skeleton_view.dart';
import 'package:mathrix_education_app/ui/widgets/skeletons.dart';

class ThemePage extends StatefulWidget {
  /// The discipline id.
  final String disciplineId;

  /// The discipline name.
  final String disciplineName;

  /// The grade id.
  final String gradeId;

  ThemePage({this.disciplineId, this.disciplineName, this.gradeId});

  @override
  _ThemePageState createState() => _ThemePageState();
}

class _ThemePageState extends State<ThemePage> {
  /// The GraphQL client.
  final _client = GraphQLConfiguration.client;

  HashMap<String, double> themeValues = new HashMap();

  @override
  void initState() {
    super.initState();
    loadProgressBar();
  }

  @override
  Widget build(BuildContext context) {
    return StandardPage(
      title: widget.disciplineName,
      body: QueryContainer(
          loadingSkeleton: Skeletons(),
          query: ListThemesChaptersFromDisciplinesQuery(),
          variables: ListThemesChaptersFromDisciplinesArguments(gradeId: widget.gradeId, disciplineId: widget.disciplineId),
          builder: (ListThemesChaptersFromDisciplines$Query data) {
            final List<ListThemesChaptersFromDisciplines$Query$Theme> themes = data.listThemes;

            return SingleChildScrollView(
                child: Column(
                    children: themes.map((theme) {
              String themeId = theme.id;
              return CardListWithTitle<ListThemesChaptersFromDisciplines$Query$Theme$Chapter>(
                itemList: theme.chapters,
                title: TitleGreen(text: theme.name),
                builder: (chapter) {
                  String chapterId = chapter.id;
                  return Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Headline4(text: chapter.name),
                        Container(
                          margin: EdgeInsets.only(top: 8.0),
                          // child: ProgressBar(value: themeValues['$chapterId-$themeId'] ?? 0),
                        ),
                      ],
                    ),
                  );
                },
                onItemTap: (chapter) {
                  Navigator.of(context).pushNamed(
                    RoutePaths.menu,
                    arguments: {
                      'chapterId': chapter.id,
                      'chapterName': chapter.name,
                    },
                  );
                },
              );
            }).toList()));
          }),
    );
  }

  loadProgressBar() async {
    HashMap<String, double> tempThemeValues = new HashMap();
    QueryOptions queryOptions = QueryOptions(
      documentNode: LoadGaugeQuery().document,
      variables: LoadGaugeArguments(gradeId: widget.gradeId, disciplineId: widget.disciplineId).toJson(),
    );

    final QueryResult queryResult = await _client.query(queryOptions);

    if (!queryResult.hasException) {
      final LoadGauge$Query loadGaugeQuery = LoadGauge$Query.fromJson(queryResult.data);

      loadGaugeQuery.listThemes.forEach((LoadGauge$Query$Theme theme) {
        theme.chapters.forEach((LoadGauge$Query$Theme$Chapter chapter) {
          int score = 0;
          int total = 0;
          chapter.notions.forEach((notion) {
            notion.courses.forEach((course) {
              if (course.interaction?.comprehension ==
                  LoadGauge$Query$Theme$Chapter$Notion$Course$Interaction$InteractionComprehension.clear) {
                score++;
              }
            });

            notion.subjects.forEach((subject) {
              subject.exercises.forEach((exercise) {
                if (exercise?.interaction?.score == 1) {
                  score++;
                }
              });
            });
            total += notion.courses.length + notion.subjects.length;
          });

          chapter.exams.forEach((exam) {
            if (exam.interaction != null && exam.interaction.total == exam.interaction.score) {
              score++;
            }
          });
          total += chapter.exams.length;

          chapter.flashcards.forEach((flashcard) {
            if (flashcard.interaction?.comprehension ==
                LoadGauge$Query$Theme$Chapter$Flashcard$Interaction$InteractionComprehension.clear) {
              score++;
            }
          });

          String chapterId = chapter.id;
          String themeId = theme.id;
          tempThemeValues['$chapterId-$themeId'] = score / total;
        });
      });
      setState(() {
        themeValues = tempThemeValues;
      });
    }
  }
}
