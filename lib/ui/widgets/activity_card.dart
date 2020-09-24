import 'package:flutter/material.dart';
import 'package:mathrix_education_app/core/types/interactions.dart';
import 'package:mathrix_education_app/ui/texts/body_bold.dart';
import 'package:mathrix_education_app/ui/variables/colors.dart';

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
        return 'video_corrected';
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
  /// The activity name.
  final String name;

  /// The activity premium status.
  final bool premium;

  /// The activity type.
  final ActivityType activityType;

  /// The interaction .
  final Interaction interaction;

  const ActivityCard({
    @required this.name,
    @required this.premium,
    @required this.activityType,
    this.interaction,
  });

  @override
  Widget build(BuildContext context) {
    String assetSlug = activityType.slug;
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.all(8.0),
          margin: EdgeInsets.all(16),
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(right: 8.0),
                child: SizedBox(
                  height: 34,
                  width: 34,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 4,
                        left: 4,
                        child: Image.asset(
                          'assets/activities/$assetSlug.png',
                          height: 30,
                        ),
                      ),
                      Visibility(
                        visible: premium,
                        child: Positioned(
                          top: 0,
                          left: 0,
                          child: Image.asset(
                            'assets/activities/premium.png',
                            height: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
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
        Positioned(
          right: 0,
          child: SizedBox(
            height: 32,
            width: 100,
            child: Container(
              decoration: BoxDecoration(
                  color: backgroundColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(8),
                    topRight: Radius.circular(8),
                  )),
              child: Center(child: BodyBold(text: text, color: textColor)),
            ),
          ),
        )
      ],
    );
  }

  String get text {
    return 'Validé';
  }

  Color get textColor {
    return jade;
  }

  Color get backgroundColor {
    return greenLight2;
  }
}
