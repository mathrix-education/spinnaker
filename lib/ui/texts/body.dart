import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Body extends StatelessWidget {
  final String text;
  final Color color;
  final TextAlign textAlign;

  const Body({this.text, this.color = Colors.black, this.textAlign = TextAlign.start});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.bodyText1.apply(color: color),
      textAlign: textAlign,
    );
  }
}
