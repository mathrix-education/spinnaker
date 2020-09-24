import 'package:flutter/widgets.dart';
import 'package:mathrix_education_app/ui/texts/headline_1.dart';
import 'package:mathrix_education_app/ui/texts/headline_2.dart';
import 'package:mathrix_education_app/ui/texts/headline_3.dart';
import 'package:mathrix_education_app/ui/texts/headline_4.dart';
import 'package:mathrix_education_app/ui/variables/colors.dart';

class TitleBrick extends StatelessWidget {
  final Map<String, dynamic> brick;

  const TitleBrick({this.brick});

  @override
  Widget build(BuildContext context) {
    String text = brick['text'];

    switch (brick['heading']) {
      case 'h1':
        return Headline1(text: text, color: green);
      case 'h2':
        return Headline2(text: text, color: green);
      case 'h3':
        return Headline3(text: text, color: green);
      case 'h4':
        return Headline4(text: text, color: green);
    }
  }
}
