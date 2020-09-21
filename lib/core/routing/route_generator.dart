import 'package:flutter/material.dart';
import 'package:mathrix_education_app/core/graphql/graphql_client.dart';
import 'package:mathrix_education_app/core/routing/routes.dart';
import 'package:mathrix_education_app/pages/course/course_page.dart';
import 'package:mathrix_education_app/pages/dashboard/dashboard_page.dart';
import 'package:mathrix_education_app/pages/exams/exam_page.dart';
import 'package:mathrix_education_app/pages/exams/video_exam_page.dart';
import 'package:mathrix_education_app/pages/exercises/exercises_page.dart';
import 'package:mathrix_education_app/pages/flashcards/flashcards_page.dart';
import 'package:mathrix_education_app/pages/lesson/lesson_page.dart';
import 'package:mathrix_education_app/pages/login/login_page.dart';
import 'package:mathrix_education_app/pages/menu/menu_page.dart';
import 'package:mathrix_education_app/pages/premium/premium_page.dart';
import 'package:mathrix_education_app/pages/settings/settings_page.dart';
import 'package:mathrix_education_app/pages/theme/theme_page.dart';
import 'package:mathrix_education_app/pages/training/training_page.dart';

import 'fade_in_page_route.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Get arguments passed with Navigator.pushNamed.
    final Map<String, dynamic> args = settings.arguments;
    switch (settings.name) {
      case RoutePaths.authenticate:
        if (GraphQLConfiguration.isLogged()) {
          return generateRoute(RouteSettings(name: RoutePaths.dashboard));
        }
        return MaterialPageRoute(builder: (_) => LoginPage());
      case RoutePaths.dashboard:
        return routeBuilder(DashboardPage());
      case RoutePaths.themes:
        return routeBuilder(
          ThemePage(
            disciplineId: args['disciplineId'],
            disciplineName: args['disciplineName'],
            gradeId: args['gradeId'],
          ),
        );
      case RoutePaths.menu:
        return routeBuilder(
          MenuPage(
            chapterId: args['chapterId'],
            chapterName: args['chapterName'],
          ),
        );
      case RoutePaths.course:
        return routeBuilder(
          CoursePage(
            courseId: args['courseId'],
            courseName: args['courseName'],
          ),
        );
      case RoutePaths.training:
        return routeBuilder(
          TrainingPage(
            trainingId: args['trainingId'],
            trainingName: args['trainingName'],
          ),
        );
      case RoutePaths.menu:
        return routeBuilder(
          LessonPage(
            lessonId: args['lessonId'],
            lessonName: args['lessonName'],
          ),
        );
      case RoutePaths.lesson:
        return routeBuilder(
          LessonPage(
            lessonId: args['lessonId'],
            lessonName: args['lessonName'],
          ),
        );
      case RoutePaths.flashcards:
        return routeBuilder(
          FlashcardsPage(
            flashcardsId: args['flashcardsId'],
            flashcardsName: args['flashcardsName'],
          ),
        );
      case RoutePaths.exercises:
        return routeBuilder(ExercisesPage(
          subjectId: args['subjectId'],
          subjectName: args['subjectName'],
        ));
      case RoutePaths.exam:
        return routeBuilder(
          ExamPage(
            examId: args['examId'],
            examName: args['examName'],
          ),
        );
      case RoutePaths.videoExam:
        return routeBuilder(
          VideoExamsPage(
            examId: args['examId'],
            examName: args['examName'],
          ),
        );
      case RoutePaths.settings:
        return routeBuilder(SettingsPage());
      case RoutePaths.premium:
        return routeBuilder(PremiumPage());
    }
  }

// TODO error route

  static routeBuilder(Widget widget) {
    return FadeInPageRoute(builder: (_) {
      return widget;
    });
  }
}
