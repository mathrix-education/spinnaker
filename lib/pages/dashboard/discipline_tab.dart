import 'package:flutter/material.dart';
import 'package:mathrix_education_app/core/graphql/queries.dart';
import 'package:mathrix_education_app/core/routing/routes.dart';
import 'file:///C:/Mathrix/spinnaker/lib/ui/layouts/card_list_with_title_skeleton.dart';
import 'package:mathrix_education_app/ui/layouts/card_list_with_title.dart';
import 'package:mathrix_education_app/ui/texts/headline_4.dart';
import 'package:mathrix_education_app/ui/widgets/query_container.dart';
import 'package:mathrix_education_app/ui/widgets/skeletons.dart';

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
    'maths-complementaires': 'maths',
    'enseignement-scientifique': 'maths', // TODO, change the discipline map here
    'techno': 'maths', // TODO, change the discipline map here
  };

  @override
  Widget build(BuildContext context) {
    return QueryContainer(
      query: MeQuery(),
      loadingSkeleton: Skeletons(),
      builder: (Me$Query data) {
        final Me$Query$User me = data.me;
        final List<Me$Query$User$Grade$Discipline> disciplines = data.me?.grade?.disciplines ?? [];
        return CardListWithTitle<Me$Query$User$Grade$Discipline>(
          itemList: disciplines,
          builder: (discipline) {
            String slug = _slugTransform(discipline.slug);
            return SizedBox(
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 16.0),
                      child: Headline4(text: discipline.name),
                    ),
                  ),
                  Image.asset('assets/disciplines/$slug.png'),
                ],
              ),
            );
          },
          onItemTap: (discipline) {
            Navigator.of(context).pushNamed(
              RoutePaths.themes,
              arguments: {
                'disciplineId': discipline.id,
                'disciplineName': discipline.name,
                'gradeId': me.grade.id,
              },
            );
          },
        );
      },
    );
  }

  _slugTransform(String slug) {
    return slugMap[slug] ?? slug;
  }
}
