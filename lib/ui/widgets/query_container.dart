import 'package:flutter/material.dart';
import 'package:gql/ast.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mathrix_education_app/ui/layouts/loading_body.dart';

typedef WidgetBuilder = Widget Function({dynamic data});

class QueryContainer extends StatelessWidget {
  /// The query variables.
  final Map<String, String> variables;

  /// The query document.
  final DocumentNode document;

  /// The widget builder.
  final WidgetBuilder builder;

  QueryContainer({this.variables, this.document, this.builder});

  @override
  Widget build(BuildContext context) {
    return Query(
        options: QueryOptions(documentNode: document, variables: variables),
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

          return builder(data: result.data);
        });
  }
}
