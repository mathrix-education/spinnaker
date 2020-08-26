import "package:flutter/material.dart";
import "package:graphql_flutter/graphql_flutter.dart";
import 'package:mathrix_education_app/environment/environment.dart';
import 'package:shared_preferences/shared_preferences.dart';

class GraphQLConfiguration {
  static String token = '';

  static final HttpLink httpLink = HttpLink(
    uri: "https://edge.mathrix.tech/graphql",
  );

  static final AuthLink _authLink = AuthLink(
    getToken: () async => isLogged() ? 'Bearer $token' : null,
  );

  //  final Link link = authLink.concat(httpLink);

  ValueNotifier<GraphQLClient> client = ValueNotifier(
    GraphQLClient(
      link: httpLink,
      cache: InMemoryCache(),
    ),
  );

  GraphQLClient graphQLClient() {
    return client.value;
  }

  static setToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String tokenFromStorage = prefs.getString(mathrixToken) ?? '';
    token = tokenFromStorage;
  }

  static bool isLogged() {
    return token !=
        ''; // TODO externalise the token mechanism and use token validity information.
  }
}
