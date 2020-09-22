import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mathrix_education_app/ui/texts/body_bold.dart';
import 'package:mathrix_education_app/ui/variables/colors.dart';
import 'package:mathrix_education_app/ui/widgets/disallowed_glow_animation.dart';

class CommentBottomSection extends StatelessWidget {
  /// The text field controller, used to control text input value.
  final TextEditingController textController;

  final VoidCallback onPublish;

  CommentBottomSection({Key key, this.onPublish, this.textController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: ConstrainedBox(
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
    );
  }

  static final _inputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(8.0),
    borderSide: const BorderSide(width: 1, color: green),
  );
}
