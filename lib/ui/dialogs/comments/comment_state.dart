import 'package:flutter/widgets.dart';

class CommentState extends ChangeNotifier {
  String selectedCommentId;

  String selectedCommentUserName;

  String selectedCommentUserId;

  answer({String userId, String userName}) {
    // _answerTo = userName;
    // _selectedCommentId = _comments[index].id;
  }

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
}
