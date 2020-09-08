import 'dart:io';
import '../environment/environment.dart'; // TODO
import "package:flutter/material.dart";
import "package:graphql_flutter/graphql_flutter.dart";
import 'package:shared_preferences/shared_preferences.dart';

class GraphQLConfiguration {
  static String _token = '';

  static final HttpLink _httpLink = HttpLink(
    uri: "https://edge.mathrix.tech/graphql",
  );

  static final AuthLink authLink = AuthLink(
    getToken: () async => isLogged() ? 'Bearer $_token' : null,
  );

  static final Link _link = authLink.concat(_httpLink);

  static GraphQLClient client = GraphQLClient(
    link: _link,
    cache: InMemoryCache(),
  );

  static ValueNotifier<GraphQLClient> clientNotifier = ValueNotifier(client);

  static set token(String token) {
    SharedPreferences.getInstance().then((value) => value.setString('mathrix-token', token));
    _token = token;
  }

  static get token async {
    if (_token == '') {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      token = prefs.getString('mathrix-token') ?? '';
    }
    return _token;
  }

  static bool isLogged() {
    return _token != '';
    // TODO externalise the token mechanism and use token validity information.
  }

  static Future<void> logout() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    token = '';
    await prefs.remove(mathrixToken);
    client.cache.reset(); // empty the hash map
  }
}
