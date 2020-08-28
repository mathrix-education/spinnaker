import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'mathrix_card.dart';

enum ActivityType {
  Course,
  Summary,
  Exercise,
  Flashcard,
  Exam,
  ExamVideo,
}

extension ActivitySlug on ActivityType {
  String get slug {
    switch (this) {
      case ActivityType.Course:
        return 'video';
      case ActivityType.Summary:
        return 'summary';
      case ActivityType.Exercise:
        return 'exercise';
      case ActivityType.Flashcard:
        return 'flashcard';
      case ActivityType.Exam:
        return 'exam';
      case ActivityType.ExamVideo:
        return 'exam-video';
      default:
        return 'video';
    }
  }
}

class ActivityCard extends StatelessWidget {
  final String name;

  final bool premium;

  final ActivityType activityType;

  final GestureTapCallback onTap;

  const ActivityCard(
      {Key key, this.name, this.premium, this.activityType, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    String assetSlug = activityType.slug;
    return MathrixCard(
      onTap: () => onTap(),
      child: Container(
        padding: EdgeInsets.all(8.0),
        child: Container(
          margin: EdgeInsets.all(16),
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(right: 8.0),
                child: Image(
                  image: AssetImage('assets/activities/$assetSlug.png'),
                  height: 30,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Cours', style: Theme.of(context).textTheme.subtitle1),
                  Text(
                    name,
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1, // TODO fix OVERFLOW PROBLEM
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
