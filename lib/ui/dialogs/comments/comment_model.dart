import 'package:flutter/widgets.dart';

class CommentModel {
  final String id;

  final String content;

  final String userId;

  final String userName;

  final List<CommentModel> children;

  final DateTime createdAt;

  CommentModel({
    @required this.id,
    @required this.content,
    @required this.userId,
    @required this.userName,
    this.children,
    @required this.createdAt,
  });
}
