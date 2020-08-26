import 'package:flutter/material.dart';
import 'package:mathrix_education_app/graphql/graphql_client.dart';
import 'package:mathrix_education_app/screens/dashboard/dashboard_screen.dart';
import 'screens/login/login_screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Get arguments passed with Navigator.pushNamed
    final args = settings.arguments;
    switch (settings.name) {
      case '/':
        if (GraphQLConfiguration.isLogged()) {
          print('sulfateuse');
          return generateRoute(RouteSettings(name: '/dashboard'));
        }
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case '/dashboard':
        return MaterialPageRoute(
            builder: (_) =>
                Dashboard()); // can use args to pass data (with additional type checking)
      // TODO error route?
    }
  }
}
