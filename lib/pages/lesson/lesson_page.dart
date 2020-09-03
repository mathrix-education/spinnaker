import 'package:flutter/widgets.dart';
import 'package:mathrix_education_app/core/graphql/queries.dart';
import 'package:mathrix_education_app/ui/layouts/standard_page.dart';
import 'package:mathrix_education_app/ui/widgets/query_container.dart';

class LessonPage extends StatelessWidget {
  /// The lessonId.
  final String lessonId;

  /// The lesson name.
  final String lessonName;

  const LessonPage({Key key, this.lessonId, this.lessonName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StandardPage(
      title: lessonName,
      body: QueryContainer(
          query: ReadLessonQuery(),
          builder: (ReadLesson$Query data) {
            final ReadLesson$Query readLesson = data;
            return Text('IMPLEMENT COURSE');
          }),
    );
  }
}
