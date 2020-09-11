import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mathrix_education_app/core/graphql/queries.dart';
import 'package:mathrix_education_app/pages/flashcards/flashcard_bottom_section.dart';
import 'package:mathrix_education_app/pages/flashcards/flashcard_list.dart';
import 'package:mathrix_education_app/pages/flashcards/score_recap_section.dart';
import 'package:mathrix_education_app/ui/layouts/standard_page.dart';
import 'package:mathrix_education_app/ui/silicate/silicate_wrapper.dart';
import 'package:mathrix_education_app/ui/variables/colors.dart';
import 'package:mathrix_education_app/ui/widgets/query_container.dart';

import 'flashcard_top_section.dart';

enum FlashcardMode { training, revision, end }

class FlashcardsPage extends StatefulWidget {
  final String flashcardsName;
  final String flashcardsId;

  const FlashcardsPage({this.flashcardsName, this.flashcardsId});

  @override
  _FlashcardsPageState createState() => _FlashcardsPageState();
}

class _FlashcardsPageState extends State<FlashcardsPage> {
  /// The flashcard index.
  int _index = 0;

  /// The number of succeeded flashcards.
  int succeeded = 0;

  /// The flashcard mode.
  FlashcardMode _mode = FlashcardMode.training;

  /// If the front of the flashcard is displayed, otherwise it is the back.
  bool _frontDisplayed = true;

  /// The flashcards list.
  List<ReadFlashcard$Query$Flashcard$FlashcardContent> _flashcards = [];

  /// The flippable card key, used to trigger internal functions.
  final GlobalKey<FlipCardState> _flipCardKey = GlobalKey<FlipCardState>();

  @override
  Widget build(BuildContext context) {
    return StandardPage(
      title: widget.flashcardsName,
      body: QueryContainer(
          query: ReadFlashcardQuery(),
          variables: ReadFlashcardArguments(id: widget.flashcardsId),
          builder: (ReadFlashcard$Query data) {
            _flashcards = data.readFlashcard.content;

            return Stack(children: [
              Column(
                children: [
                  FlashcardsTopSection(
                    index: _index,
                    total: _flashcards.length,
                    mode: _mode,
                    onSwap: _swapMode,
                  ),
                  Visibility(
                    visible: _mode == FlashcardMode.training,
                    child: Center(
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: FlipCard(
                          direction: FlipDirection.HORIZONTAL,
                          key: _flipCardKey,
                          front: _buildCard(content: _flashcards[_index].front),
                          back: _buildCard(
                            content: _flashcards[_index].back,
                            color: greenLight2,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Visibility(
                    visible: _mode == FlashcardMode.end,
                    child: ScoreRecapSection(
                      succeeded: succeeded,
                      total: _flashcards.length,
                      onRestart: () {
                        setState(() {
                          _index = 0;
                          _frontDisplayed = true;
                          _mode = FlashcardMode.training;
                        });
                      },
                    ),
                  ),
                  Flexible(
                    child: Visibility(
                      child: FlashcardList(flashcards: _flashcards),
                      visible: _mode == FlashcardMode.revision,
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
                    FlashcardBottomSection(
                      flashcardId: widget.flashcardsId,
                      mode: _mode,
                      onCheck: _checkAnswer,
                      frontDisplayed: _frontDisplayed,
                      onSwap: () {
                        _flipCardKey.currentState.controller.forward();
                        setState(() {
                          _frontDisplayed = false;
                        });
                      },
                    ),
                  ],
                ),
              )
            ]);
          }),
    );
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

  _checkAnswer(bool correct) {
    if (_index < _flashcards.length - 1) {
      setState(() {
        _frontDisplayed = true;
        succeeded += (correct ? 1 : 0);
      });
      _flipCardKey.currentState.controller.reverse();
      Future.delayed(Duration(milliseconds: 490)).then((value) {
        setState(() {
          _index++;
        });
      });
    } else {
      setState(() {
        _mode = FlashcardMode.end;
      });
    }
  }

  /// Swap the mode between training and revision mode.
  void _swapMode() {
    setState(() {
      _mode = (_mode == FlashcardMode.training)
          ? FlashcardMode.revision
          : FlashcardMode.training;
    });
  }
}
