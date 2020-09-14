import 'package:flutter/widgets.dart';
import 'package:mathrix_education_app/core/graphql/queries.dart';
import 'package:mathrix_education_app/ui/layouts/standard_page.dart';
import 'package:mathrix_education_app/ui/silicate/silicate_wrapper.dart';
import 'package:mathrix_education_app/ui/widgets/query_container.dart';

class LessonPage extends StatelessWidget {
  /// The lessonId.
  final String lessonId;

  /// The lesson name.
  final String lessonName;

  const LessonPage({this.lessonId, this.lessonName});

  @override
  Widget build(BuildContext context) {
    return StandardPage(
      title: lessonName,
      body: QueryContainer(
          query: ReadLessonQuery(),
          variables: ReadLessonArguments(id: lessonId),
          builder: (ReadLesson$Query data) {
            final ReadLesson$Query$Lesson readLesson = data.readLesson;
            return SingleChildScrollView(child: SilicateWrapper(wall: readLesson.content));
          }),
    );
  }
}
