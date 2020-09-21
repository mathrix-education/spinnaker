import 'package:flutter/widgets.dart';
import 'package:mathrix_education_app/core/graphql/queries.dart';
import 'package:mathrix_education_app/pages/exams/standard_exam_page.dart';
import 'package:mathrix_education_app/ui/silicate/silicate_wrapper.dart';

class VideoExamsPage extends StatelessWidget {
  /// The exam id.
  final String examId;

  /// The exam name.
  final String examName;

  const VideoExamsPage({this.examId, this.examName});

  @override
  Widget build(BuildContext context) {
    return StandardExamPage(
      examId: examId,
      examName: examName,
      builder: (ReadExam$Query data) {
        return SilicateWrapper(wall: data.readExam.content);
      },
    );
  }
}
