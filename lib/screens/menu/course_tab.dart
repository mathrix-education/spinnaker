import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mathrix_education_app/core/graphql/queries.graphql.dart';
import 'package:mathrix_education_app/ui/widgets/activity_card.dart';

class CourseTab extends StatelessWidget {
  final List<ReadChaptersInformations$Query$Chapter$Notion> notions;

  CourseTab({Key key, this.notions}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: ClampingScrollPhysics(),
      itemBuilder: (_, index) {
        ReadChaptersInformations$Query$Chapter$Notion notion = notions[index];
        String name = notion.name;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(8.0),
              child: Text(
                '$name',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              itemBuilder: (_, index) {
                String courseName = notion.courses[index].name;
                ActivityType activityType = ActivityType.Course;

                return Container(
                  margin: EdgeInsets.only(bottom: 8.0),
                  child: ActivityCard(
                    name: courseName,
                    premium: false,
                    activityType: activityType,
                  ),
                );
              },
              itemCount: notion.courses.length,
            ),
          ],
        );
      },
      itemCount: this.notions.length,
    );
  }
}
