import 'package:flutter/material.dart';
import 'package:mathrix_education_app/ui/widgets/activity_card.dart';

class ActivityListItem {
  final ActivityType activityType;
  final String activityName;
  final bool premium;

  ActivityListItem({this.activityType, this.activityName, this.premium});
}

class ActivityList extends StatelessWidget {
  final String name;
  final List<ActivityListItem> activityList;

  ActivityList({Key key, this.name, this.activityList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String displayedText = activityList.length>0? name : '';
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
              name: activityList[index].activityName,
              premium: activityList[index].premium,
              activityType: activityList[index].activityType,
            ),
          );
        },
        itemCount: activityList.length,
      ),
    ]);
  }
}
