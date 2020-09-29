import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mathrix_education_app/ui/texts/body_bold.dart';
import 'package:mathrix_education_app/ui/variables/colors.dart';

class InvisibleButton extends StatelessWidget {
  /// The on pressed callback.
  final GestureTapCallback onPressed;
  final Widget child;
  final MainAxisAlignment mainAxisAlignment;

  InvisibleButton({
    this.child,
    this.onPressed,
    this.mainAxisAlignment = MainAxisAlignment.center,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: Row(
        mainAxisAlignment: mainAxisAlignment,
        children: [SizedBox(width: 10),child],
      ),
    );
  }
}
