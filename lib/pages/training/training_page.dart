import 'package:flutter/widgets.dart';
import 'package:mathrix_education_app/core/graphql/queries.dart';
import 'package:mathrix_education_app/core/routing/routes.dart';
import 'package:mathrix_education_app/ui/layouts/card_list_with_title.dart';
import 'package:mathrix_education_app/ui/layouts/standard_page.dart';
import 'package:mathrix_education_app/ui/texts/headline_4.dart';
import 'package:mathrix_education_app/ui/widgets/activity_container.dart';
import 'package:mathrix_education_app/ui/widgets/query_container.dart';

class TrainingPage extends StatelessWidget {
  final String trainingName;
  final String trainingId;

  const TrainingPage({this.trainingName, this.trainingId});

  @override
  Widget build(BuildContext context) {
    return StandardPage(
      title: trainingName,
      body: QueryContainer(
        query: ReadTrainingQuery(),
        variables: ReadTrainingArguments(id: trainingId),
        builder: (ReadTraining$Query data) {
          List<ReadTraining$Query$Training$Section> sections = data.readTraining.sections;

          return ListView.builder(
            itemBuilder: (_, index) {
              return CardListWithTitle<ReadTraining$Query$Training$Section$Lesson>(
                title: Headline4(text: sections[index].name),
                itemList: sections[index].lessons,
                builder: (ReadTraining$Query$Training$Section$Lesson item) {
                  return ActivityContainer(
                    name: item.name,
                    activityType: ActivityType.Course,
                    premium: false,
                  );
                },
                onItemTap: (lesson) {
                  Navigator.of(context).pushNamed(
                    RoutePaths.lesson,
                    arguments: {'lessonId': lesson.id, 'lessonName': lesson.name},
                  );
                },
              );
            },
            itemCount: sections.length,
          );
        },
      ),
    );
  }
}
