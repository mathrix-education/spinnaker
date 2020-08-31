import 'package:flutter/widgets.dart';
import 'package:mathrix_education_app/core/graphql/queries.graphql.dart';
import 'package:mathrix_education_app/ui/widgets/activity_card.dart';
import 'package:mathrix_education_app/ui/widgets/activity_list.dart';

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

        List<ActivityListItem> chapterList = notion.courses.map((e) {
          return ActivityListItem(
            activityName: e.name,
            activityType: ActivityType.Course,
            premium: e.premium,
          );
        }).toList();

        return ActivityList(
          name: notion.name,
          activityList: chapterList,
        );
      },
      itemCount: this.notions.length,
    );
  }
}
