import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mathrix_education_app/ui/dialogs/comments/comment_model.dart';
import 'package:mathrix_education_app/ui/dialogs/comments/comment_state.dart';
import 'package:mathrix_education_app/ui/variables/colors.dart';
import 'package:provider/provider.dart';

import 'atomic_comment.dart';

class CommentWrapper extends StatelessWidget {
  final CommentModel comment;

  const CommentWrapper({@required this.comment});

  @override
  Widget build(BuildContext context) {
    CommentState commentState = Provider.of<CommentState>(context, listen: false);

    return Column(
      children: [
        InkWell(
          onLongPress: () {
            commentState.selectComment(
                commentId: comment.id, commentUserName: comment.userName, commentUserId: comment.userId);
          },
          child: Container(
            decoration: new BoxDecoration(
              color: (Provider.of<CommentState>(context).selectedCommentId == comment.id ? greenLight2 : null),
            ),
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: AtomicComment(
              pseudo: comment.userName,
              content: comment.content.trim(),
              onAnswer: () {
                commentState.selectComment(
                    commentId: comment.id, commentUserName: comment.userName, commentUserId: comment.userId);
              },
            ),
          ),
        ),
        Column(
          children: comment.children.map(
            (c) {
              return InkWell(
                onLongPress: () {
                  Provider.of<CommentState>(context, listen: false)
                      .selectComment(commentId: c.id, commentUserName: c.userName, commentUserId: c.userId);
                },
                child: Container(
                  decoration: new BoxDecoration(
                    color: (Provider.of<CommentState>(context).selectedCommentId == c.id ? greenLight2 : null),
                  ),
                  child: Container(
                    margin: EdgeInsets.only(left: 16),
                    padding: EdgeInsets.only(left: 4, right: 8, top: 4, bottom: 4),
                    decoration: BoxDecoration(border: Border(left: BorderSide(color: green, width: 0.5))),
                    child: AtomicComment(
                      pseudo: c.userName,
                      content: c.content,
                      onAnswer: () {
                        commentState.selectComment(
                            commentId: c.id, commentUserName: c.userName, commentUserId: c.userId);
                      },
                    ),
                  ),
                ),
              );
            },
          ).toList(),
        ),
      ],
    );
  }
}
