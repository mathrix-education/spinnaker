import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mathrix_education_app/core/graphql/graphql_client.dart';
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
  /// The text controller.
  final TextEditingController _textController = TextEditingController();

  /// The graphQL client.
  final _client = GraphQLConfiguration.client;

  /// The comment list.
  List<CommentModel> _comments;

  @override
  void initState() {
    super.initState();
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
                .map((c) => CommentModel(
                      id: c.id,
                      userId: c.user.id,
                      userName: c.user.username,
                      content: c.content,
                      createdAt: c.created_at,
                      children: c.children
                          .map((d) => CommentModel(
                              id: d.id,
                              userId: d.user.id,
                              userName: d.user.username,
                              content: d.content,
                              createdAt: d.created_at,
                              children: []))
                          .toList(),
                    ))
                .toList();
          }

          return MultiProvider(
            providers: [ChangeNotifierProvider(create: (context) => CommentState())],
            child: Column(
              children: [
                Expanded(
                  child: _comments.length == 0
                      ? BodyBold(
                          text: 'Soit le premier à poster un commentaire',
                          color: green,
                        )
                      : ListView.builder(
                          shrinkWrap: true,
                          itemBuilder: (_, index) {
                            return CommentWrapper(
                              comment: _comments[index],
                            );
                          },
                          itemCount: _comments.length,
                        ),
                ),
                CommentBottomSection(
                  onPublish: () => createComment(context),
                  textController: _textController,
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  createComment(BuildContext context) async {
    final CommentState commentState = Provider.of<CommentState>(context, listen: false);

    CreateComment$CreateComment input = CreateComment$CreateComment(
      commentable_id: widget.modelId,
      commentable_type: CreateComment$CreateComment$CommentableType.course, // TODO, adapt CommentableType
      content: _textController.text,
      parent_id: commentState.selectedCommentId,
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

        // bool isFirstLevelComment =
        //     _comments.firstWhere((element) => element.id == commentState.selectedCommentId) != null;
        //
        // if (isFirstLevelComment) {
        //   _comments.add(
        //     CommentModel(
        //       id: comment.id,
        //       content: comment.content,
        //       userName: comment.user.username,
        //       userId: comment.user.id,
        //       createdAt: comment.created_at,
        //     ),
        //   );
        // } else {}
        _insertRecursively(_comments, commentState.selectedCommentId, CommentModel(
                  id: comment.id,
                  content: comment.content,
                  userName: comment.user.username,
                  userId: comment.user.id,
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
    Provider.of<CommentState>(context, listen: false).reset();
    super.dispose();
  }

  _insertRecursively(List<CommentModel> comments, String selectedCommentId, CommentModel commentToAdd) {
    bool isAtThisLevel = comments.firstWhere((element) => element.id == selectedCommentId) != null;

    for (CommentModel comment in comments) {
      if (comment.id == selectedCommentId) {
        comments.add(commentToAdd);
        return;
      }

      if (comment.children != null) {
        _insertRecursively(comment.children, selectedCommentId, commentToAdd);
      }
    }
  }
}
