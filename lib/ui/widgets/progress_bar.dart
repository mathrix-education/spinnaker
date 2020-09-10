import 'package:flutter/material.dart';
import 'package:mathrix_education_app/ui/variables/colors.dart';

class ProgressBar extends StatelessWidget {
  /// The progress var value.
  final double value;

  final double height;

  ProgressBar({Key key, this.value, this.height = 10});
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(16)),
      child: LinearProgressIndicator(
        minHeight: height,
        backgroundColor: yellowLight,
        valueColor: AlwaysStoppedAnimation<Color>(yellow),
        value: value,
      ),
    );
  }
}
