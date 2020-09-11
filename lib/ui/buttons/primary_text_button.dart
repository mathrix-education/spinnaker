import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mathrix_education_app/ui/variables/colors.dart';

class PrimaryTextButton extends StatelessWidget {
  final String text;

  final void Function() onPressed;

  final double minWidth;

  final bool enabled;

  PrimaryTextButton({this.onPressed, this.text, this.minWidth, this.enabled = true});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: minWidth ?? double.infinity,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      color: yellow,
      disabledColor: grey,
      onPressed: enabled ? onPressed : null,
      child: SizedBox(
        height: 48,
        child: Center(
          child: Text(
            text,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
      ),
    );
  }
}
