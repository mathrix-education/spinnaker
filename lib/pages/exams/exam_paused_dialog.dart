import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mathrix_education_app/ui/buttons/primary_text_button.dart';
import 'package:mathrix_education_app/ui/texts/headline_4.dart';

class ExamPausedDialog extends StatelessWidget {
  final VoidCallback onResume;

  const ExamPausedDialog({Key key, this.onResume}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Headline4(text: 'L\'examen est en pause.'),
            SizedBox(height: 16),
            PrimaryTextButton(
                text: 'Reprendre',
                onPressed: () {
                  Navigator.pop(context);
                  onResume.call();
                }),
          ],
        ),
      ),
    );
  }
}
