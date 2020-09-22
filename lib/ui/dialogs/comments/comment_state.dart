import 'package:flutter/widgets.dart';

class CommentState extends ChangeNotifier {
  String selectedCommentId;

  String selectedCommentUserName;

  answer({String userId, String userName}) {
    // _answerTo = userName;
    // _selectedCommentId = _comments[index].id;
  }

  selectComment({String commentId, String commentUserName}) {
    selectedCommentId = commentId;
    selectedCommentUserName = commentUserName;
    notifyListeners();
  }

  reset() {
    selectedCommentId = null;
    selectedCommentUserName = null;
    notifyListeners();
  }
}
