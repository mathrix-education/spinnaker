import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mathrix_education_app/core/graphql/queries.dart';
import 'package:mathrix_education_app/core/misc/vibration.dart';
import 'package:mathrix_education_app/ui/variables/colors.dart';

class Comment extends StatelessWidget {
  final ReadCourseComments$Query$Course$Comment comment;

  final bool selected;

  const Comment({@required this.comment, @required this.selected});

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

  @override
  Widget build(BuildContext context) {
    String content = comment.content.trim();
    String pseudo = comment.user.username;

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
                // onTap: onLongPress,
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
