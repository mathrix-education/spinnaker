import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mathrix_education_app/core/graphql/graphql_client.dart';
import 'package:mathrix_education_app/core/graphql/queries.dart';
import 'package:mathrix_education_app/ui/buttons/checked_button.dart';
import 'package:mathrix_education_app/ui/buttons/review_button.dart';
import 'package:mathrix_education_app/ui/variables/colors.dart';

class MarkBar extends StatefulWidget {
  /// The interactable type.
  final Interact$CreateInteraction$InteractionType interactableType;

  /// The interactable id.
  final String interactableId;

  final Interact$CreateInteraction$InteractionComprehension comprehension;

  MarkBar({this.interactableType, this.interactableId, this.comprehension});

  @override
  _MarkBarState createState() => _MarkBarState(comprehension: comprehension);
}

class _MarkBarState extends State<MarkBar> {
  final _client = GraphQLConfiguration.client;

  Interact$CreateInteraction$InteractionComprehension comprehension;

  _MarkBarState({this.comprehension});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      decoration: BoxDecoration(
          border: Border(
        top: BorderSide(color: jade, width: 0.4),
      )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ReviewButton(
            comprehension: comprehension,
            onTap: () => interact(
              Interact$CreateInteraction$InteractionComprehension.blur,
            ),
          ),
          CheckedButton(
              comprehension: comprehension,
              onTap: () => interact(
                    Interact$CreateInteraction$InteractionComprehension.clear,
                  )),
        ],
      ),
    );
  }

  interact(Interact$CreateInteraction$InteractionComprehension comprehension) async {
    MutationOptions options = MutationOptions(
      documentNode: InteractMutation().document,
      variables: InteractArguments(
          input: Interact$CreateInteraction(
        interactable_id: widget.interactableId,
        interactable_type: widget.interactableType,
        comprehension: comprehension,
      )).toJson(),
    );

    setState(() {
      comprehension = comprehension;
    });

    await _client.mutate(options);
  }
}
