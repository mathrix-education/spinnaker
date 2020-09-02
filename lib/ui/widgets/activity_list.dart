import 'package:flutter/material.dart';
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
  final ValueChanged<ActivityListItem> activityTapped;

  ActivityList({Key key, this.name, this.activityList, this.activityTapped}) : super(key: key);

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
      onItemTap: (ActivityListItem activity) {
        activityTapped(activity);
      },
    );
  }
}
