import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mathrix_education_app/core/graphql/graphql_client.dart';
import 'package:mathrix_education_app/pages/login/login_page.dart';
import 'package:mathrix_education_app/ui/variables/colors.dart';
import 'package:provider/provider.dart';
import 'core/routing/route_generator.dart';
import 'core/routing/routes.dart';
import 'core/store/session.state.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    GraphQLProvider(
      client: GraphQLConfiguration.clientNotifier,
      child: CacheProvider(
        child: MultiProvider(
          providers: [ChangeNotifierProvider(create: (context) => AppState())],
          child: MyApp(),
        ),
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
        pageTransitionsTheme: PageTransitionsTheme(
            builders: {
              TargetPlatform.android: CupertinoPageTransitionsBuilder(),
              TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
            }
        ),
        splashFactory: InkRipple.splashFactory,
        primarySwatch: mathrixColors,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Open Sans',
        textTheme: TextTheme(
          headline1: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 26.0,
            fontWeight: FontWeight.w600,
          ),
          headline2: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 24.0,
            fontWeight: FontWeight.w600,
          ),
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
          bodyText1: TextStyle(
            fontSize: 16.0,
            color: Colors.black,
          ),
          subtitle1: TextStyle(
            fontSize: 14.0,
            color: greyActivityText,
          ),
        ),
        dividerColor: green,
      ),
      home: HomePage(),
      initialRoute:RoutePaths.authenticate,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    GraphQLConfiguration.token.then((_) {
      Provider.of<AppState>(context, listen: false).loadUser();
      String routeName = (GraphQLConfiguration.isLogged()) ? "/dashboard" : "/";
      if (ModalRoute.of(context).settings.name != routeName) {
        Navigator.of(context).pushNamedAndRemoveUntil(routeName, (_) => false);
      }
    });
    return LoginPage(); // TODO: maybe a loading animation
  }
}
