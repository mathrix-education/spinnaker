import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mathrix_education_app/ui/variables/colors.dart';

class OutlineTextButton extends StatelessWidget {
  /// The button inner text.
  final String text;

  /// The button width.
  final double width;

  /// The on pressed callback.
  final GestureTapCallback onPressed;

  OutlineTextButton({
    this.text,
    this.width = 120,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: 48,
      child: OutlineButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
        borderSide: BorderSide(color: green),
        onPressed: onPressed,
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: green,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
