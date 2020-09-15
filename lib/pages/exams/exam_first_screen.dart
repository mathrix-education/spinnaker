import 'package:flutter/widgets.dart';
import 'package:mathrix_education_app/ui/buttons/primary_text_button.dart';
import 'package:mathrix_education_app/ui/texts/body.dart';

class ExamFirstScreen extends StatelessWidget {

  final int minutes;

  final VoidCallback onStart;

  const ExamFirstScreen({this.onStart, this.minutes});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Body(
            text: 'Tu es sur le point de démarrer une interrogation de $minutes minutes',
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 16),
          PrimaryTextButton(
            text: 'Commencer',
            onPressed: onStart,
          )
        ],
      ),
    );
  }
}