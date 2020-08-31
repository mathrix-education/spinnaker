import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mathrix_education_app/core/graphql/queries.dart';
import 'package:mathrix_education_app/screens/theme/chapters.dart';
import 'package:mathrix_education_app/ui/layouts/mathrix_app_bar.dart';
import 'package:mathrix_education_app/ui/variables/colors.dart';

class ThemePage extends StatelessWidget {
  /// The discipline.
  final Me$Query$User$Grade$Discipline discipline;

  /// The grade which belongs the discipline.
  final Me$Query$User$Grade grade;

  ThemePage({Key key, this.discipline, this.grade}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Query(
        options: QueryOptions(
          documentNode: ListThemesChaptersFromDisciplinesQuery().document,
          variables: {'gradeId': grade.id, 'disciplineId': discipline.id},
        ),
        builder: (
          QueryResult result, {
          Future<QueryResult> Function() refetch,
          FetchMore fetchMore,
        }) {
          if (result.hasException) {
            // TODO
            return Text(result.exception.toString());
          }

          if (result.loading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          final List<ListThemesChaptersFromDisciplines$Query$Theme> themes =
              ListThemesChaptersFromDisciplines$Query.fromJson(result.data).listThemes;

          return Scaffold(
            appBar: CustomAppBar(
              textTitle: discipline.name,
            ),
            body: ListView.builder(
              itemBuilder: (_, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 8.0, top: 8.0, right: 8.0),
                      child: Text(
                        themes[index].name,
                        style: Theme.of(context).textTheme.headline3.apply(color: green),
                      ),
                    ),
                    Chapters(chapters: themes[index].chapters),
                  ],
                );
              },
              itemCount: themes.length,
            ),
          );
        });
  }
}
