import 'package:flutter/material.dart';
import 'package:mathrix_education_app/core/graphql/queries.dart';
import 'package:mathrix_education_app/ui/layouts/list_with_title.dart';
import 'package:mathrix_education_app/ui/layouts/standard_page.dart';
import 'package:mathrix_education_app/ui/texts/headline_4.dart';
import 'package:mathrix_education_app/ui/texts/title_green.dart';
import 'package:mathrix_education_app/ui/widgets/progress_bar.dart';
import 'package:mathrix_education_app/ui/widgets/query_container.dart';

class ThemePage extends StatelessWidget {
  final String disciplineId;

  final String disciplineName;

  final String gradeId;

  ThemePage({Key key, this.disciplineId, this.disciplineName, this.gradeId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StandardPage(
      title: disciplineName,
      body: QueryContainer(
          query: ListThemesChaptersFromDisciplinesQuery(),
          variables: {'gradeId': gradeId, 'disciplineId': disciplineId},
          builder: (ListThemesChaptersFromDisciplines$Query data) {
            final List<ListThemesChaptersFromDisciplines$Query$Theme> themes = data.listThemes;

            return SingleChildScrollView(
                child: Column(
                    children: themes.map((theme) {
              return CardListWithTitle<ListThemesChaptersFromDisciplines$Query$Theme$Chapter>(
                itemList: theme.chapters,
                title: TitleGreen(text: theme.name),
                builder: (chapter) {
                  return Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Headline4(text: chapter.name),
                        Container(
                          margin: EdgeInsets.only(top: 8.0),
                          child: ProgressBar(value: 0.3),
                        ),
                      ],
                    ),
                  );
                },
                onItemTap: (chapter) {
                  Navigator.of(context).pushNamed(
                    '/menu',
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
}
