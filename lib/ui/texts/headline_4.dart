import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Headline4 extends StatelessWidget {
  final String text;
  final Color color;

  Headline4({this.text, this.color = Colors.black});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headline4.apply(color: color),
    );
  }
}
