import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mathrix_education_app/core/graphql/queries.dart';
import 'package:mathrix_education_app/core/misc/vibration.dart';
import 'package:mathrix_education_app/ui/variables/colors.dart';

class Comment extends StatefulWidget {
  final ReadCourseComments$Query$Comment$Comment comment;

  const Comment({Key key, this.comment}) : super(key: key);

  @override
  _CommentState createState() => _CommentState();

  static String transformDate(date) {
//    const convertedDate = AgoPipe.convertUTCDateToLocalDate(new Date(date));
    int minutes = 1600; // TODO
//    floor((new Date().getTime() - convertedDate.getTime()) / (60 * 1000));
    if (minutes < 60) {
      minutes = max(minutes, 1);
      return '$minutes min'; // 1min to 59 min.
    } else if (minutes < 24 * 60) {
      // One day
      int hours = (minutes / 60).floor();
      return '$hours h.';
    } else {
      int days = (minutes / (1440)).floor(); // 1140 = 60*24
      if (days < 7) {
        return '$days j.';
      }
      int weeks = (days / 7).floor();
      return '$weeks sem.';
    }
  }
}

class _CommentState extends State<Comment> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    String mockComment = "Ceci est un commentaire de texte assez long qui peut activer le multiligne";
    String pseudo = "Professeur Morsay";
    return InkWell(
      onLongPress: () {
        hapticSuccessFeedback();
      },
      child: Container(
        child: Column(
          children: [
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(text: '$pseudo: ', style: TextStyle(fontWeight: FontWeight.bold, color: green)),
                  TextSpan(text: mockComment, style: TextStyle(color: Colors.black)),
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
                  onTap: () {
                  },
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
      ),
    );
  }
}
