import 'package:flutter/material.dart';
import 'package:mathrix_education_app/core/graphql/graphql_client.dart';
import 'package:mathrix_education_app/pages/course/course_page.dart';
import 'package:mathrix_education_app/pages/dashboard/dashboard_page.dart';
import 'package:mathrix_education_app/pages/lesson/lesson_page.dart';
import 'package:mathrix_education_app/pages/login/login_page.dart';
import 'package:mathrix_education_app/pages/menu/menu_page.dart';
import 'package:mathrix_education_app/pages/theme/theme_page.dart';
import 'package:mathrix_education_app/pages/training/training_page.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Get arguments passed with Navigator.pushNamed.
    final Map<String, dynamic> args = settings.arguments;
    switch (settings.name) {
      case '/':
        if (GraphQLConfiguration.isLogged()) {
          return generateRoute(RouteSettings(name: '/dashboard'));
        }
        return MaterialPageRoute(builder: (_) => LoginPage());
      case '/dashboard':
        return MaterialPageRoute(builder: (_) => DashboardPage());
      case '/themes':
        return MaterialPageRoute(
          builder: (_) => ThemePage(
            discipline: args['discipline'],
            grade: args['grade'],
          ),
        );
      case '/menu':
        return MaterialPageRoute(
          builder: (_) => MenuPage(
            chapterId: args['chapterId'],
            chapterName: args['chapterName'],
          ),
        );
      case '/course':
        return MaterialPageRoute(builder: (_) {
          return CoursePage(
            courseId: args['courseId'],
            courseName: args['courseName'],
          );
        });
      case '/training':
        return MaterialPageRoute(builder: (_) {
          return TrainingPage(
            trainingId: args['trainingId'],
            trainingName: args['trainingName'],
          );
        });case '/lesson':
        return MaterialPageRoute(builder: (_) {
          return LessonPage(
            lessonId: args['lessonId'],
            lessonName: args['lessonName'],
          );
        });
    }
  }
// TODO error route
}
