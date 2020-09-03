import 'package:artemis/schema/graphql_query.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mathrix_education_app/ui/layouts/loading_body.dart';

class QueryContainer<T extends GraphQLQuery, U> extends StatelessWidget {
  final T query;

  /// The query variables.
  final Map<String, String> variables;

  /// The widget builder.
  final Widget Function(U data) builder;

  QueryContainer({this.query, this.variables, this.builder});

  @override
  Widget build(BuildContext context) {
    return Query(
      options: QueryOptions(documentNode: query.document, variables: variables),
      builder: (
        QueryResult result, {
        Future<QueryResult> Function() refetch,
        FetchMore fetchMore,
      }) {
        if (result.hasException) {
          return Text(result.exception.toString());
        }

        if (result.loading) {
          return LoadingBody();
        }

        return builder(query.parse(result.data));
      },
    );
  }
}
