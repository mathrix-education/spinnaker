import 'package:flutter/cupertino.dart';
import 'package:mathrix_education_app/core/graphql/queries.graphql.dart';
import 'package:mathrix_education_app/ui/layouts/standard_query_page.dart';
import 'package:mathrix_education_app/ui/silicate/text_brick.dart';

class CoursePage extends StatelessWidget {
  /// The model id.
  final String courseId;

  /// The model name.
  final String courseName;

  const CoursePage({Key key, this.courseId, this.courseName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StandardQueryPage(
      builder: (dynamic data) {
        List<dynamic> content = ReadCourse$Query.fromJson(data).readCourse.content;
        return Column(
            children: content.map((brick) {
          return brickResolver(brick);
        }).toList());
      },
      modelName: courseName,
      document: ReadCourseQuery().document,
      modelId: courseId,
    );
  }

  Widget brickResolver(Map<String, dynamic> brick) {
    switch (brick['kind']) {
      case 'text':
        return TextBrick(text: brick['text']);
      default:
        return SizedBox.shrink();
    }
  }
}
