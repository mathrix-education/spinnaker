import 'package:flutter/material.dart';
import 'package:mathrix_education_app/core/graphql/graphql_client.dart';
import 'package:mathrix_education_app/screens/dashboard/dashboard_screen.dart';
import 'package:mathrix_education_app/screens/theme/theme_page.dart';
import 'screens/login/login_screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Get arguments passed with Navigator.pushNamed.
    final Map<String, dynamic> args = settings.arguments;
    switch (settings.name) {
      case '/':
        if (GraphQLConfiguration.isLogged()) {
          return generateRoute(RouteSettings(name: '/dashboard'));
        }
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case '/dashboard':
        return MaterialPageRoute(builder: (_) => Dashboard());
      case '/themes':
        print(args.toString());
        return MaterialPageRoute(
          builder: (_) => ThemePage(
            discipline: args['discipline'],
            grade: args['grade'],
          ),
        );
      // TODO error route?

    }
  }
}
