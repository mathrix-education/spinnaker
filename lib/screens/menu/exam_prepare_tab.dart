import 'package:flutter/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mathrix_education_app/core/graphql/queries.graphql.dart';
import 'package:mathrix_education_app/ui/widgets/activity_card.dart';
import 'package:mathrix_education_app/ui/widgets/activity_list.dart';

class ExamPrepareTab extends StatelessWidget {
  final List<ReadChaptersInformations$Query$Chapter$Flashcard> flashcards;
  final List<ReadChaptersInformations$Query$Chapter$Notion$Course> summaries;

  ExamPrepareTab({Key key, this.summaries, this.flashcards}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<ActivityListItem> flashcardList = flashcards.map((e) {
      return ActivityListItem(
        activityType: ActivityType.Flashcard,
        activityName: e.name,
        premium: e.premium,
      );
    }).toList();

    List<ActivityListItem> summaryList = summaries.map((e) {
      return ActivityListItem(
        activityType: ActivityType.Summary,
        activityName: e.name,
        premium: e.premium,
      );
    }).toList();

    List<ActivityListItem> summaryAndFlashcards = flashcardList + summaryList;

    // TODO evaluation

    return Column(children: [
      ActivityList(
        name: 'Fiche et flashcards',
        activityList: summaryAndFlashcards,
      ),
    ]);
  }
}
