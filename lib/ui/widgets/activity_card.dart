import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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

  String get name {
    switch (this) {
      case ActivityType.Course:
        return 'Cours';
      case ActivityType.Summary:
        return 'Fiche résumé';
      case ActivityType.Exercise:
        return 'Exercise';
      case ActivityType.Flashcard:
        return 'Flashcard';
      case ActivityType.Exam:
        return 'Interrogation';
      case ActivityType.ExamVideo:
        return 'Correction vidéo';
      default:
        return '';
    }
  }
}

class ActivityCard extends StatelessWidget {
  final String name;

  final bool premium;

  final ActivityType activityType;

  final GestureTapCallback onTap;

  const ActivityCard({this.name, this.premium, this.activityType, this.onTap});

  @override
  Widget build(BuildContext context) {
    String assetSlug = activityType.slug;
    return Container(
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
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(activityType.name, style: Theme.of(context).textTheme.subtitle1),
                  Text(
                    name,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
