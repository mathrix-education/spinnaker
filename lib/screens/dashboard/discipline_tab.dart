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
  /// The slug map that maps disciplines to the icon name.
  final Map<String, String> slugMap = {
    'physique-chimie': 'physique',
    'tecno': 'sicence-ingenieur',
    'maths-expertes': 'maths',
  };

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

        final Me$Query$User me = Me$Query.fromJson(result.data).me;
        final disciplines = Me$Query.fromJson(result.data).me.grade.disciplines;

        return ListView.builder(
          itemBuilder: (_, index) {
            String slug = _slugTransform(disciplines[index].slug);
            Map<String, dynamic> arguments = {
              'discipline': disciplines[index],
              'grade': me.grade,
            };
            return Padding(
              padding: EdgeInsets.only(bottom: 8.0),
              child: MathrixCard(
                onTap: () {
                  Navigator.of(context).pushNamed(
                    '/themes',
                    arguments: arguments,
                  );
                },
                child: SizedBox(
                  height: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 16.0),
                        child: Text(disciplines[index].name,
                            style: Theme.of(context).textTheme.headline4),
                      ),
                      Image(image: AssetImage('assets/disciplines/$slug.png'))
                    ],
                  ),
                ),
              ),
            );
          },
          itemCount: disciplines.length,
        );
      },
    );
  }

  _slugTransform(String slug) {
    return slugMap[slug] ?? slug;
  }
}
