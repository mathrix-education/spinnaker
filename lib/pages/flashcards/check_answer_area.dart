import 'package:flutter/cupertino.dart';
import 'package:mathrix_education_app/core/graphql/queries.graphql.dart';
import 'package:mathrix_education_app/pages/flashcards/flashcards_page.dart';
import 'package:mathrix_education_app/ui/buttons/button_with_icon.dart';
import 'package:mathrix_education_app/ui/variables/colors.dart';
import 'package:mathrix_education_app/ui/widgets/mark_bar.dart';

class FlashcardBottomSection extends StatelessWidget {
  final void Function(bool correct) onCheck;

  final FlashcardMode mode;

  final String flashcardId;

  final Interact$CreateInteraction$InteractionComprehension comprehension;

  const FlashcardBottomSection({this.flashcardId, this.comprehension, this.mode, this.onCheck});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Column(
      children: [
        Visibility(
          visible: mode == FlashcardMode.training,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ButtonWithIcon(
                textColor: green,
                text: 'J\'ai faux',
                icon: 'close',
                onTap: () => onCheck(false),
              ),
              ButtonWithIcon(
                textColor: green,
                text: 'J\'ai juste',
                icon: 'close',
                onTap: () => onCheck(true),
              ),
            ],
          ),
        ),
        MarkBar(
          interactableId: flashcardId,
          interactableType: Interact$CreateInteraction$InteractionType.flashcard,
          comprehension: comprehension,
        ),
      ],
    );
  }
}
