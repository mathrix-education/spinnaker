import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mathrix_education_app/ui/variables/colors.dart';

class ExerciseSelectorButton extends StatelessWidget {
  /// If the user succeeded this exercise (true) or failed(false), or did not  completed (null).
  final bool succeeded;

  /// If this is the current exercise selected by the user.
  final bool selected;

  /// If the button is the first button on the list.
  final bool first;

  /// If the button is the list button on the list.
  final bool last;

  final String buttonText;

  final GestureTapCallback onTap;

  static final greenBorderSide = BorderSide(width: 1, color: green);

  const ExerciseSelectorButton({
    this.succeeded,
    this.selected = false,
    this.first = false,
    this.last = false,
    this.buttonText,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: _color,
          border: Border.all(width: 1, color: green),
          borderRadius:
              BorderRadius.horizontal(left: Radius.circular(first ? 32 : 0), right: Radius.circular(last ? 32 : 0)),
        ),
        child: SizedBox(
          height: 40,
          width: 56,
          child: Center(
            child: Text(
              buttonText,
              style: TextStyle(
                  color: succeeded == null ? green : Colors.white,
                  fontSize: selected ? 20 : 18,
                  fontFamily: 'Poppins',
                  fontWeight: selected ? FontWeight.bold : FontWeight.normal),
            ),
          ),
        ),
      ),
    );
  }

  Color get _color {
    if (succeeded == null) {
      return Colors.white;
    }
    return succeeded ? jade : red;
  }
}
