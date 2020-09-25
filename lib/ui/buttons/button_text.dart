import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mathrix_education_app/ui/texts/body_bold.dart';

class ButtonText extends StatelessWidget {

  final String text;

  ButtonText({
    this.text
  });

  @override
  Widget build(BuildContext context) {
    return BodyBold(
      text: text,
      textAlign: TextAlign.center,
    );
  }
}
