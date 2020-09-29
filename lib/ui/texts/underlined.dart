import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mathrix_education_app/ui/variables/colors.dart';

class Underlined extends StatelessWidget {
  final String text;

  const Underlined({this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontWeight: FontWeight.bold, decoration: TextDecoration.underline, color: red),
    );
  }
}
