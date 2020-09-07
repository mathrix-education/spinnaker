import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mathrix_education_app/core/graphql/queries.dart';
import 'package:mathrix_education_app/ui/texts/headline_4.dart';
import 'package:mathrix_education_app/ui/variables/colors.dart';
import 'package:mathrix_education_app/ui/widgets/standard_rounded_widget.dart';

class TrainingCardContent extends StatelessWidget {
  final ListTrainings$Query$Training training;

  final String actionText;

  const TrainingCardContent({this.training, this.actionText});

  @override
  Widget build(BuildContext context) {
    int hours = training.duration;
    List<String> grades = training.grades.length > 0 ? training.grades.map((e) => e.name).toList() : ['Toutes classes'];

    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          StandardRoundedWidget(
            child: const Image(
              image: const AssetImage('assets/trainings/formations.png'),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 16.0),
            child: Headline4(text: training.name),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  const Image(
                    image: const AssetImage('assets/icons/time.png'),
                    width: 30.0,
                  ),
                  Text('$hours heures'),
                ],
              ),
              Column(
                children: [
                  const Image(
                    image: AssetImage('assets/icons/read.png'),
                    width: 30.0,
                  ),
                  Column(
                    children: grades.map((e) => Text(e)).toList(),
                  )
                ],
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 16.0),
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(color: Theme.of(context).dividerColor, width: 0.4),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  actionText,
                  style: TextStyle(fontSize: 16.0, color: green, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
