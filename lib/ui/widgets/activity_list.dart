import 'package:flutter/material.dart';
import 'package:mathrix_education_app/core/misc/vibration.dart';
import 'package:mathrix_education_app/core/routing/routes.dart';
import 'package:mathrix_education_app/core/store/session.state.dart';
import 'package:mathrix_education_app/core/types/interactions.dart';
import 'package:mathrix_education_app/ui/dialogs/premium_dialog.dart';
import 'package:mathrix_education_app/ui/layouts/card_list_with_title.dart';
import 'package:mathrix_education_app/ui/texts/headline_4.dart';
import 'package:mathrix_education_app/ui/widgets/activity_container.dart';
import 'package:provider/provider.dart';

class ActivityListItem {
  final ActivityType type;
  final String name;
  final String id;
  final bool premium;
  final int order;
  final Interaction interaction;

  const ActivityListItem({
    @required this.type,
    @required this.name,
    @required this.id,
    @required this.premium,
    @required this.interaction,
    this.order,
  });
}

class ActivityList extends StatelessWidget {
  /// The activity list name.
  final String name;

  /// The activity list.
  final List<ActivityListItem> activityList;

  const ActivityList({this.name, this.activityList});

  @override
  Widget build(BuildContext context) {
    return CardListWithTitle<ActivityListItem>(
      title: Headline4(text: activityList.length > 0 ? name : ''),
      itemList: activityList,
      builder: (activity) {
        return ActivityContainer(
          name: activity.name,
          premium: activity.premium,
          activityType: activity.type,
          interaction: activity.interaction,
        );
      },
      onItemTap: (ActivityListItem activity) => _redirect(activity, context),
    );
  }

  static _redirect(ActivityListItem activity, BuildContext context) {
    {
      Map<String, String> arguments;
      String routePath;
      AppState appState = Provider.of<AppState>(context, listen: false);

      if (appState.user.premium == false && activity.premium == true) {
        hapticPokeFeedback();
        showDialog(
          context: context,
          builder: (_) => PremiumDialog(),
        );
        return;
      }

      switch (activity.type) {
        case ActivityType.Course:
          arguments = {'courseId': activity.id, 'courseName': activity.name};
          routePath = RoutePaths.course;
          break;
        case ActivityType.Summary:
          arguments = {'courseId': activity.id, 'courseName': activity.name};
          routePath = RoutePaths.course;
          break;
        case ActivityType.Exercise:
          arguments = {'subjectId': activity.id, 'subjectName': activity.name};
          routePath = RoutePaths.exercises;
          break;
        case ActivityType.Flashcard:
          arguments = {'flashcardsId': activity.id, 'flashcardsName': activity.name};
          routePath = RoutePaths.flashcards;
          break;
        case ActivityType.Exam:
          arguments = {'examId': activity.id, 'examName': activity.name};
          routePath = RoutePaths.exam;
          break;
        case ActivityType.ExamVideo:
          arguments = {'examId': activity.id, 'examName': activity.name};
          routePath = RoutePaths.videoExam;
          break;
      }

      Navigator.of(context).pushNamed(routePath, arguments: arguments);
    }
  }
}
