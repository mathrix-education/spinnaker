import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mathrix_education_app/core/graphql/queries.dart';
import 'package:mathrix_education_app/ui/widgets/mathrix_card.dart';
import 'package:mathrix_education_app/ui/widgets/progress_bar.dart';

class Chapters extends StatelessWidget {
  /// The list of disciplines.
  final List<ListThemesChaptersFromDisciplines$Query$Theme$Chapter> chapters;

  Chapters({Key key, this.chapters}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: ClampingScrollPhysics(),
      itemBuilder: (_, index) {
        return Padding(
          padding: EdgeInsets.only(bottom: 8.0),
          child: MathrixCard(
            onTap: () {
              Navigator.of(context).pushNamed(
                '/menu',
              );
            },
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    chapters[index].name,
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 8.0),
                    child: ProgressBar(value: 0.3),
                  ),
                ],
              ),
            ),
          ),
        );
      },
      itemCount: chapters.length,
    );
  }
}
