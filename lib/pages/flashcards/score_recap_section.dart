import 'package:flutter/material.dart';
import 'package:mathrix_education_app/ui/buttons/outline_text_button.dart';
import 'package:mathrix_education_app/ui/buttons/primary_text_button.dart';
import 'package:mathrix_education_app/ui/variables/colors.dart';

class ScoreRecapSection extends StatelessWidget {
  /// The succeded number of section.
  final int succeeded;

  /// The total number.
  final int total;

  /// The onRestart callback.
  final VoidCallback onRestart;

  const ScoreRecapSection({Key key, this.succeeded, this.total, this.onRestart}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int percentage = (100 * succeeded / total).round();
    // TODO: implement build
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 65, // This SizedBox is a hack because centering text with
          child: Text( // fontSize and height wont work
            '$percentage % ',
            style: TextStyle(color: green, fontFamily: 'Poppins', fontSize: 80, height: 1),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 8),
          child: Text(
            'De réussite',
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            OutlineTextButton(
              text: 'Recommencer',
              onPressed: onRestart,
              width: 140,
            ),
            PrimaryTextButton(
                width: 140,
                text: 'Terminer',
                onPressed: () {
                  Navigator.of(context).pop();
                }),
          ],
        )
      ],
    );
  }
}
