import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mathrix_education_app/ui/variables/colors.dart';

class MathrixNavigationBarItem implements BottomNavigationBarItem {
  final bool selected;
  final String text;

  MathrixNavigationBarItem({
    this.selected,
    this.text,
  });

  @override
  Widget get activeIcon => Text(
        text,
        style: TextStyle(
          color: green,
          fontWeight: FontWeight.bold,
        ),
      );

  @override
  Color get backgroundColor => Colors.white;

  @override
  Widget get icon => Text(
        text,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      );

  @override
  Widget get title => Container(
        height: 0.0,
      );
}
