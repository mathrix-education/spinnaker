import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mathrix_education_app/core/graphql/queries.dart';
import 'package:mathrix_education_app/main.dart';

class AppState extends ChangeNotifier {
  Me$BasicUserMixin user;

  List<ListGrades$Query$Grade> listGrades = [];

  loadUser() async {
    QueryOptions options = QueryOptions(
      documentNode: MeQuery().document,
    );

    QueryResult result = await graphQLConfiguration.graphQLClient().query(options);

    if (!result.hasException) {
      user = Me$Query.fromJson(result.data).me;
      notifyListeners();
    }
  }

  loadGrades() async {
    QueryOptions options = QueryOptions(
      documentNode: ListGradesQuery().document,
    );

    QueryResult result = await graphQLConfiguration.graphQLClient().query(options);

    if (!result.hasException) {
      listGrades = ListGradesQuery().parse(result.data).listGrades;
      notifyListeners();
    }
  }

  updateUser(Map<String, String> updatedMe) async {
    MutationOptions options = MutationOptions(
      documentNode: UpdateMeMutation().document,
      variables: {'input': updatedMe},
    );

    QueryResult result = await graphQLConfiguration.graphQLClient().mutate(options);

    if (!result.hasException) {
      user = Me$Query.fromJson(result.data).me;
      notifyListeners();
    }
  }
}
