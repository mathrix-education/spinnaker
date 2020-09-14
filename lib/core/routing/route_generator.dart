import 'package:flutter/material.dart';
import 'package:mathrix_education_app/core/graphql/graphql_client.dart';
import 'package:mathrix_education_app/core/routing/routes.dart';
import 'package:mathrix_education_app/pages/course/course_page.dart';
import 'package:mathrix_education_app/pages/dashboard/dashboard_page.dart';
import 'package:mathrix_education_app/pages/exercises/exercises_page.dart';
import 'package:mathrix_education_app/pages/flashcards/flashcards_page.dart';
import 'package:mathrix_education_app/pages/lesson/lesson_page.dart';
import 'package:mathrix_education_app/pages/login/login_page.dart';
import 'package:mathrix_education_app/pages/menu/menu_page.dart';
import 'package:mathrix_education_app/pages/premium/premium_page.dart';
import 'package:mathrix_education_app/pages/settings/settings_page.dart';
import 'package:mathrix_education_app/pages/theme/theme_page.dart';
import 'package:mathrix_education_app/pages/training/training_page.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Get arguments passed with Navigator.pushNamed.
    final Map<String, dynamic> args = settings.arguments;
    switch (settings.name) {
      case RoutePaths.authenticate:
        if (GraphQLConfiguration.isLogged()) {
          return generateRoute(RouteSettings(name: RoutePaths.dashboard));
        }
        return materialBuilder(LoginPage());
      case RoutePaths.dashboard:
        return materialBuilder(DashboardPage());
      case RoutePaths.themes:
        return materialBuilder(
          ThemePage(
            disciplineId: args['disciplineId'],
            disciplineName: args['disciplineName'],
            gradeId: args['gradeId'],
          ),
        );
      case RoutePaths.menu:
        return materialBuilder(
          MenuPage(
            chapterId: args['chapterId'],
            chapterName: args['chapterName'],
          ),
        );
      case RoutePaths.course:
        return materialBuilder(
          CoursePage(
            courseId: args['courseId'],
            courseName: args['courseName'],
          ),
        );
      case RoutePaths.training:
        return materialBuilder(
          TrainingPage(
            trainingId: args['trainingId'],
            trainingName: args['trainingName'],
          ),
        );
      case RoutePaths.menu:
        return materialBuilder(
          LessonPage(
            lessonId: args['lessonId'],
            lessonName: args['lessonName'],
          ),
        );
      case RoutePaths.lesson:
        return materialBuilder(
          LessonPage(
            lessonId: args['lessonId'],
            lessonName: args['lessonName'],
          ),
        );
      case RoutePaths.flashcards:
        return materialBuilder(
          FlashcardsPage(
            flashcardsId: args['flashcardsId'],
            flashcardsName: args['flashcardsName'],
          ),
        );

      case RoutePaths.exercises:
        return materialBuilder(ExercisesPage(
          subjectId: args['subjectId'],
          subjectName: args['subjectName'],
        ));
      case RoutePaths.settings:
        return materialBuilder(SettingsPage());
      case RoutePaths.premium:
        return materialBuilder(PremiumPage());
    }
  }

// TODO error route

  static materialBuilder(Widget widget) {
    return MaterialPageRoute(builder: (_) {
      return widget;
    });
  }
}
