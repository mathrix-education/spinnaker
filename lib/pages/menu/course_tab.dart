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

        List<ActivityListItem> courseList = notion.courses.map((e) {
          return ActivityListItem(
            id: e.id,
            name: e.name,
            type: ActivityType.Course,
            premium: e.premium,
            order: e.order,
          );
        }).toList();

        List<ActivityListItem> exerciseList = notion.subjects.map((e) {
          return ActivityListItem(
            id: e.id,
            name: e.name,
            type: ActivityType.Exercise,
            premium: e.premium,
            order: e.order,
          );
        }).toList();

        List<ActivityListItem> courseExerciseList = courseList + exerciseList;

        courseExerciseList.sort((a, b) {
          return (a.order - b.order);
        });

        return ActivityList(
          name: notion.name,
          activityList: courseExerciseList,
        );
      },
      itemCount: this.notions.length,
    );
  }
}
