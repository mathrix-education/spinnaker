import 'package:flutter/widgets.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mathrix_education_app/core/graphql/graphql_client.dart';
import 'package:mathrix_education_app/core/graphql/queries.graphql.dart';
import 'comment_model.dart';

class CommentState extends ChangeNotifier {
  String selectedCommentId;

  String selectedCommentUserName;

  String selectedCommentUserId;

  List<CommentModel> comments;

  String commentableId;

  /// The graphQL client.
  final _client = GraphQLConfiguration.client;

  selectComment({@required String commentId, @required String commentUserName, @required String commentUserId}) {
    selectedCommentId = commentId;
    selectedCommentUserName = commentUserName;
    selectedCommentUserId = commentUserId;
    notifyListeners();
  }

  /// Reset the state.
  reset() {
    selectedCommentId = null;
    selectedCommentUserName = null;
    selectedCommentUserId = null;
    notifyListeners();
  }

  /// The insert recursively modify recursively the comment tree.
  /// To generalize this function, remove the 'level' tweak, because there it only differentiate root( level0)
  /// comments and level 1 comments.
  _insertRecursively({List<CommentModel> comments, String selectedCommentId, CommentModel commentToAdd, int level}) {
    for (CommentModel comment in comments) {
      if (comment.id == selectedCommentId) {
        if (level == 0) {
          comment.children.add(commentToAdd); // Insert in child list for level 0 comments
        } else {
          comments.add(commentToAdd); // add at the end of the list for level 1 comment
        }
        return;
      }
      _insertRecursively(
        comments: comment.children,
        selectedCommentId: selectedCommentId,
        commentToAdd: commentToAdd,
        level: level + 1,
      );
    }
  }

  init({String modelId, List<ReadCourseComments$Query$Course$Comment> courseComments}) {
    commentableId = modelId;
    comments = courseComments
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

  createComment(text) async {
    CreateComment$CreateComment input = CreateComment$CreateComment(
      commentable_id: commentableId,
      commentable_type: CreateComment$CreateComment$CommentableType.course, // TODO, adapt CommentableType
      content: text,
      parent_id: selectedCommentId,
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

      CommentModel commentToAdd = CommentModel(
          id: comment.id,
          content: comment.content,
          userName: comment.user.username,
          userId: comment.user.id,
          createdAt: comment.created_at,
          children: []);

      if (selectedCommentId != null) {
        _insertRecursively(
          comments: comments,
          selectedCommentId: selectedCommentId,
          commentToAdd: commentToAdd,
          level: 0,
        );
      } else {
        comments.add(commentToAdd);
      }
      reset();
      notifyListeners();
    }
  }
}
