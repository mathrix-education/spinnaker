import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mathrix_education_app/core/graphql/queries.graphql.dart';
import 'package:mathrix_education_app/ui/buttons/button_with_icon.dart';
import 'package:mathrix_education_app/ui/variables/colors.dart';

class CheckedButton extends StatelessWidget {
  final Interact$CreateInteraction$InteractionComprehension comprehension;

  final VoidCallback onTap;

  const CheckedButton({Key key, this.comprehension, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonWithIcon(
      text: 'Validé',
      icon: 'checked',
      onTap: onTap,
      textColor: comprehension == Interact$CreateInteraction$InteractionComprehension.clear ? Colors.white : jade,
      color: comprehension == Interact$CreateInteraction$InteractionComprehension.clear ? jade : jadeLight,
      width: 140,
    );
  }
}
