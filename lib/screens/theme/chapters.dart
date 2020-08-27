import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mathrix_education_app/core/graphql/queries.dart';
import 'package:mathrix_education_app/ui/widgets/mathrix_card.dart';

class Chapters extends StatelessWidget {
  /// The list of disciplines.
  final List<ListThemesChaptersFromDisciplines$Query$Theme$Chapter> chapters;

  Chapters({Key key, this.chapters}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (_, index) {
        return Padding(
          padding: EdgeInsets.only(bottom: 8.0),
          child: MathrixCard(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 16.0),
                  child: Text(
                    chapters[index].name,
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ),
              ],
            ),
          ),
        );
      },
      itemCount: chapters.length,
    );
  }
}
