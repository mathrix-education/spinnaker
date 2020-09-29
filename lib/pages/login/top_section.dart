import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
