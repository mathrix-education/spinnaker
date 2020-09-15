import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mathrix_education_app/ui/buttons/primary_text_button.dart';
import 'package:mathrix_education_app/ui/texts/body.dart';

class ExamDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Column(
        children: [
          Body(text: 'L\'examen est en pause'),
          PrimaryTextButton(
            text: 'Reprendre',
          ),
        ],
      ),
    );
  }
}
