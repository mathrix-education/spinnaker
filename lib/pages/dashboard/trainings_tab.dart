import 'package:flutter/material.dart';
import 'package:mathrix_education_app/core/graphql/queries.dart';
import 'package:mathrix_education_app/pages/training_card_content.dart';
import 'package:mathrix_education_app/ui/layouts/list_with_title.dart';
import 'package:mathrix_education_app/ui/texts/headline_4.dart';
import 'package:mathrix_education_app/ui/texts/title_green.dart';
import 'package:mathrix_education_app/ui/variables/colors.dart';
import 'package:mathrix_education_app/ui/widgets/mathrix_card.dart';
import 'package:mathrix_education_app/ui/widgets/query_container.dart';
import 'package:mathrix_education_app/ui/widgets/standard_rounded_widget.dart';

class TrainingsTab extends StatefulWidget {
  TrainingsTab({Key key}) : super(key: key);

  @override
  _TrainingsTabState createState() => _TrainingsTabState();
}

class _TrainingsTabState extends State<TrainingsTab> {
  @override
  Widget build(BuildContext context) {
    return QueryContainer(
      document: ListTrainingsQuery().document,
      builder: ({dynamic data}) {
        List<ListTrainings$Query$Training> trainings = ListTrainings$Query.fromJson(data).listTrainings;

        List<ListTrainings$Query$Training> availableTrainings =
            trainings.where((element) => element.available).toList();

        List<ListTrainings$Query$Training> ownedTrainings =
            trainings.where((element) => element.owned && false).toList();

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
