import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mathrix_education_app/core/graphql/graphql_client.dart';
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

  logout() async {
    await GraphQLConfiguration.logout();
    this.user = null;
  }

  updateUser(UpdateMeArguments updatedMe) async {
    MutationOptions options = MutationOptions(
      documentNode: UpdateMeMutation().document,
      variables: updatedMe.toJson(),
    );

    QueryResult result = await graphQLConfiguration.graphQLClient().mutate(options);

    if (!result.hasException) {
      user = Me$Query.fromJson(result.data).me;
      notifyListeners();
    }
  }
}
