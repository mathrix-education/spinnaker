import 'package:flutter/widgets.dart';
import 'package:mathrix_education_app/core/graphql/queries.dart';

class Comment extends StatelessWidget {
  final ReadCourseComments$Query$Comment$Comment comment;

  const Comment({Key key, this.comment}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(comment.content);
  }
}
