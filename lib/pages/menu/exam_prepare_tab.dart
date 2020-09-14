import 'package:flutter/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mathrix_education_app/core/graphql/queries.graphql.dart';
import 'package:mathrix_education_app/ui/widgets/activity_card.dart';
import 'package:mathrix_education_app/ui/widgets/activity_list.dart';

class ExamPrepareTab extends StatelessWidget {
  final List<ReadChaptersInformations$Query$Chapter$Flashcard> flashcards;
  final List<ReadChaptersInformations$Query$Chapter$Notion$Course> summaries;
  final List<ReadChaptersInformations$Query$Chapter$Exam> exams;

  ExamPrepareTab({
    Key key,
    @required this.summaries,
    @required this.flashcards,
    @required this.exams,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<ActivityListItem> flashcardList = flashcards.map((e) {
      return ActivityListItem(
        id: e.id,
        type: ActivityType.Flashcard,
        name: e.name,
        premium: e.premium,
      );
    }).toList();

    List<ActivityListItem> summaryList = summaries.map((e) {
      return ActivityListItem(
        id: e.id,
        type: ActivityType.Summary,
        name: e.name,
        premium: e.premium,
      );
    }).toList();

    List<ActivityListItem> examsList = exams.map((e) {
      return ActivityListItem(
        id: e.id,
        type: e.duration != null ? ActivityType.Exam : ActivityType.ExamVideo,
        name: e.name,
        premium: e.premium,
      );
    }).toList();

    List<ActivityListItem> summaryAndFlashcards = flashcardList + summaryList;

    // TODO evaluation

    return SingleChildScrollView(
      child: Column(
        children: [
          ActivityList(
            name: 'Fiche et flashcards',
            activityList: summaryAndFlashcards,
          ),
          ActivityList(
            name: 'Sujet corrigés',
            activityList: examsList,
          ),
        ],
      ),
    );
  }
}
