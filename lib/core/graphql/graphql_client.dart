import 'dart:io';
import '../environment/environment.dart'; // TODO
import "package:flutter/material.dart";
import "package:graphql_flutter/graphql_flutter.dart";
import 'package:shared_preferences/shared_preferences.dart';

class GraphQLConfiguration {
  static String token = '';

  static final HttpLink _httpLink = HttpLink(
    uri: "https://edge.mathrix.tech/graphql",
  );

  static final AuthLink _authLink = AuthLink(
    getToken: () async => isLogged() ? 'Bearer $token' : null,
  );

  static final Link _link = _authLink.concat(_httpLink);

  static GraphQLClient client = GraphQLClient(
    link: _link,
    cache: InMemoryCache(),
  );

  static ValueNotifier<GraphQLClient> clientNotifier = ValueNotifier(client);

  static Future<void> loadAuthToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    token = prefs.getString('mathrix-token') ?? '';
  }

  static bool isLogged() {
    return token != '';
    // TODO externalise the token mechanism and use token validity information.
  }

  static Future<void> logout() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    token = '';
    await prefs.remove(mathrixToken);
    client.cache.reset(); // empty the hash map
  }
}
