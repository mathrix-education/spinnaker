import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mathrix_education_app/core/graphql/graphql_client.dart';
import 'package:mathrix_education_app/core/graphql/queries.dart';

class AppState extends ChangeNotifier {
  Me$BasicUserMixin user;

  List<ListGrades$Query$Grade> listGrades = [];

  final _client = GraphQLConfiguration.client;

  Future<bool> loadUser() async {
    QueryOptions options = QueryOptions(
      documentNode: MeQuery().document,
      fetchPolicy: FetchPolicy.networkOnly,
    );

    QueryResult result = await _client.query(options);

    print(result.toString());

    if (!result.hasException) {
      user = Me$Query.fromJson(result.data).me;
      notifyListeners();
    }
    return !result.hasException;
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

  Future<bool> updateUser(UpdateMeArguments updatedMe) async {
    var updatedMeJson = updatedMe.toJson();
    updatedMeJson['input'].removeWhere((key, value) => value == null);

    MutationOptions options = MutationOptions(
      documentNode: UpdateMeMutation().document,
      variables: updatedMeJson,
    );

    QueryResult result = await _client.mutate(options);

    if (!result.hasException) {
      Map<String, dynamic> adaptedData = {'me': result.data['updateMe']};
      user = Me$Query.fromJson(adaptedData).me;
      notifyListeners();
    }
    return (!result.hasException);
  }
}
