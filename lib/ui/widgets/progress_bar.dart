import 'package:flutter/material.dart';
import 'package:mathrix_education_app/ui/variables/colors.dart';

class ProgressBar extends StatelessWidget {
  /// The progressBar value.
  final double value;

  ProgressBar({Key key, this.value})
      : assert(value >= 0 && value <= 1),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(16)),
      child: LinearProgressIndicator(
        minHeight: 10,
        backgroundColor: yellowLight,
        valueColor: AlwaysStoppedAnimation<Color>(yellow),
        value: value,
      ),
    );
  }
}
