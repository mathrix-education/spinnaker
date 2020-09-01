import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mathrix_education_app/ui/variables/colors.dart';

class TitleGreen extends StatelessWidget {
  /// The text.
  final String text;

  const TitleGreen({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text, style: Theme.of(context).textTheme.headline4.apply(color: greenLight));
  }
}
