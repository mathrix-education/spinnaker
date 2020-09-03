import 'package:artemis/schema/graphql_query.dart';
import 'package:flutter/widgets.dart';
import 'package:mathrix_education_app/ui/layouts/standard_page.dart';
import 'package:mathrix_education_app/ui/widgets/query_container.dart';

class StandardQueryPage<T extends GraphQLQuery, U> extends StatelessWidget {
  /// The model id.
  final String modelId;

  /// The model name.
  final String modelName;

  /// The query document.
  final T query;

  /// The widget builder.
  final Widget Function(U data) builder;

  const StandardQueryPage({this.modelId, this.modelName, this.query, this.builder});

  @override
  Widget build(BuildContext context) {
    return StandardPage(
      title: modelName,
      body: QueryContainer(
        query: query,
        variables: {'id': modelId},
        builder: builder,
      ),
    );
  }
}
