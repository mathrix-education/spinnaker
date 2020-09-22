import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mathrix_education_app/ui/dialogs/comments/comment_model.dart';
import 'package:mathrix_education_app/ui/variables/colors.dart';

class Comment extends StatelessWidget {
  final CommentModel comment;

  final bool selected;

  final void Function({String userId, String userName}) onAnswer;

  const Comment({@required this.comment, @required this.selected, this.onAnswer});

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

  @override
  Widget build(BuildContext context) {
    String content = comment.content.trim();
    String pseudo = comment.userName;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: new BoxDecoration(color: selected ? greenLight2 : null),
      child: Column(
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
                Comment.transformDate('date'),
                style: TextStyle(fontWeight: FontWeight.bold, color: grey, fontFamily: 'Poppins'),
              ),
              GestureDetector(
                onTap: () => onAnswer(userId: comment.userId, userName: comment.userName),
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
      ),
    );
  }
}
