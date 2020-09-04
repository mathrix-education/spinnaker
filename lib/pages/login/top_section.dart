import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
    return Column(
      children: [
        Text(primaryText, style: Theme.of(context).textTheme.headline1.apply(color: green)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(subtitleText, style: Theme.of(context).textTheme.bodyText1),
            SizedBox(width: 8.0),
            GestureDetector(
              onTap: () => onAction(),
              child: Text(
                actionText,
                style: TextStyle(fontWeight: FontWeight.bold, decoration: TextDecoration.underline, color: green),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
