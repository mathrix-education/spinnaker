import 'package:flutter/material.dart';
import 'package:mathrix_education_app/ui/variables/colors.dart';
import 'headline_4.dart';

class TitleGreen extends StatelessWidget {
  /// The text.
  final String text;

  const TitleGreen({this.text});

  @override
  Widget build(BuildContext context) {
    return Headline4(text: text, color: greenLight);
  }
}
