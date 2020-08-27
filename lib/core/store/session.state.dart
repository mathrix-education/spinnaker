import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mathrix_education_app/core/graphql/queries.dart';
import 'package:mathrix_education_app/core/store/session.action.dart';
import 'package:mathrix_education_app/main.dart';
import 'package:meta/meta.dart';

@immutable
class AppState {
  final Me$BasicUserMixin user;

  AppState({this.user});
}

AppState appReducer(AppState state, action) {
  return AppState(
    user: userReducer(state.user, action),
  );
}

/// Selectors ///
Me$BasicUserMixin userSelector(AppState state) => state.user;

loadUser() async {
  QueryOptions options = QueryOptions(
    documentNode: MeQuery().document,
  );

  QueryResult result =
      await graphQLConfiguration.graphQLClient().query(options);

  if (!result.hasException) {
    Me$Query$User me = Me$Query.fromJson(result.data).me;
  }
}

Me$BasicUserMixin userReducer(Me$BasicUserMixin user, UpdateUserAction action) {
  return action.user;
}
