import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mathrix_education_app/ui/texts/body_bold.dart';
import 'package:mathrix_education_app/ui/variables/colors.dart';

class PrimaryButton extends StatelessWidget {

  /// The on pressed callback.
  final GestureTapCallback onPressed;

  final double width;

  /// If the button is enabled.
  final bool enabled;

  final Widget child;

  final ShapeBorder shape;

  final Color color;

  PrimaryButton({
    this.onPressed,
    this.width = 140,
    this.enabled = true,
    this.child,
    this.shape,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      width: width,
      child: FlatButton(
        shape: shape ?? RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
        color: color ?? yellow,
        disabledColor: grey,
        onPressed: enabled ? onPressed : null,
        child: Center(
          child: child
        ),
      ),
    );
  }
}
