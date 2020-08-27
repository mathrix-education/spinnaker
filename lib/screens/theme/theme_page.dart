import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mathrix_education_app/core/graphql/queries.dart';
import 'package:mathrix_education_app/screens/theme/chapters.dart';

class ThemePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Query(
        options: QueryOptions(
          documentNode: ListThemesChaptersFromDisciplinesQuery().document,
          variables: {'gradeId': '8', 'disciplineId': '1'},
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
              ListThemesChaptersFromDisciplines$Query.fromJson(result.data)
                  .listThemes;

          print(result.data.toString());
          print(result.exception.toString());

          print(themes.toString());
          return Scaffold(
            body: ListView.builder(
              itemBuilder: (_, index) {
                return Chapters(chapters: themes[index].chapters);
              },
              itemCount: themes.length,
            ),
          );
        });
  }
}
