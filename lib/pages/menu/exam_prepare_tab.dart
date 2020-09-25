import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mathrix_education_app/core/graphql/queries.graphql.dart';
import 'package:mathrix_education_app/core/types/interactions.dart';
import 'package:mathrix_education_app/ui/widgets/activity_container.dart';
import 'package:mathrix_education_app/ui/widgets/activity_list.dart';

class ExamPrepareTab extends StatelessWidget {
  /// The flashcards.
  final List<ReadChaptersInformations$Query$Chapter$Flashcard> flashcards;

  /// The summaries.
  final List<ReadChaptersInformations$Query$Chapter$Notion$Course> summaries;

  /// The exams.
  final List<ReadChaptersInformations$Query$Chapter$Exam> exams;

  ExamPrepareTab({@required this.summaries, @required this.flashcards, @required this.exams});

  @override
  Widget build(BuildContext context) {
    List<ActivityListItem> flashcardList = flashcards.map((f) {
      Comprehension convertedComprehension;
      ReadChaptersInformations$Query$Chapter$Flashcard$Interaction$InteractionComprehension comprehension = f.interaction?.comprehension;

      if (comprehension != null) {
        convertedComprehension =
            (comprehension == ReadChaptersInformations$Query$Chapter$Flashcard$Interaction$InteractionComprehension.blur)
                ? Comprehension.blur
                : Comprehension.clear;
      }

      return ActivityListItem(
        id: f.id,
        type: ActivityType.Flashcard,
        name: f.name,
        premium: f.premium,
        interaction: Interaction(comprehension: convertedComprehension),
      );
    }).toList();

    List<ActivityListItem> summaryList = summaries.map((s) {
      // Convert comprehension to the correct format
      Comprehension convertedComprehension;
      ReadChaptersInformations$Query$Chapter$Notion$Course$Interaction$InteractionComprehension comprehension =
          s.interaction?.comprehension;
      if (comprehension == null) {
        convertedComprehension = null;
      } else {
        convertedComprehension =
            comprehension == ReadChaptersInformations$Query$Chapter$Notion$Course$Interaction$InteractionComprehension.blur
                ? Comprehension.blur
                : Comprehension.clear;
      }

      return ActivityListItem(
        id: s.id,
        type: ActivityType.Summary,
        name: s.name,
        premium: s.premium,
        interaction: Interaction(comprehension: convertedComprehension),
      );
    }).toList();

    List<ActivityListItem> examsList = exams.map((e) {
      Interaction convertedInteraction = Interaction();

      // Convert interaction to the correct format.
      if (e.interaction?.total != null && e.interaction?.score != null) {
        convertedInteraction.score = e.interaction.score;
        convertedInteraction.total = e.interaction.total;
      } else if (e.interaction?.comprehension != null) {
        convertedInteraction.comprehension =
            (e.interaction.comprehension == ReadChaptersInformations$Query$Chapter$Exam$Interaction$InteractionComprehension.clear)
                ? Comprehension.clear
                : Comprehension.blur;
      }

      return ActivityListItem(
        id: e.id,
        type: e.duration != null ? ActivityType.Exam : ActivityType.ExamVideo,
        name: e.name,
        premium: e.premium,
        interaction: convertedInteraction,
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
