import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mathrix_education_app/core/graphql/graphql_client.dart';
import 'package:mathrix_education_app/core/graphql/queries.dart';
import 'package:mathrix_education_app/core/misc/vibration.dart';
import 'package:mathrix_education_app/ui/dialogs/comments/comment_bottom_section.dart';
import 'package:mathrix_education_app/ui/dialogs/comments/comment_model.dart';
import 'file:///C:/Mathrix/spinnaker/lib/ui/dialogs/comments/comment.dart';
import 'package:mathrix_education_app/ui/layouts/standard_page.dart';
import 'package:mathrix_education_app/ui/texts/body_bold.dart';
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
}

class _CommentsDialogState extends State<CommentsDialog> {
  /// The selected comment id, used to outline selected comment.
  String _selectedCommentId;

  /// The answer to string.
  String _answerTo;

  final TextEditingController _textController = TextEditingController();

  /// The graphQL client.
  final _client = GraphQLConfiguration.client;

  List<CommentModel> _comments;

  @override
  void initState() {
    super.initState();
    print('zongo le JOJO');
    _comments = null;
  }

  @override
  Widget build(BuildContext context) {
    return StandardPage(
      title: 'Commentaires',
      body: QueryContainer(
        query: ReadCourseCommentsQuery(),
        variables: ReadCourseCommentsArguments(id: widget.modelId),
        builder: (ReadCourseComments$Query data) {
          if (_comments == null) {
            _comments = data.readCourse.comments
                .map((e) => CommentModel(
                      id: e.id,
                      userId: 'TODO',
                      userName: e.user.username,
                      content: e.content,
                      createdAt: e.created_at,
                    ))
                .toList();
          }

          return Column(
            children: [
              Expanded(
                child: _comments.length == 0
                    ? BodyBold(text: 'Soit le premier à poster un commentaire')
                    : ListView.builder(
                        shrinkWrap: true,
                        itemBuilder: (_, index) {
                          return InkWell(
                            onLongPress: () {
                              hapticSuccessFeedback();
                              setState(() {
                                _answerTo = _comments[index].userName;
                                _selectedCommentId = _comments[index].id;
                              });
                            },
                            child: Comment(
                              comment: _comments[index],
                              selected: _selectedCommentId == _comments[index].id,
                              onAnswer: ({String userId, String userName}) {
                                setState(() {
                                  _answerTo = userName;
                                  _selectedCommentId = _comments[index].id;
                                });
                              },
                            ),
                          );
                        },
                        itemCount: _comments.length,
                      ),
              ),
              CommentBottomSection(
                onPublish: () => createComment(context),
                textController: _textController,
                answerTo: _answerTo,
                onDismiss: () {
                  setState(() {
                    _answerTo = null;
                    _selectedCommentId = null;
                  });
                },
              ),
            ],
          );
        },
      ),
    );
  }

  createComment(BuildContext context) async {
    CreateComment$CreateComment input = CreateComment$CreateComment(
      commentable_id: widget.modelId,
      commentable_type: CreateComment$CreateComment$CommentableType.course, // TODO, adapt CommentableType
      content: _textController.text,
    );

    Map<String, dynamic> createCommentJson = CreateCommentArguments(input: input).toJson();
    createCommentJson['input'].removeWhere((key, value) => value == null);

    MutationOptions options = MutationOptions(
      documentNode: CreateCommentMutation().document,
      variables: createCommentJson,
    );
    QueryResult result = await _client.mutate(options);

    if (!result.hasException) {
      CreateComment$Mutation$Comment comment = CreateComment$Mutation.fromJson(result.data).createComment;

      setState(() {
        _textController.text = '';
        _comments.add(CommentModel(
          id: comment.id,
          content: comment.content,
          userName: comment.user.username,
          userId: 'TODO',
          createdAt: comment.created_at,
        ));
        FocusScope.of(context).unfocus();
      });
    } else {
      print(result.exception.toString());
    }
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }
}
