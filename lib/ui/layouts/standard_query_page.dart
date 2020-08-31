import 'package:flutter/widgets.dart';
import 'package:gql/ast.dart';
import 'package:mathrix_education_app/ui/layouts/standard_page.dart';
import 'package:mathrix_education_app/ui/widgets/query_container.dart';

class StandardQueryPage extends StatelessWidget {
  /// The model idd.
  final String modelId;

  /// The model name, which is also the title of the page.
  final String modelName;

  /// The query document.
  final DocumentNode document;

  /// The widget builder.
  final  builder;

  const StandardQueryPage({Key key, this.modelId, this.modelName, this.document, this.builder}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StandardPage(
      title: modelName,
      body: QueryContainer(
        variables: {'id': modelId},
        document: document,
        builder: builder,
      ),
    );
  }
}
