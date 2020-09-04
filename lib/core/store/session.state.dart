import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mathrix_education_app/core/graphql/graphql_client.dart';
import 'package:mathrix_education_app/core/graphql/queries.dart';

class AppState extends ChangeNotifier {
  Me$BasicUserMixin user;

  List<ListGrades$Query$Grade> listGrades = [];

  final _client = GraphQLConfiguration.client;

  loadUser() async {
    QueryOptions options = QueryOptions(
      documentNode: MeQuery().document,
    );

    QueryResult result = await _client.query(options);

    if (!result.hasException) {
      user = Me$Query.fromJson(result.data).me;
      notifyListeners();
    }
  }

  loadGrades() async {
    QueryOptions options = QueryOptions(
      documentNode: ListGradesQuery().document,
    );

    QueryResult result = await _client.query(options);

    if (!result.hasException) {
      listGrades = ListGradesQuery().parse(result.data).listGrades;
      notifyListeners();
    }
  }

  logout() async {
    await GraphQLConfiguration.logout();
    this.user = null;
  }

  updateUser(UpdateMeArguments updatedMe) async {
    MutationOptions options = MutationOptions(
      documentNode: UpdateMeMutation().document,
      variables: updatedMe.toJson(),
    );

    QueryResult result = await _client.mutate(options);

    if (!result.hasException) {
      user = Me$Query.fromJson(result.data).me;
      notifyListeners();
    }
  }


}
