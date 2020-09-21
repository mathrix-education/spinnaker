import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mathrix_education_app/core/graphql/queries.dart';
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
          // return Column(children: data.readCourse.comments.map((e) => Comment(comment: ReadCourseComments$Query$Course$Comment())).toList()

          return Stack(children: [
            Column(
              children: [Comment(), Comment(), Comment()],
            ),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Padding(
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
                              enabledBorder: _inputBorder,
                              focusedBorder: _inputBorder,
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
            ),
          ]);
        },
      ),
    );
  }

  static final _inputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(8.0),
    borderSide: const BorderSide(width: 1, color: green),
  );
}
