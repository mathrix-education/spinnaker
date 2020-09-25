import 'package:flutter/widgets.dart';
import 'package:mathrix_education_app/core/graphql/queries.graphql.dart';
import 'package:mathrix_education_app/core/types/interactions.dart';
import 'package:mathrix_education_app/ui/widgets/activity_container.dart';
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
          Comprehension convertedComprehension;
          ReadChaptersInformations$Query$Chapter$Notion$Course$Interaction$InteractionComprehension comprehension =
              e.interaction?.comprehension;
          if (comprehension == null) {
            convertedComprehension = null;
          } else {
            convertedComprehension =
                comprehension == ReadChaptersInformations$Query$Chapter$Notion$Course$Interaction$InteractionComprehension.blur
                    ? Comprehension.blur
                    : Comprehension.clear;
          }

          return ActivityListItem(
              id: e.id,
              name: e.name,
              type: ActivityType.Course,
              premium: e.premium,
              order: e.order,
              interaction: Interaction(comprehension: convertedComprehension));
        }).toList();

        List<ActivityListItem> exerciseList = notion.subjects.map((e) {
          int score = 0;
          bool hasCompletedOneExercise = false;

          e.exercises.forEach((element) {
            if (element.interaction != null) {
              score += element.interaction.score ?? 0;
              hasCompletedOneExercise = true;
            }
          });

          Interaction convertedInteraction = Interaction();
          if (hasCompletedOneExercise) {
            convertedInteraction.score = score;
            convertedInteraction.total = e.exercises.length;
          }

          return ActivityListItem(
            id: e.id,
            name: e.name,
            type: ActivityType.Exercise,
            premium: e.premium,
            order: e.order,
            interaction: convertedInteraction,
          );
        }).toList();

        List<ActivityListItem> courseExerciseList = courseList + exerciseList;

        courseExerciseList.sort((a, b) => a.order - b.order);

        return ActivityList(
          name: notion.name,
          activityList: courseExerciseList,
        );
      },
      itemCount: this.notions.length,
    );
  }
}
