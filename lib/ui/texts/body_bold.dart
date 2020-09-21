import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BodyBold extends StatelessWidget {
  final String text;
  final Color color;
  final TextAlign textAlign;

  const BodyBold({this.text, this.color = Colors.black, this.textAlign = TextAlign.start});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 16.0,
        color: color,
        fontWeight: FontWeight.bold,
      ),
      textAlign: textAlign,
    );
  }
}
