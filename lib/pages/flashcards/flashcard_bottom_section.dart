import 'package:flutter/material.dart';
import 'package:mathrix_education_app/core/graphql/queries.graphql.dart';
import 'package:mathrix_education_app/pages/flashcards/correction_button.dart';
import 'package:mathrix_education_app/pages/flashcards/flashcards_page.dart';
import 'package:mathrix_education_app/ui/buttons/primary_text_button.dart';
import 'package:mathrix_education_app/ui/widgets/mark_bar.dart';

class FlashcardBottomSection extends StatelessWidget {
  /// The flashcard id, used to query interaction.
  final String flashcardId;
  /// The flashcard mode.
  final FlashcardMode mode;
  /// The flashcard comprehension status.
  final Interact$CreateInteraction$InteractionComprehension comprehension;
  /// If the front is displayed.
  final bool frontDisplayed;
  /// The on swap callback.
  final VoidCallback onSwap;
  /// The on check callback, when the user check if he answered correctly.
  final void Function(bool correct) onCheck;

  const FlashcardBottomSection(
      {this.flashcardId,
      this.comprehension,
      this.mode,
      this.onCheck,
      this.frontDisplayed,
      this.onSwap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Visibility(
          visible: mode == FlashcardMode.training,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Column(
              children: [
                Visibility(
                  visible: !frontDisplayed,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CorrectionButton(
                        text: 'J\'ai faux',
                        icon: Icons.highlight_off,
                        onTap: () => onCheck(false),
                      ),
                      CorrectionButton(
                        text: 'J\'ai juste',
                        icon: Icons.check_circle,
                        onTap: () => onCheck(true),
                      ),
                    ],
                  ),
                ),
                Visibility(
                  visible: frontDisplayed,
                  child: PrimaryTextButton(
                    text: 'Voir la réponse',
                    width: double.infinity,
                    onPressed: onSwap,
                  ),
                )
              ],
            ),
          ),
        ),
        Visibility(
          visible: mode == FlashcardMode.end,
          child: MarkBar(
            interactableId: flashcardId,
            interactableType:
                Interact$CreateInteraction$InteractionType.flashcard,
            comprehension: comprehension,
          ),
        ),
      ],
    );
  }
}
