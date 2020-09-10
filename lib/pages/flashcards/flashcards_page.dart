import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mathrix_education_app/core/graphql/queries.dart';
import 'package:mathrix_education_app/pages/flashcards/check_answer_area.dart';
import 'package:mathrix_education_app/pages/flashcards/flashcard_list.dart';
import 'package:mathrix_education_app/pages/flashcards/flashcard_progress_bar.dart';
import 'package:mathrix_education_app/ui/layouts/standard_page.dart';
import 'package:mathrix_education_app/ui/silicate/silicate_wrapper.dart';
import 'package:mathrix_education_app/ui/variables/colors.dart';
import 'package:mathrix_education_app/ui/widgets/mark_bar.dart';
import 'package:mathrix_education_app/ui/widgets/query_container.dart';

enum FlashcardMode { training, revision, end }

class FlashcardsPage extends StatefulWidget {
  final String flashcardsName;
  final String flashcardsId;

  const FlashcardsPage({this.flashcardsName, this.flashcardsId});

  @override
  _FlashcardsPageState createState() => _FlashcardsPageState();
}

class _FlashcardsPageState extends State<FlashcardsPage> {
  int index = 0;
  FlashcardMode flashcardMode = FlashcardMode.training;

  List<ReadFlashcard$Query$Flashcard$FlashcardContent> flashcards = [];

  final GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();

  @override
  Widget build(BuildContext context) {
    return StandardPage(
      title: widget.flashcardsName,
      body: QueryContainer(
          query: ReadFlashcardQuery(),
          variables: ReadFlashcardArguments(id: widget.flashcardsId),
          builder: (ReadFlashcard$Query data) {
            flashcards = data.readFlashcard.content;

            return Stack(children: [
              Column(
                children: [
                  Visibility(
                    child: FlashcardProgressBar(index: index, total: flashcards.length),
                    visible: flashcardMode == FlashcardMode.training,
                  ),
                  Visibility(
                    child: GestureDetector(
                        child: Text(
                          flashcardMode == FlashcardMode.training ? 'Mode révision' : 'Mode entrainement',
                          style: Theme.of(context).textTheme.bodyText1.apply(color: green),
                          textAlign: TextAlign.right,
                        ),
                        onTap: _swapMode),
                  ),
                  Visibility(
                    child: Center(
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: FlipCard(
                          direction: FlipDirection.HORIZONTAL,
                          key: cardKey,
                          front: _buildCard(content: flashcards[index].front),
                          back: _buildCard(content: flashcards[index].back, color: greenLight2),
                        ),
                      ),
                    ),
                    visible: flashcardMode == FlashcardMode.training,
                  ),
                  Flexible(
                    child: Visibility(
                      child: FlashcardList(flashcards: flashcards),
                      visible: flashcardMode == FlashcardMode.revision,
                    ),
                  ),
                ],
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Column(
                  children: [
                    Visibility(
                      visible: flashcardMode == FlashcardMode.training,
                      child: CheckAnswerArea(onCheck: _checkCard),
                    ),
                    Visibility(
                      visible: flashcardMode == FlashcardMode.end,
                      child: MarkBar(
                        interactableId: widget.flashcardsId,
                        interactableType: Interact$CreateInteraction$InteractionType.flashcard,
                      ),
                    )
                  ],
                ),
              )
            ]);
          }),
    );
  }

  _checkCard(bool correct) {
    if (index < flashcards.length - 1) {
      cardKey.currentState.controller.reverse();
      Future.delayed(Duration(milliseconds: 490)).then((value) {
        setState(() {
          index++;
        });
      });
    } else {
      setState(() {
        flashcardMode = FlashcardMode.end;
      });
    }
  }

  Widget _buildCard({content, color}) {
    return Card(
      color: color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: SizedBox(
        height: 250,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [SilicateWrapper(wall: content)],
        ),
      ),
    );
  }

  void _swapMode() {
    setState(() {
      flashcardMode = (flashcardMode == FlashcardMode.training) ? FlashcardMode.revision : FlashcardMode.training;
    });
  }
}
