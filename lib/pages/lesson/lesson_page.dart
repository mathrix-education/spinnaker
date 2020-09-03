import 'package:flutter/widgets.dart';
import 'package:mathrix_education_app/core/graphql/queries.dart';
import 'package:mathrix_education_app/ui/layouts/standard_query_page.dart';

class LessonPage extends StatelessWidget {
  final String lessonId;

  final String lessonName;

  const LessonPage({Key key, this.lessonId, this.lessonName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StandardQueryPage(
      modelId: lessonId,
      modelName: lessonName,
      query: ReadLessonQuery(),
      builder: (ReadLesson$Query data) {
        final ReadLesson$Query readLesson = data;
        return Text('IMPLEMENT COURSE');
      },
    );
  }
}
