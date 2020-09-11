import 'package:flutter/material.dart';
import 'package:mathrix_education_app/ui/buttons/primary_text_button.dart';
import 'package:mathrix_education_app/ui/texts/headline_1.dart';
import 'package:mathrix_education_app/ui/variables/colors.dart';

class ScoreRecapSection extends StatelessWidget {
  final int succeeded;

  final int total;

  final VoidCallback onRestart;

  const ScoreRecapSection({Key key, this.succeeded, this.total, this.onRestart})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int percentage = (100 * succeeded / total).round();
    // TODO: implement build
    return Center(
        child: Column(
      children: [
        Text(
          '$percentage % ',
          style: TextStyle(color: green, fontSize: 80, fontFamily: 'Poppins'),
        ),
        Text('De réussite'),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            PrimaryTextButton(
              text: 'Recommencer',
              minWidth: 120,
              onPressed: onRestart,
            ),
            PrimaryTextButton(
                minWidth: 120,
                text: 'Terminer',
                onPressed: () {
                  Navigator.of(context).pop();
                }),
          ],
        )
      ],
    ));
  }
}
