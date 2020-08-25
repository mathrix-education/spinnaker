import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class Graphql {
  static String _token;

  static final AuthLink authLink = AuthLink(getToken: () => _token);
  static final HttpLink httpLink = HttpLink(
    uri: 'https://edge.mathrix.tech/graphql',
  );

  static final Link link = authLink.concat(httpLink).concat(httpLink);

  // TODO: sentry error link

  static ValueNotifier<GraphQLClient> initializeClient(String token) {
    _token = token;
    ValueNotifier<GraphQLClient> client = ValueNotifier(
      GraphQLClient(
        cache: InMemoryCache(),
        link: link,
      ),
    );
    return client;
  }
}
