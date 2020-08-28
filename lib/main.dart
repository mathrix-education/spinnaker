import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mathrix_education_app/core/graphql/graphql_client.dart';
import 'package:mathrix_education_app/route_generator.dart';
import 'package:mathrix_education_app/ui/variables/colors.dart';
import 'screens/login/login_screen.dart';

GraphQLConfiguration graphQLConfiguration = GraphQLConfiguration();

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    GraphQLProvider(
      client: graphQLConfiguration.client,
      child: CacheProvider(
        child: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mathrix',
      theme: ThemeData(
        splashFactory: InkRipple.splashFactory,
        primarySwatch: mathrixColors,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Open Sans',
        textTheme: TextTheme(
          headline3: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 22.0,
            fontWeight: FontWeight.w600,
          ),
          headline4: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 18.0,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
      ),
      home: HomePage(),
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    GraphQLConfiguration.loadAuthToken().then((_) {
      String routeName = (GraphQLConfiguration.isLogged()) ? "/dashboard" : "/";
      if (ModalRoute.of(context).settings.name != "/") {
        Navigator.of(context).pushNamedAndRemoveUntil(routeName, (_) => false);
      }
    });
    return LoginScreen(); // TODO: maybe a loading animation
  }
}
