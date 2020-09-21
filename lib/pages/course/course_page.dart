import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mathrix_education_app/core/graphql/queries.graphql.dart';
import 'package:mathrix_education_app/ui/buttons/primary_text_button.dart';
import 'package:mathrix_education_app/ui/dialogs/comment_dialog.dart';
import 'package:mathrix_education_app/ui/layouts/standard_page.dart';
import 'package:mathrix_education_app/ui/silicate/silicate_wrapper.dart';
import 'package:mathrix_education_app/ui/widgets/query_container.dart';

class CoursePage extends StatelessWidget {
  /// The model id.
  final String courseId;

  /// The model name.
  final String courseName;

  const CoursePage({Key key, this.courseId, this.courseName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StandardPage(
      title: courseName,
      body: Column(
        children: [
          Flexible(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  QueryContainer(
                    query: ReadCourseQuery(),
                    variables: ReadCourseArguments(id: courseId),
                    builder: (ReadCourse$Query data) {
                      return Container(
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        child: SilicateWrapper(wall: data.readCourse.content),
                      );
                    },
                  ),
                  PrimaryTextButton(
                    text: 'Voir les commentaires',
                    width: double.infinity,
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (_) => CommentsDialog(
                          modelId: courseId,
                          commentableType: CommentableType.course, // TODO
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
