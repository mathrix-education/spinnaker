import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mathrix_education_app/route_generator.dart';
import 'package:mathrix_education_app/screens/dashboard/dashboard_screen.dart';
import 'graphql/graphql_client.dart';
import 'screens/login/login_screen.dart';

GraphQLConfiguration graphQLConfiguration = GraphQLConfiguration();

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    GraphQLProvider(
      client: graphQLConfiguration.client,
      child: CacheProvider(child: MyApp()),
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
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    GraphQLConfiguration.loadAuthToken().then((_) {
      String routeName = (GraphQLConfiguration.isLogged()) ? "/dashboard" : "/";
      return Navigator.of(context)
          .pushNamedAndRemoveUntil(routeName, (_) => false);
    });
    return LoginScreen(); // TODO: maybe a loading animation
  }
}
