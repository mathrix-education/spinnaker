import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mathrix_education_app/core/graphql/queries.dart';
import 'package:mathrix_education_app/core/misc/vibration.dart';
import 'package:mathrix_education_app/ui/dialogs/comment.dart';
import 'package:mathrix_education_app/ui/layouts/standard_page.dart';
import 'package:mathrix_education_app/ui/texts/body_bold.dart';
import 'package:mathrix_education_app/ui/variables/colors.dart';
import 'package:mathrix_education_app/ui/widgets/disallowed_glow_animation.dart';
import 'package:mathrix_education_app/ui/widgets/query_container.dart';

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

  static final _inputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(8.0),
    borderSide: const BorderSide(width: 1, color: green),
  );
}

class _CommentsDialogState extends State<CommentsDialog> {
  String selectedCommentId;

  @override
  Widget build(BuildContext context) {
    return StandardPage(
      title: 'Commentaires',
      body: QueryContainer(
        query: ReadCourseCommentsQuery(),
        variables: ReadCourseCommentsArguments(id: widget.modelId),
        builder: (ReadCourseComments$Query data) {
          List<ReadCourseComments$Query$Course$Comment> comments = data.readCourse.comments;

          if (comments.length == 0) {
            return BodyBold(text: 'Soit le premier à poster un commentaire');
          }

          return Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  physics: ClampingScrollPhysics(),
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemBuilder: (_, index) {
                      return InkWell(
                        onLongPress: () {
                          hapticSuccessFeedback();
                          setState(() {
                            selectedCommentId = comments[index].id;
                          });
                        },
                        child: Comment(
                            comment: comments[index],
                            selected: selectedCommentId == comments[index].id,
                        ),
                      );
                    },
                    itemCount: comments.length,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: ConstrainedBox(
                  constraints: BoxConstraints(maxHeight: 80),
                  child: Row(
                    children: [
                      Expanded(
                        child: ScrollConfiguration(
                          behavior: DisallowedGlowAnimation(),
                          child: TextField(
                            onChanged: (text) {},
                            maxLines: null,
                            maxLength: 280,
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                              hintText: 'Ajouter un commentaire',
                              counterText: "",
                              fillColor: Colors.amberAccent,
                              isDense: true,
                              enabledBorder: CommentsDialog._inputBorder,
                              focusedBorder: CommentsDialog._inputBorder,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 8),
                      BodyBold(text: 'Publier', color: green),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
