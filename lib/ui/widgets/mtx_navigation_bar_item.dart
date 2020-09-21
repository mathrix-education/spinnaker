import 'package:flutter/material.dart';
import 'package:mathrix_education_app/ui/texts/body_bold.dart';
import 'package:mathrix_education_app/ui/variables/colors.dart';

class MtxNavigationBarItem implements BottomNavigationBarItem {
  final bool selected;
  final String text;

  MtxNavigationBarItem({
    this.selected,
    this.text,
  });

  @override
  Widget get activeIcon => BodyBold(
        text: text,
        color: green,
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
