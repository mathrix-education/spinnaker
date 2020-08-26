import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mathrix_education_app/graphql/queries.dart';

class DisciplineTab extends StatefulWidget {
  DisciplineTab({Key key}) : super(key: key);

  @override
  _DisciplineTabState createState() => _DisciplineTabState();
}

class _DisciplineTabState extends State<DisciplineTab> {
  @override
  Widget build(BuildContext context) {
    return Query(
      options: QueryOptions(
        documentNode: ListDisciplinesQuery().document,
      ),
      builder: (
        QueryResult result, {
        Future<QueryResult> Function() refetch,
        FetchMore fetchMore,
      }) {
        if (result.hasException) {
          return Text(result.exception.toString());
        }

        if (result.loading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        final disciplines = ListDisciplines$Query.fromJson(result.data);

        return ListView.builder(
          itemBuilder: (_, index) {
            return ListTile(
              leading: Icon(Icons.card_travel),
              title: Text(disciplines.listDisciplines[index].name),
            );
          },
          itemCount: disciplines.listDisciplines.length,
        );
      },
    );
  }
}
