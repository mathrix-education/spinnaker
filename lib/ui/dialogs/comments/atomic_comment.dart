import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mathrix_education_app/ui/variables/colors.dart';

class AtomicComment extends StatelessWidget {
  /// The comment Pseudo.
  final String pseudo;

  /// The comment content.
  final String content;

  /// The on answer callback.
  final VoidCallback onAnswer;

  const AtomicComment({
    @required this.pseudo,
    @required this.content,
    @required this.onAnswer,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(text: '$pseudo: ', style: TextStyle(fontWeight: FontWeight.bold, color: green)),
              TextSpan(text: '$content', style: TextStyle(color: Colors.black)),
            ],
          ),
        ),
        Row(
          children: [
            Text(
              AtomicComment.transformDate('date'),
              style: TextStyle(fontWeight: FontWeight.bold, color: grey, fontFamily: 'Poppins'),
            ),
            GestureDetector(
              onTap: onAnswer,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  'Répondre',
                  style: TextStyle(color: green),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  static String transformDate(date) {
    int minutes = 1600; // TODO
    if (minutes < 60) {
      minutes = max(minutes, 1);
      return '$minutes min'; // 1min to 59 min.
    } else if (minutes < 1440) {
      // 1 hour to 23h (1140 = 60*24p
      int hours = (minutes / 60).floor();
      return '$hours h.';
    } else {
      int days = (minutes / (1440)).floor();
      if (days < 7) {
        return '$days j.';
      }
      int weeks = (days / 7).floor();
      return '$weeks sem.';
    }
  }
}
