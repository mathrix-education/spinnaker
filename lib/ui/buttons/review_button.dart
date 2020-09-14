import 'package:flutter/material.dart';
import 'package:mathrix_education_app/core/graphql/queries.dart';
import 'package:mathrix_education_app/ui/variables/colors.dart';
import 'button_with_icon.dart';

class ReviewButton extends StatelessWidget {
  final Interact$CreateInteraction$InteractionComprehension comprehension;

  final GestureTapCallback onTap;

  const ReviewButton({Key key, this.comprehension, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonWithIcon(
      text: 'À revoir',
      icon: 'review',
      onTap: onTap,
      textColor: comprehension == Interact$CreateInteraction$InteractionComprehension.blur ? Colors.white : blue,
      color: comprehension == Interact$CreateInteraction$InteractionComprehension.blur ? blue : blueLight,
      width: 140,
    );
  }
}
