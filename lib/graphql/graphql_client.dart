import 'package:flutter/widgets.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

ValueNotifier<GraphQLClient> graphqlClient() {
  final HttpLink httpLink = HttpLink(
    uri: 'https://edge.mathrix.tech/graphql',
  );

  final AuthLink authLink = AuthLink(
    getToken: () => 'Bearer <YOUR_PERSONAL_ACCESS_TOKEN>',
  );

//  final Link link = authLink.concat(httpLink);

  return ValueNotifier(
    GraphQLClient(
      cache: InMemoryCache(),
      link: httpLink,
    ),
  );
}
