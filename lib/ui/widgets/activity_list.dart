import 'package:flutter/material.dart';
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
    String displayedText = activityList.length > 0 ? name : '';
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
        padding: EdgeInsets.all(8.0),
        child: Text(
          '$displayedText',
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
      ListView.builder(
        shrinkWrap: true,
        physics: ClampingScrollPhysics(),
        itemBuilder: (_, index) {
          return Container(
            margin: EdgeInsets.only(bottom: 8.0),
            child: ActivityCard(
              name: activityList[index].name,
              premium: activityList[index].premium,
              activityType: activityList[index].type,
              onTap: () => activityTapped(activityList[index]),
            ),
          );
        },
        itemCount: activityList.length,
      ),
    ]);
  }
}
