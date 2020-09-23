import 'package:flutter/material.dart';
import 'package:mathrix_education_app/core/store/session.state.dart';
import 'package:mathrix_education_app/ui/dialogs/comments/comment_state.dart';
import 'package:mathrix_education_app/ui/texts/body.dart';
import 'package:mathrix_education_app/ui/texts/body_bold.dart';
import 'package:mathrix_education_app/ui/variables/colors.dart';
import 'package:mathrix_education_app/ui/widgets/disallowed_glow_animation.dart';
import 'package:provider/provider.dart';

class CommentBottomSection extends StatelessWidget {
  /// The text field controller, used to control text input value.
  final TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final CommentState commentState = Provider.of<CommentState>(context);
    String userId = Provider.of<AppState>(context, listen: false).user.id;
    String commentUserId = commentState.selectedCommentUserId;
    String commentUserName = commentState.selectedCommentUserName;
    String answerTo = userId == commentUserId ? 'mon commentaire' : commentUserName;
    return Container(
      decoration: commentUserId != null
          ? BoxDecoration(
              border: Border(top: BorderSide(color: greenLight, width: 0.5)),
            )
          : null,
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Visibility(
              visible: commentUserId != null,
              child: Container(
                padding: EdgeInsets.only(bottom: 4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Body(text: 'Répondre à $answerTo', color: green),
                    GestureDetector(
                      child: Icon(Icons.clear, color: green, size: 20),
                      onTap: commentState.reset,
                    ),
                  ],
                ),
              ),
            ),
            ConstrainedBox(
              constraints: BoxConstraints(maxHeight: 80),
              child: Row(
                children: [
                  Expanded(
                    child: ScrollConfiguration(
                      behavior: DisallowedGlowAnimation(),
                      child: TextField(
                        controller: textController,
                        maxLines: null,
                        maxLength: 280,
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          hintText: 'Ajouter un commentaire',
                          counterText: "",
                          fillColor: Colors.amberAccent,
                          isDense: true,
                          enabledBorder: CommentBottomSection._inputBorder,
                          focusedBorder: CommentBottomSection._inputBorder,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  GestureDetector(
                      child: BodyBold(
                        text: 'Publier',
                        color: green,
                      ),
                      onTap: () {
                        commentState.createComment(textController.text);
                        textController.text = '';
                        FocusScope.of(context).unfocus();
                        return;
                      }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  static final _inputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(8.0),
    borderSide: const BorderSide(width: 1, color: green),
  );
}
