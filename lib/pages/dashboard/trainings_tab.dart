import 'package:flutter/material.dart';
import 'package:mathrix_education_app/core/graphql/queries.dart';
import 'file:///C:/Mathrix/spinnaker/lib/pages/training/training_card_content.dart';
import 'package:mathrix_education_app/ui/layouts/list_with_title.dart';
import 'package:mathrix_education_app/ui/texts/title_green.dart';
import 'package:mathrix_education_app/ui/widgets/query_container.dart';

class TrainingsTab extends StatefulWidget {
  TrainingsTab({Key key}) : super(key: key);

  @override
  _TrainingsTabState createState() => _TrainingsTabState();
}

class _TrainingsTabState extends State<TrainingsTab> {
  @override
  Widget build(BuildContext context) {
    return QueryContainer(
      query: ListTrainingsQuery(),
      builder: (ListTrainings$Query data) {
        List<ListTrainings$Query$Training> trainings = data.listTrainings;

        List<ListTrainings$Query$Training> availableTrainings =
            trainings.where((element) => element.available).toList();

        List<ListTrainings$Query$Training> ownedTrainings = trainings.where((element) => element.owned).toList();

        return SingleChildScrollView(
          child: Column(children: [
            ownedTrainings.length > 0
                ? CardListWithTitle<ListTrainings$Query$Training>(
                    title: TitleGreen(text: 'Tes formations'),
                    itemList: ownedTrainings,
                    builder: (training) {
                      return TrainingCardContent(
                        training: training,
                        actionText: 'Accéder',
                      );
                    },
                    onItemTap: (item) {
                      Navigator.of(context).pushNamed(
                        '/training',
                        arguments: {'trainingId': item.id, 'trainingName': item.name},
                      );
                    },
                  )
                : SizedBox.shrink(),
            CardListWithTitle<ListTrainings$Query$Training>(
              title: TitleGreen(text: 'Formations disponibles'),
              itemList: availableTrainings,
              builder: (training) {
                return TrainingCardContent(
                  training: training,
                  actionText: 'Acheter',
                );
              },
            )
          ]),
        );
      },
    );
  }
}
