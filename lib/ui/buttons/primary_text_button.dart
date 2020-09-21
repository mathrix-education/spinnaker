import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mathrix_education_app/ui/variables/colors.dart';

class PrimaryTextButton extends StatelessWidget {
  /// The button inner text.
  final String text;

  /// The on pressed callback.
  final GestureTapCallback onPressed;

  final double width;

  /// If the button is enabled.
  final bool enabled;

  PrimaryTextButton({
    this.onPressed,
    this.text,
    this.width = 140,
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      width: width,
      child: FlatButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
        color: yellow,
        disabledColor: grey,
        onPressed: enabled ? onPressed : null,
        child: Center(
          child: Text(
            text,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
