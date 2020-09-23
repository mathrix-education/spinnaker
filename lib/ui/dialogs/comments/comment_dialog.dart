import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mathrix_education_app/core/graphql/queries.dart';
import 'package:mathrix_education_app/ui/dialogs/comments/comment_bottom_section.dart';
import 'package:mathrix_education_app/ui/dialogs/comments/comment_model.dart';
import 'package:mathrix_education_app/ui/dialogs/comments/comment_state.dart';
import 'package:mathrix_education_app/ui/layouts/standard_page.dart';
import 'package:mathrix_education_app/ui/texts/body_bold.dart';
import 'package:mathrix_education_app/ui/variables/colors.dart';
import 'package:mathrix_education_app/ui/widgets/query_container.dart';
import 'package:provider/provider.dart';
import 'comment_wrapper.dart';

enum CommentableType {
  course,
  exam,
  exercise,
  flashcard,
}

class CommentsDialog extends StatefulWidget {
  final String modelId;

  final CommentableType commentableType;

  const CommentsDialog({this.modelId, this.commentableType});

  @override
  _CommentsDialogState createState() => _CommentsDialogState();
}

class _CommentsDialogState extends State<CommentsDialog> {
  @override
  Widget build(BuildContext context) {
    return StandardPage(
      title: 'Commentaires',
      body: QueryContainer(
        query: ReadCourseCommentsQuery(),
        variables: ReadCourseCommentsArguments(id: widget.modelId),
        builder: (ReadCourseComments$Query data) {
          // if (_comments == null) {
          //
          // }
          print('executing');

          CommentState commentState = Provider.of<CommentState>(context, listen: false);
          commentState.init(modelId: widget.modelId, courseComments: data.readCourse.comments);

          return Column(
            children: [
              Expanded(
                child: commentState.commentableId.length == 0
                    ? BodyBold(text: 'Soit le premier à poster un commentaire', color: green)
                    : Consumer<CommentState>(builder: (context, commentState, child) {
                        return ListView.builder(
                          shrinkWrap: true,
                          itemBuilder: (_, index) {
                            return CommentWrapper(
                              comment: commentState.comments[index],
                            );
                          },
                          itemCount: commentState.comments.length,
                        );
                      }),
              ),
              CommentBottomSection(),
            ],
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
