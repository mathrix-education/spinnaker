import 'package:flutter/material.dart';
import 'package:mathrix_education_app/core/routing/routes.dart';
import 'package:mathrix_education_app/ui/layouts/list_with_title.dart';
import 'package:mathrix_education_app/ui/texts/headline_4.dart';
import 'package:mathrix_education_app/ui/widgets/activity_card.dart';

class ActivityListItem {
  final ActivityType type;
  final String name;
  final String id;
  final bool premium;
  final int order;

  ActivityListItem({
    @required this.type,
    @required this.name,
    @required this.id,
    @required this.premium,
    this.order,
  });
}

class ActivityList extends StatelessWidget {
  final String name;
  final List<ActivityListItem> activityList;

  ActivityList({Key key, this.name, this.activityList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CardListWithTitle<ActivityListItem>(
      title: Headline4(text: activityList.length > 0 ? name : ''),
      itemList: activityList,
      builder: (activity) {
        return ActivityCard(
          name: activity.name,
          premium: activity.premium,
          activityType: activity.type,
        );
      },
      onItemTap: (ActivityListItem activity) => _redirect(activity, context),
    );
  }

  static _redirect(ActivityListItem activity, BuildContext context) {
    {
      Map<String, String> arguments;
      String routePath;

      switch (activity.type) {
        case ActivityType.Course:
          arguments = {'courseId': activity.id, 'courseName': activity.name};
          routePath = RoutePaths.course;
          break;
        case ActivityType.Summary:
          // TODO: Handle this case.
          break;
        case ActivityType.Exercise:
          // TODO: Handle this case.
          break;
        case ActivityType.Flashcard:
          arguments = {'flashcardsId': activity.id, 'flashcardsName': activity.name};
          routePath = RoutePaths.flashcards;
          break;
        case ActivityType.Exam:
          // TODO: Handle this case.
          break;
        case ActivityType.ExamVideo:
          // TODO: Handle this case.
          break;
      }

      Navigator.of(context).pushNamed(routePath, arguments: arguments);
    }
  }
}
