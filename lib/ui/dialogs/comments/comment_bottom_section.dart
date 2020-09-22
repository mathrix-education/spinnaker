import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mathrix_education_app/ui/texts/body.dart';
import 'package:mathrix_education_app/ui/texts/body_bold.dart';
import 'package:mathrix_education_app/ui/variables/colors.dart';
import 'package:mathrix_education_app/ui/widgets/disallowed_glow_animation.dart';

class CommentBottomSection extends StatelessWidget {
  /// The text field controller, used to control text input value.
  final TextEditingController textController;

  /// The on publish callback.
  final VoidCallback onPublish;

  final VoidCallback onDismiss;

  /// The answer to string  used in the sentence 'Répondre à [answerTo]".
  final String answerTo;

  CommentBottomSection({this.onPublish, this.textController, this.answerTo, this.onDismiss});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: answerTo != null
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
              child: Container(
                padding: EdgeInsets.only(bottom: 4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Body(text: 'Répondre à $answerTo', color: green),
                    GestureDetector(
                      child: Icon(Icons.clear, color: green, size: 20),
                      onTap: onDismiss,
                    ),
                  ],
                ),
              ),
              visible: answerTo != null,
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
                    onTap: onPublish,
                  ),
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
