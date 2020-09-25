import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mathrix_education_app/ui/texts/headline_1.dart';
import 'package:mathrix_education_app/ui/texts/title_green.dart';
import 'package:mathrix_education_app/ui/variables/colors.dart';

class TopSection extends StatelessWidget {
  /// The primary text.
  final String primaryText;

  /// The subtitle text.
  final String subtitleText;

  /// The action text.
  final String actionText;

  /// The onAction callback.
  final Function onAction;

  const TopSection({Key key, this.primaryText, this.subtitleText, this.onAction, this.actionText}) : super(key: key);

  @override
  Widget build(BuildContext context) {

  }
}
