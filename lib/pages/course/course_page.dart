import 'package:flutter/cupertino.dart';
import 'package:mathrix_education_app/ui/layouts/standard_page.dart';

class CoursePage extends StatelessWidget {
  final String courseName;
  final String courseId;

  const CoursePage({Key key, this.courseName, this.courseId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StandardPage(
      title: courseName,
      body: Text('COURSE'),
    );
  }
}
