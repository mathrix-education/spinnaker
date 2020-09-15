import 'package:flutter/widgets.dart';
import 'package:mathrix_education_app/core/graphql/queries.dart';
import 'package:mathrix_education_app/pages/exams/standard_exam_page.dart';
import 'package:mathrix_education_app/ui/silicate/silicate_wrapper.dart';

class ExamPage extends StatelessWidget {
  final String examId;

  final String examName;

  const ExamPage({Key key, this.examId, this.examName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StandardExamPage(
      examName: examName,
      examId: examId,
      builder: (ReadExam$Query data) {
        return SilicateWrapper(wall: data.readExam.content);
      },
    );
  }
}
