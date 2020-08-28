import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mathrix_education_app/core/graphql/queries.dart';
import 'package:mathrix_education_app/main.dart';

class AppState extends ChangeNotifier {
  Me$BasicUserMixin user;

  loadUser() async {
    QueryOptions options = QueryOptions(
      documentNode: MeQuery().document,
    );

    QueryResult result =
        await graphQLConfiguration.graphQLClient().query(options);

    if (!result.hasException) {
      user = Me$Query.fromJson(result.data).me;
      notifyListeners();
    }
  }
}
