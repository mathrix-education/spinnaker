import 'package:flutter/widgets.dart';
import 'package:mathrix_education_app/core/graphql/queries.dart';
import 'package:mathrix_education_app/ui/dialogs/comment.dart';
import 'package:mathrix_education_app/ui/layouts/standard_page.dart';
import 'package:mathrix_education_app/ui/widgets/query_container.dart';

enum CommentableType {
  course,
  exam,
  exercise,
  flashcard,
}

class CommentsDialog extends StatelessWidget {
  final String modelId;


  final CommentableType commentableType;

  const CommentsDialog({this.modelId, this.commentableType});

  @override
  Widget build(BuildContext context) {
    return StandardPage(
      title: 'Commentaires',
      body: QueryContainer(
        query: ReadCourseCommentsQuery(),
        variables: ReadCourseCommentsArguments(id: modelId),
        builder: (ReadCourseComments$Query data) {

          return Column(children: data.readCourse.comments.map((e) => Comment(comment: ReadCourseComments$Query$Course$Comment())).toList()
          ,)

        },
      ),
    );
  }
}
