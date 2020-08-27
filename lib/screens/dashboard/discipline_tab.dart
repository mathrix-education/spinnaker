import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mathrix_education_app/core/graphql/queries.dart';
import 'package:mathrix_education_app/ui/widgets/mathrix_card.dart';

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
        documentNode: MeQuery().document,
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

        final disciplines = Me$Query.fromJson(result.data).me.grade.disciplines;

        return ListView.builder(
          itemBuilder: (_, index) {
            return Padding(
              padding: EdgeInsets.all(8),
              child: MathrixCard(
                  child: SizedBox(
                height: 80,
                child: Text(disciplines[index].name),
              )),
            );
          },
          itemCount: disciplines.length,
        );
      },
    );
  }
}
