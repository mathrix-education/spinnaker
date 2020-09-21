import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mathrix_education_app/pages/flashcards/flashcards_page.dart';
import 'package:mathrix_education_app/ui/variables/colors.dart';
import 'package:mathrix_education_app/ui/widgets/progress_bar.dart';

class FlashcardsTopSection extends StatelessWidget {
  /// The flashcard index.
  final int index;

  /// The total number of flashcards.
  final int total;

  /// The flashcard mode.
  final FlashcardMode mode;

  /// The onSwap callback: swap between training and exam mode.
  final VoidCallback onSwap;

  const FlashcardsTopSection(
      {Key key, this.index, this.total, this.mode, this.onSwap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Visibility(
          child: Container(
            padding: EdgeInsets.only(top: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    width: 250,
                    child: ProgressBar(value: index / total, height: 30)),
              ],
            ),
          ),
          visible: mode == FlashcardMode.training,
        ),
        Visibility(
          visible: mode != FlashcardMode.end,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                child: Padding(
                  padding: EdgeInsets.only(right: 8),
                  child: Text(
                    mode == FlashcardMode.training
                        ? 'Mode révision'
                        : 'Mode entrainement',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        .apply(color: green),
                    textAlign: TextAlign.right,
                  ),
                ),
                onTap: onSwap,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
