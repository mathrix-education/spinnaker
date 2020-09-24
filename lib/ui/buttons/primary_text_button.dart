import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mathrix_education_app/ui/buttons/primary_button.dart';
import 'package:mathrix_education_app/ui/texts/body_bold.dart';
import 'package:mathrix_education_app/ui/variables/colors.dart';

import 'button_text.dart';

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
    this.width = double.infinity,
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    return PrimaryButton(
      onPressed: onPressed,
        width: width,
        child: ButtonText(text: text));
  }
}
