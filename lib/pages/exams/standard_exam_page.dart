import 'package:flutter/widgets.dart';
import 'package:mathrix_education_app/core/graphql/queries.graphql.dart';
import 'package:mathrix_education_app/ui/layouts/standard_page.dart';
import 'package:mathrix_education_app/ui/widgets/query_container.dart';

class StandardExamPage extends StatelessWidget {
  final String examName;

  final String examId;

  final Widget Function(ReadExam$Query data) builder;

  const StandardExamPage({Key key, this.examName, this.examId, this.builder}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StandardPage(
      title: examName,
      body: QueryContainer(
        query: ReadExamQuery(),
        variables: ReadExamArguments(id: examId),
        builder: builder,
      ),
    );
  }
}
