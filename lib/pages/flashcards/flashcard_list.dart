import 'package:flutter/widgets.dart';
import 'package:mathrix_education_app/core/graphql/queries.graphql.dart';
import 'package:mathrix_education_app/ui/silicate/silicate_wrapper.dart';
import 'package:mathrix_education_app/ui/widgets/mtx_card.dart';

class FlashcardList extends StatelessWidget {
  final List<ReadFlashcard$Query$Flashcard$FlashcardContent> flashcards;

  const FlashcardList({Key key, this.flashcards}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (_, index) {
        return MtxCard(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
            child: Column(
              children: [
                SilicateWrapper(wall: flashcards[index].front),
                SilicateWrapper(wall: flashcards[index].back),
              ],
            ),
          ),
        );
      },
      itemCount: flashcards.length,
    );
  }
}
