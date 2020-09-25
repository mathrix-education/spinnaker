import 'package:artemis/schema/graphql_query.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart' hide JsonSerializable;
import 'package:mathrix_education_app/ui/layouts/loading_body.dart';
import 'package:json_annotation/json_annotation.dart';

class QueryContainer<Q extends GraphQLQuery<R, V>, R, V extends JsonSerializable> extends StatelessWidget {
  /// The query.
  final Q query;

  /// The query variables.
  final V variables;

  /// The widget builder.
  final Widget Function(R response) builder;

  /// The fetchPolicy
  final FetchPolicy fetchPolicy;

  QueryContainer({@required this.query, this.variables, @required this.builder, this.fetchPolicy});

  @override
  Widget build(BuildContext context) {
    return Query(
      options: QueryOptions(
        documentNode: query.document,
        variables: variables == null ? {} : variables.toJson(),
        fetchPolicy: fetchPolicy,
      ),
      builder: (
        QueryResult result, {
        Future<QueryResult> Function() refetch,
        FetchMore fetchMore,
      }) {
        if (result.hasException) {
          return Text(result.exception.toString()); // TODO
        }

        if (result.loading) {
          return LoadingBody();
        }

        if (result.data != null) {
          return builder(query.parse(result.data));
        }

        return LoadingBody();
      }
    );
  }
}
