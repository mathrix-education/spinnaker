import 'package:artemis/schema/graphql_query.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart' hide JsonSerializable;
import 'package:mathrix_education_app/ui/layouts/loading_body.dart';
import 'package:json_annotation/json_annotation.dart';

class QueryContainer<Que extends GraphQLQuery<Res, Var>, Res, Var extends JsonSerializable> extends StatelessWidget {
  final Que query;

  /// The query variables.
  final Var variables;

  /// The widget builder.
  final Widget Function(Res response) builder;

  QueryContainer({this.query, this.variables, this.builder});

  @override
  Widget build(BuildContext context) {
    return Query(
      options: QueryOptions(documentNode: query.document, variables: variables == null ? {} : variables.toJson()),
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
