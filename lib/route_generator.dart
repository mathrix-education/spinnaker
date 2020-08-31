import 'package:flutter/material.dart';
import 'package:gql/ast.dart';
import 'package:mathrix_education_app/core/graphql/graphql_client.dart';
import 'package:mathrix_education_app/core/graphql/queries.dart';
import 'package:mathrix_education_app/pages/course/course_page.dart';
import 'package:mathrix_education_app/pages/dashboard/dashboard_page.dart';
import 'package:mathrix_education_app/pages/login/login_page.dart';
import 'package:mathrix_education_app/pages/menu/menu_page.dart';
import 'package:mathrix_education_app/pages/theme/theme_page.dart';
import 'package:mathrix_education_app/ui/layouts/standard_query_page.dart';

class RouteGenerator {
  static MaterialPageRoute _materialPage({String id, String name, componentBuilder, DocumentNode queryDocument}) {
    return MaterialPageRoute(builder: (_) {
      return StandardQueryPage(
        builder: componentBuilder,
        modelName: name,
        document: queryDocument,
        modelId: id,
      );
    });
  }

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
        return _materialPage(
          id: args['id'],
          name: args['name'],
          queryDocument: ReadCourseQuery().document,
          componentBuilder: courseBuilder,
        );
    }
  }
// TODO error route
}
