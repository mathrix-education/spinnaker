// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:meta/meta.dart';
import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'queries.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Login$Mutation$JWT with EquatableMixin {
  Login$Mutation$JWT();

  factory Login$Mutation$JWT.fromJson(Map<String, dynamic> json) =>
      _$Login$Mutation$JWTFromJson(json);

  String token;

  @override
  List<Object> get props => [token];
  Map<String, dynamic> toJson() => _$Login$Mutation$JWTToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Login$Mutation with EquatableMixin {
  Login$Mutation();

  factory Login$Mutation.fromJson(Map<String, dynamic> json) =>
      _$Login$MutationFromJson(json);

  Login$Mutation$JWT loginBasic;

  @override
  List<Object> get props => [loginBasic];
  Map<String, dynamic> toJson() => _$Login$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class LoginArguments extends JsonSerializable with EquatableMixin {
  LoginArguments({@required this.email, @required this.password});

  factory LoginArguments.fromJson(Map<String, dynamic> json) =>
      _$LoginArgumentsFromJson(json);

  final String email;

  final String password;

  @override
  List<Object> get props => [email, password];
  Map<String, dynamic> toJson() => _$LoginArgumentsToJson(this);
}

class LoginMutation extends GraphQLQuery<Login$Mutation, LoginArguments> {
  LoginMutation({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.mutation,
        name: NameNode(value: 'login'),
        variableDefinitions: [
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'email')),
              type: NamedTypeNode(
                  name: NameNode(value: 'String'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: []),
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'password')),
              type: NamedTypeNode(
                  name: NameNode(value: 'String'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'loginBasic'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'email'),
                    value: VariableNode(name: NameNode(value: 'email'))),
                ArgumentNode(
                    name: NameNode(value: 'password'),
                    value: VariableNode(name: NameNode(value: 'password')))
              ],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'token'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ]))
        ]))
  ]);

  @override
  final String operationName = 'login';

  @override
  final LoginArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  Login$Mutation parse(Map<String, dynamic> json) =>
      Login$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class ListCategories$Query$Category$Post with EquatableMixin {
  ListCategories$Query$Category$Post();

  factory ListCategories$Query$Category$Post.fromJson(
          Map<String, dynamic> json) =>
      _$ListCategories$Query$Category$PostFromJson(json);

  String title;

  String video_id;

  List<dynamic> content;

  @override
  List<Object> get props => [title, video_id, content];
  Map<String, dynamic> toJson() =>
      _$ListCategories$Query$Category$PostToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ListCategories$Query$Category with EquatableMixin {
  ListCategories$Query$Category();

  factory ListCategories$Query$Category.fromJson(Map<String, dynamic> json) =>
      _$ListCategories$Query$CategoryFromJson(json);

  String name;

  List<ListCategories$Query$Category$Post> posts;

  @override
  List<Object> get props => [name, posts];
  Map<String, dynamic> toJson() => _$ListCategories$Query$CategoryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ListCategories$Query with EquatableMixin {
  ListCategories$Query();

  factory ListCategories$Query.fromJson(Map<String, dynamic> json) =>
      _$ListCategories$QueryFromJson(json);

  List<ListCategories$Query$Category> listCategories;

  @override
  List<Object> get props => [listCategories];
  Map<String, dynamic> toJson() => _$ListCategories$QueryToJson(this);
}

class ListCategoriesQuery
    extends GraphQLQuery<ListCategories$Query, JsonSerializable> {
  ListCategoriesQuery();

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'ListCategories'),
        variableDefinitions: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'listCategories'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'name'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'posts'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                          name: NameNode(value: 'title'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'video_id'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'content'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null)
                    ]))
              ]))
        ]))
  ]);

  @override
  final String operationName = 'ListCategories';

  @override
  List<Object> get props => [document, operationName];
  @override
  ListCategories$Query parse(Map<String, dynamic> json) =>
      ListCategories$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class ReadChaptersInformations$Query$Chapter$Notion$Course with EquatableMixin {
  ReadChaptersInformations$Query$Chapter$Notion$Course();

  factory ReadChaptersInformations$Query$Chapter$Notion$Course.fromJson(
          Map<String, dynamic> json) =>
      _$ReadChaptersInformations$Query$Chapter$Notion$CourseFromJson(json);

  String id;

  String name;

  bool premium;

  int order;

  @override
  List<Object> get props => [id, name, premium, order];
  Map<String, dynamic> toJson() =>
      _$ReadChaptersInformations$Query$Chapter$Notion$CourseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ReadChaptersInformations$Query$Chapter$Notion$Subject
    with EquatableMixin {
  ReadChaptersInformations$Query$Chapter$Notion$Subject();

  factory ReadChaptersInformations$Query$Chapter$Notion$Subject.fromJson(
          Map<String, dynamic> json) =>
      _$ReadChaptersInformations$Query$Chapter$Notion$SubjectFromJson(json);

  String id;

  String name;

  bool premium;

  int order;

  @override
  List<Object> get props => [id, name, premium, order];
  Map<String, dynamic> toJson() =>
      _$ReadChaptersInformations$Query$Chapter$Notion$SubjectToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ReadChaptersInformations$Query$Chapter$Notion with EquatableMixin {
  ReadChaptersInformations$Query$Chapter$Notion();

  factory ReadChaptersInformations$Query$Chapter$Notion.fromJson(
          Map<String, dynamic> json) =>
      _$ReadChaptersInformations$Query$Chapter$NotionFromJson(json);

  String name;

  @JsonKey(
      unknownEnumValue: ReadChaptersInformations$Query$Chapter$Notion$NotionType
          .ARTEMIS_UNKNOWN)
  ReadChaptersInformations$Query$Chapter$Notion$NotionType type;

  List<ReadChaptersInformations$Query$Chapter$Notion$Course> courses;

  List<ReadChaptersInformations$Query$Chapter$Notion$Subject> subjects;

  @override
  List<Object> get props => [name, type, courses, subjects];
  Map<String, dynamic> toJson() =>
      _$ReadChaptersInformations$Query$Chapter$NotionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ReadChaptersInformations$Query$Chapter$Flashcard with EquatableMixin {
  ReadChaptersInformations$Query$Chapter$Flashcard();

  factory ReadChaptersInformations$Query$Chapter$Flashcard.fromJson(
          Map<String, dynamic> json) =>
      _$ReadChaptersInformations$Query$Chapter$FlashcardFromJson(json);

  String id;

  String name;

  bool premium;

  @override
  List<Object> get props => [id, name, premium];
  Map<String, dynamic> toJson() =>
      _$ReadChaptersInformations$Query$Chapter$FlashcardToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ReadChaptersInformations$Query$Chapter$Exam with EquatableMixin {
  ReadChaptersInformations$Query$Chapter$Exam();

  factory ReadChaptersInformations$Query$Chapter$Exam.fromJson(
          Map<String, dynamic> json) =>
      _$ReadChaptersInformations$Query$Chapter$ExamFromJson(json);

  String id;

  bool premium;

  bool owned;

  String name;

  int duration;

  @override
  List<Object> get props => [id, premium, owned, name, duration];
  Map<String, dynamic> toJson() =>
      _$ReadChaptersInformations$Query$Chapter$ExamToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ReadChaptersInformations$Query$Chapter with EquatableMixin {
  ReadChaptersInformations$Query$Chapter();

  factory ReadChaptersInformations$Query$Chapter.fromJson(
          Map<String, dynamic> json) =>
      _$ReadChaptersInformations$Query$ChapterFromJson(json);

  String name;

  List<ReadChaptersInformations$Query$Chapter$Notion> notions;

  List<ReadChaptersInformations$Query$Chapter$Flashcard> flashcards;

  List<ReadChaptersInformations$Query$Chapter$Exam> exams;

  @override
  List<Object> get props => [name, notions, flashcards, exams];
  Map<String, dynamic> toJson() =>
      _$ReadChaptersInformations$Query$ChapterToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ReadChaptersInformations$Query with EquatableMixin {
  ReadChaptersInformations$Query();

  factory ReadChaptersInformations$Query.fromJson(Map<String, dynamic> json) =>
      _$ReadChaptersInformations$QueryFromJson(json);

  ReadChaptersInformations$Query$Chapter readChapter;

  @override
  List<Object> get props => [readChapter];
  Map<String, dynamic> toJson() => _$ReadChaptersInformations$QueryToJson(this);
}

enum ReadChaptersInformations$Query$Chapter$Notion$NotionType {
  standard,
  summary,
  ARTEMIS_UNKNOWN,
}

@JsonSerializable(explicitToJson: true)
class ReadChaptersInformationsArguments extends JsonSerializable
    with EquatableMixin {
  ReadChaptersInformationsArguments({this.id});

  factory ReadChaptersInformationsArguments.fromJson(
          Map<String, dynamic> json) =>
      _$ReadChaptersInformationsArgumentsFromJson(json);

  final String id;

  @override
  List<Object> get props => [id];
  Map<String, dynamic> toJson() =>
      _$ReadChaptersInformationsArgumentsToJson(this);
}

class ReadChaptersInformationsQuery extends GraphQLQuery<
    ReadChaptersInformations$Query, ReadChaptersInformationsArguments> {
  ReadChaptersInformationsQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'ReadChaptersInformations'),
        variableDefinitions: [
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'id')),
              type:
                  NamedTypeNode(name: NameNode(value: 'ID'), isNonNull: false),
              defaultValue: DefaultValueNode(value: null),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'readChapter'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'id'),
                    value: VariableNode(name: NameNode(value: 'id')))
              ],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'name'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'notions'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                          name: NameNode(value: 'name'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'type'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'courses'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: SelectionSetNode(selections: [
                            FieldNode(
                                name: NameNode(value: 'id'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'name'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'premium'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'order'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null)
                          ])),
                      FieldNode(
                          name: NameNode(value: 'subjects'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: SelectionSetNode(selections: [
                            FieldNode(
                                name: NameNode(value: 'id'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'name'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'premium'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'order'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null)
                          ]))
                    ])),
                FieldNode(
                    name: NameNode(value: 'flashcards'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                          name: NameNode(value: 'id'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'name'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'premium'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null)
                    ])),
                FieldNode(
                    name: NameNode(value: 'exams'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                          name: NameNode(value: 'id'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'premium'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'owned'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'name'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'duration'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null)
                    ]))
              ]))
        ]))
  ]);

  @override
  final String operationName = 'ReadChaptersInformations';

  @override
  final ReadChaptersInformationsArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  ReadChaptersInformations$Query parse(Map<String, dynamic> json) =>
      ReadChaptersInformations$Query.fromJson(json);
}

mixin ReadCourseComments$BasicCommentMixin {
  String id;
  int score;
  DateTime created_at;
  String content;
  ReadCourseComments$Query$Comment$User user;
  List<ReadCourseComments$Query$Comment$Comment> children;
}

@JsonSerializable(explicitToJson: true)
class ReadCourseComments$Query$Course$Comment
    with EquatableMixin, ReadCourseComments$BasicCommentMixin {
  ReadCourseComments$Query$Course$Comment();

  factory ReadCourseComments$Query$Course$Comment.fromJson(
          Map<String, dynamic> json) =>
      _$ReadCourseComments$Query$Course$CommentFromJson(json);

  @override
  List<Object> get props => [id, score, created_at, content, user, children];
  Map<String, dynamic> toJson() =>
      _$ReadCourseComments$Query$Course$CommentToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ReadCourseComments$Query$Course with EquatableMixin {
  ReadCourseComments$Query$Course();

  factory ReadCourseComments$Query$Course.fromJson(Map<String, dynamic> json) =>
      _$ReadCourseComments$Query$CourseFromJson(json);

  List<ReadCourseComments$Query$Course$Comment> comments;

  @override
  List<Object> get props => [comments];
  Map<String, dynamic> toJson() =>
      _$ReadCourseComments$Query$CourseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ReadCourseComments$Query with EquatableMixin {
  ReadCourseComments$Query();

  factory ReadCourseComments$Query.fromJson(Map<String, dynamic> json) =>
      _$ReadCourseComments$QueryFromJson(json);

  ReadCourseComments$Query$Course readCourse;

  @override
  List<Object> get props => [readCourse];
  Map<String, dynamic> toJson() => _$ReadCourseComments$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ReadCourseComments$Query$Comment$User with EquatableMixin {
  ReadCourseComments$Query$Comment$User();

  factory ReadCourseComments$Query$Comment$User.fromJson(
          Map<String, dynamic> json) =>
      _$ReadCourseComments$Query$Comment$UserFromJson(json);

  String username;

  @override
  List<Object> get props => [username];
  Map<String, dynamic> toJson() =>
      _$ReadCourseComments$Query$Comment$UserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ReadCourseComments$Query$Comment$Comment$User with EquatableMixin {
  ReadCourseComments$Query$Comment$Comment$User();

  factory ReadCourseComments$Query$Comment$Comment$User.fromJson(
          Map<String, dynamic> json) =>
      _$ReadCourseComments$Query$Comment$Comment$UserFromJson(json);

  String id;

  String username;

  @override
  List<Object> get props => [id, username];
  Map<String, dynamic> toJson() =>
      _$ReadCourseComments$Query$Comment$Comment$UserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ReadCourseComments$Query$Comment$Comment$Vote$User with EquatableMixin {
  ReadCourseComments$Query$Comment$Comment$Vote$User();

  factory ReadCourseComments$Query$Comment$Comment$Vote$User.fromJson(
          Map<String, dynamic> json) =>
      _$ReadCourseComments$Query$Comment$Comment$Vote$UserFromJson(json);

  String id;

  @override
  List<Object> get props => [id];
  Map<String, dynamic> toJson() =>
      _$ReadCourseComments$Query$Comment$Comment$Vote$UserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ReadCourseComments$Query$Comment$Comment$Vote with EquatableMixin {
  ReadCourseComments$Query$Comment$Comment$Vote();

  factory ReadCourseComments$Query$Comment$Comment$Vote.fromJson(
          Map<String, dynamic> json) =>
      _$ReadCourseComments$Query$Comment$Comment$VoteFromJson(json);

  @JsonKey(
      unknownEnumValue: ReadCourseComments$Query$Comment$Comment$Vote$VoteValue
          .ARTEMIS_UNKNOWN)
  ReadCourseComments$Query$Comment$Comment$Vote$VoteValue value;

  ReadCourseComments$Query$Comment$Comment$Vote$User user;

  @override
  List<Object> get props => [value, user];
  Map<String, dynamic> toJson() =>
      _$ReadCourseComments$Query$Comment$Comment$VoteToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ReadCourseComments$Query$Comment$Comment with EquatableMixin {
  ReadCourseComments$Query$Comment$Comment();

  factory ReadCourseComments$Query$Comment$Comment.fromJson(
          Map<String, dynamic> json) =>
      _$ReadCourseComments$Query$Comment$CommentFromJson(json);

  String id;

  int score;

  DateTime created_at;

  String content;

  ReadCourseComments$Query$Comment$Comment$User user;

  ReadCourseComments$Query$Comment$Comment$Vote vote;

  @override
  List<Object> get props => [id, score, created_at, content, user, vote];
  Map<String, dynamic> toJson() =>
      _$ReadCourseComments$Query$Comment$CommentToJson(this);
}

enum ReadCourseComments$Query$Comment$Comment$Vote$VoteValue {
  down,
  up,
  ARTEMIS_UNKNOWN,
}

@JsonSerializable(explicitToJson: true)
class ReadCourseCommentsArguments extends JsonSerializable with EquatableMixin {
  ReadCourseCommentsArguments({@required this.id});

  factory ReadCourseCommentsArguments.fromJson(Map<String, dynamic> json) =>
      _$ReadCourseCommentsArgumentsFromJson(json);

  final String id;

  @override
  List<Object> get props => [id];
  Map<String, dynamic> toJson() => _$ReadCourseCommentsArgumentsToJson(this);
}

class ReadCourseCommentsQuery extends GraphQLQuery<ReadCourseComments$Query,
    ReadCourseCommentsArguments> {
  ReadCourseCommentsQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'readCourseComments'),
        variableDefinitions: [
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'id')),
              type: NamedTypeNode(name: NameNode(value: 'ID'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'readCourse'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'id'),
                    value: VariableNode(name: NameNode(value: 'id')))
              ],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'comments'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FragmentSpreadNode(
                          name: NameNode(value: 'BasicComment'), directives: [])
                    ]))
              ]))
        ])),
    FragmentDefinitionNode(
        name: NameNode(value: 'BasicComment'),
        typeCondition: TypeConditionNode(
            on: NamedTypeNode(
                name: NameNode(value: 'Comment'), isNonNull: false)),
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'id'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'score'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'created_at'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'content'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'user'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'username'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ])),
          FieldNode(
              name: NameNode(value: 'children'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'id'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'score'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'created_at'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'content'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'user'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                          name: NameNode(value: 'id'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'username'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null)
                    ])),
                FieldNode(
                    name: NameNode(value: 'vote'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                          name: NameNode(value: 'value'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'user'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: SelectionSetNode(selections: [
                            FieldNode(
                                name: NameNode(value: 'id'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null)
                          ]))
                    ]))
              ]))
        ]))
  ]);

  @override
  final String operationName = 'readCourseComments';

  @override
  final ReadCourseCommentsArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  ReadCourseComments$Query parse(Map<String, dynamic> json) =>
      ReadCourseComments$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class ReadCourse$Query$Course with EquatableMixin {
  ReadCourse$Query$Course();

  factory ReadCourse$Query$Course.fromJson(Map<String, dynamic> json) =>
      _$ReadCourse$Query$CourseFromJson(json);

  List<dynamic> content;

  @override
  List<Object> get props => [content];
  Map<String, dynamic> toJson() => _$ReadCourse$Query$CourseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ReadCourse$Query with EquatableMixin {
  ReadCourse$Query();

  factory ReadCourse$Query.fromJson(Map<String, dynamic> json) =>
      _$ReadCourse$QueryFromJson(json);

  ReadCourse$Query$Course readCourse;

  @override
  List<Object> get props => [readCourse];
  Map<String, dynamic> toJson() => _$ReadCourse$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ReadCourseArguments extends JsonSerializable with EquatableMixin {
  ReadCourseArguments({@required this.id});

  factory ReadCourseArguments.fromJson(Map<String, dynamic> json) =>
      _$ReadCourseArgumentsFromJson(json);

  final String id;

  @override
  List<Object> get props => [id];
  Map<String, dynamic> toJson() => _$ReadCourseArgumentsToJson(this);
}

class ReadCourseQuery
    extends GraphQLQuery<ReadCourse$Query, ReadCourseArguments> {
  ReadCourseQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'ReadCourse'),
        variableDefinitions: [
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'id')),
              type: NamedTypeNode(name: NameNode(value: 'ID'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'readCourse'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'id'),
                    value: VariableNode(name: NameNode(value: 'id')))
              ],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'content'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ]))
        ]))
  ]);

  @override
  final String operationName = 'ReadCourse';

  @override
  final ReadCourseArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  ReadCourse$Query parse(Map<String, dynamic> json) =>
      ReadCourse$Query.fromJson(json);
}

mixin CreateComment$BasicCommentMixin {
  String id;
  int score;
  DateTime created_at;
  String content;
  CreateComment$Mutation$Comment$User user;
  List<CreateComment$Mutation$Comment$Comment> children;
}

@JsonSerializable(explicitToJson: true)
class CreateComment$Mutation$Comment
    with EquatableMixin, CreateComment$BasicCommentMixin {
  CreateComment$Mutation$Comment();

  factory CreateComment$Mutation$Comment.fromJson(Map<String, dynamic> json) =>
      _$CreateComment$Mutation$CommentFromJson(json);

  @override
  List<Object> get props => [id, score, created_at, content, user, children];
  Map<String, dynamic> toJson() => _$CreateComment$Mutation$CommentToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateComment$Mutation with EquatableMixin {
  CreateComment$Mutation();

  factory CreateComment$Mutation.fromJson(Map<String, dynamic> json) =>
      _$CreateComment$MutationFromJson(json);

  CreateComment$Mutation$Comment createComment;

  @override
  List<Object> get props => [createComment];
  Map<String, dynamic> toJson() => _$CreateComment$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateComment$CreateComment with EquatableMixin {
  CreateComment$CreateComment(
      {@required this.commentable_id,
      @required this.commentable_type,
      @required this.content,
      this.parent_id});

  factory CreateComment$CreateComment.fromJson(Map<String, dynamic> json) =>
      _$CreateComment$CreateCommentFromJson(json);

  String commentable_id;

  @JsonKey(
      unknownEnumValue:
          CreateComment$CreateComment$CommentableType.ARTEMIS_UNKNOWN)
  CreateComment$CreateComment$CommentableType commentable_type;

  String content;

  String parent_id;

  @override
  List<Object> get props =>
      [commentable_id, commentable_type, content, parent_id];
  Map<String, dynamic> toJson() => _$CreateComment$CreateCommentToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateComment$Mutation$Comment$User with EquatableMixin {
  CreateComment$Mutation$Comment$User();

  factory CreateComment$Mutation$Comment$User.fromJson(
          Map<String, dynamic> json) =>
      _$CreateComment$Mutation$Comment$UserFromJson(json);

  String username;

  @override
  List<Object> get props => [username];
  Map<String, dynamic> toJson() =>
      _$CreateComment$Mutation$Comment$UserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateComment$Mutation$Comment$Comment$User with EquatableMixin {
  CreateComment$Mutation$Comment$Comment$User();

  factory CreateComment$Mutation$Comment$Comment$User.fromJson(
          Map<String, dynamic> json) =>
      _$CreateComment$Mutation$Comment$Comment$UserFromJson(json);

  String id;

  String username;

  @override
  List<Object> get props => [id, username];
  Map<String, dynamic> toJson() =>
      _$CreateComment$Mutation$Comment$Comment$UserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateComment$Mutation$Comment$Comment$Vote$User with EquatableMixin {
  CreateComment$Mutation$Comment$Comment$Vote$User();

  factory CreateComment$Mutation$Comment$Comment$Vote$User.fromJson(
          Map<String, dynamic> json) =>
      _$CreateComment$Mutation$Comment$Comment$Vote$UserFromJson(json);

  String id;

  @override
  List<Object> get props => [id];
  Map<String, dynamic> toJson() =>
      _$CreateComment$Mutation$Comment$Comment$Vote$UserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateComment$Mutation$Comment$Comment$Vote with EquatableMixin {
  CreateComment$Mutation$Comment$Comment$Vote();

  factory CreateComment$Mutation$Comment$Comment$Vote.fromJson(
          Map<String, dynamic> json) =>
      _$CreateComment$Mutation$Comment$Comment$VoteFromJson(json);

  @JsonKey(
      unknownEnumValue:
          CreateComment$Mutation$Comment$Comment$Vote$VoteValue.ARTEMIS_UNKNOWN)
  CreateComment$Mutation$Comment$Comment$Vote$VoteValue value;

  CreateComment$Mutation$Comment$Comment$Vote$User user;

  @override
  List<Object> get props => [value, user];
  Map<String, dynamic> toJson() =>
      _$CreateComment$Mutation$Comment$Comment$VoteToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateComment$Mutation$Comment$Comment with EquatableMixin {
  CreateComment$Mutation$Comment$Comment();

  factory CreateComment$Mutation$Comment$Comment.fromJson(
          Map<String, dynamic> json) =>
      _$CreateComment$Mutation$Comment$CommentFromJson(json);

  String id;

  int score;

  DateTime created_at;

  String content;

  CreateComment$Mutation$Comment$Comment$User user;

  CreateComment$Mutation$Comment$Comment$Vote vote;

  @override
  List<Object> get props => [id, score, created_at, content, user, vote];
  Map<String, dynamic> toJson() =>
      _$CreateComment$Mutation$Comment$CommentToJson(this);
}

enum CreateComment$CreateComment$CommentableType {
  course,
  exam,
  exercise,
  flashcard,
  ARTEMIS_UNKNOWN,
}
enum CreateComment$Mutation$Comment$Comment$Vote$VoteValue {
  down,
  up,
  ARTEMIS_UNKNOWN,
}

@JsonSerializable(explicitToJson: true)
class CreateCommentArguments extends JsonSerializable with EquatableMixin {
  CreateCommentArguments({@required this.input});

  factory CreateCommentArguments.fromJson(Map<String, dynamic> json) =>
      _$CreateCommentArgumentsFromJson(json);

  final CreateComment$CreateComment input;

  @override
  List<Object> get props => [input];
  Map<String, dynamic> toJson() => _$CreateCommentArgumentsToJson(this);
}

class CreateCommentMutation
    extends GraphQLQuery<CreateComment$Mutation, CreateCommentArguments> {
  CreateCommentMutation({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.mutation,
        name: NameNode(value: 'CreateComment'),
        variableDefinitions: [
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'input')),
              type: NamedTypeNode(
                  name: NameNode(value: 'CreateComment'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'createComment'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'input'),
                    value: VariableNode(name: NameNode(value: 'input')))
              ],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FragmentSpreadNode(
                    name: NameNode(value: 'BasicComment'), directives: [])
              ]))
        ])),
    FragmentDefinitionNode(
        name: NameNode(value: 'BasicComment'),
        typeCondition: TypeConditionNode(
            on: NamedTypeNode(
                name: NameNode(value: 'Comment'), isNonNull: false)),
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'id'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'score'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'created_at'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'content'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'user'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'username'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ])),
          FieldNode(
              name: NameNode(value: 'children'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'id'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'score'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'created_at'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'content'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'user'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                          name: NameNode(value: 'id'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'username'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null)
                    ])),
                FieldNode(
                    name: NameNode(value: 'vote'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                          name: NameNode(value: 'value'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'user'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: SelectionSetNode(selections: [
                            FieldNode(
                                name: NameNode(value: 'id'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null)
                          ]))
                    ]))
              ]))
        ]))
  ]);

  @override
  final String operationName = 'CreateComment';

  @override
  final CreateCommentArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  CreateComment$Mutation parse(Map<String, dynamic> json) =>
      CreateComment$Mutation.fromJson(json);
}

mixin DeleteComment$BasicCommentMixin {
  String id;
  int score;
  DateTime created_at;
  String content;
  DeleteComment$Mutation$Comment$User user;
  List<DeleteComment$Mutation$Comment$Comment> children;
}

@JsonSerializable(explicitToJson: true)
class DeleteComment$Mutation$Comment
    with EquatableMixin, DeleteComment$BasicCommentMixin {
  DeleteComment$Mutation$Comment();

  factory DeleteComment$Mutation$Comment.fromJson(Map<String, dynamic> json) =>
      _$DeleteComment$Mutation$CommentFromJson(json);

  @override
  List<Object> get props => [id, score, created_at, content, user, children];
  Map<String, dynamic> toJson() => _$DeleteComment$Mutation$CommentToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DeleteComment$Mutation with EquatableMixin {
  DeleteComment$Mutation();

  factory DeleteComment$Mutation.fromJson(Map<String, dynamic> json) =>
      _$DeleteComment$MutationFromJson(json);

  DeleteComment$Mutation$Comment deleteComment;

  @override
  List<Object> get props => [deleteComment];
  Map<String, dynamic> toJson() => _$DeleteComment$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DeleteComment$Mutation$Comment$User with EquatableMixin {
  DeleteComment$Mutation$Comment$User();

  factory DeleteComment$Mutation$Comment$User.fromJson(
          Map<String, dynamic> json) =>
      _$DeleteComment$Mutation$Comment$UserFromJson(json);

  String username;

  @override
  List<Object> get props => [username];
  Map<String, dynamic> toJson() =>
      _$DeleteComment$Mutation$Comment$UserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DeleteComment$Mutation$Comment$Comment$User with EquatableMixin {
  DeleteComment$Mutation$Comment$Comment$User();

  factory DeleteComment$Mutation$Comment$Comment$User.fromJson(
          Map<String, dynamic> json) =>
      _$DeleteComment$Mutation$Comment$Comment$UserFromJson(json);

  String id;

  String username;

  @override
  List<Object> get props => [id, username];
  Map<String, dynamic> toJson() =>
      _$DeleteComment$Mutation$Comment$Comment$UserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DeleteComment$Mutation$Comment$Comment$Vote$User with EquatableMixin {
  DeleteComment$Mutation$Comment$Comment$Vote$User();

  factory DeleteComment$Mutation$Comment$Comment$Vote$User.fromJson(
          Map<String, dynamic> json) =>
      _$DeleteComment$Mutation$Comment$Comment$Vote$UserFromJson(json);

  String id;

  @override
  List<Object> get props => [id];
  Map<String, dynamic> toJson() =>
      _$DeleteComment$Mutation$Comment$Comment$Vote$UserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DeleteComment$Mutation$Comment$Comment$Vote with EquatableMixin {
  DeleteComment$Mutation$Comment$Comment$Vote();

  factory DeleteComment$Mutation$Comment$Comment$Vote.fromJson(
          Map<String, dynamic> json) =>
      _$DeleteComment$Mutation$Comment$Comment$VoteFromJson(json);

  @JsonKey(
      unknownEnumValue:
          DeleteComment$Mutation$Comment$Comment$Vote$VoteValue.ARTEMIS_UNKNOWN)
  DeleteComment$Mutation$Comment$Comment$Vote$VoteValue value;

  DeleteComment$Mutation$Comment$Comment$Vote$User user;

  @override
  List<Object> get props => [value, user];
  Map<String, dynamic> toJson() =>
      _$DeleteComment$Mutation$Comment$Comment$VoteToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DeleteComment$Mutation$Comment$Comment with EquatableMixin {
  DeleteComment$Mutation$Comment$Comment();

  factory DeleteComment$Mutation$Comment$Comment.fromJson(
          Map<String, dynamic> json) =>
      _$DeleteComment$Mutation$Comment$CommentFromJson(json);

  String id;

  int score;

  DateTime created_at;

  String content;

  DeleteComment$Mutation$Comment$Comment$User user;

  DeleteComment$Mutation$Comment$Comment$Vote vote;

  @override
  List<Object> get props => [id, score, created_at, content, user, vote];
  Map<String, dynamic> toJson() =>
      _$DeleteComment$Mutation$Comment$CommentToJson(this);
}

enum DeleteComment$Mutation$Comment$Comment$Vote$VoteValue {
  down,
  up,
  ARTEMIS_UNKNOWN,
}

@JsonSerializable(explicitToJson: true)
class DeleteCommentArguments extends JsonSerializable with EquatableMixin {
  DeleteCommentArguments({@required this.id});

  factory DeleteCommentArguments.fromJson(Map<String, dynamic> json) =>
      _$DeleteCommentArgumentsFromJson(json);

  final String id;

  @override
  List<Object> get props => [id];
  Map<String, dynamic> toJson() => _$DeleteCommentArgumentsToJson(this);
}

class DeleteCommentMutation
    extends GraphQLQuery<DeleteComment$Mutation, DeleteCommentArguments> {
  DeleteCommentMutation({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.mutation,
        name: NameNode(value: 'DeleteComment'),
        variableDefinitions: [
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'id')),
              type: NamedTypeNode(name: NameNode(value: 'ID'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'deleteComment'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'id'),
                    value: VariableNode(name: NameNode(value: 'id')))
              ],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FragmentSpreadNode(
                    name: NameNode(value: 'BasicComment'), directives: [])
              ]))
        ])),
    FragmentDefinitionNode(
        name: NameNode(value: 'BasicComment'),
        typeCondition: TypeConditionNode(
            on: NamedTypeNode(
                name: NameNode(value: 'Comment'), isNonNull: false)),
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'id'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'score'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'created_at'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'content'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'user'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'username'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ])),
          FieldNode(
              name: NameNode(value: 'children'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'id'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'score'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'created_at'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'content'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'user'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                          name: NameNode(value: 'id'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'username'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null)
                    ])),
                FieldNode(
                    name: NameNode(value: 'vote'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                          name: NameNode(value: 'value'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'user'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: SelectionSetNode(selections: [
                            FieldNode(
                                name: NameNode(value: 'id'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null)
                          ]))
                    ]))
              ]))
        ]))
  ]);

  @override
  final String operationName = 'DeleteComment';

  @override
  final DeleteCommentArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  DeleteComment$Mutation parse(Map<String, dynamic> json) =>
      DeleteComment$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class ListDisciplines$Query$Discipline with EquatableMixin {
  ListDisciplines$Query$Discipline();

  factory ListDisciplines$Query$Discipline.fromJson(
          Map<String, dynamic> json) =>
      _$ListDisciplines$Query$DisciplineFromJson(json);

  String id;

  String name;

  String slug;

  @override
  List<Object> get props => [id, name, slug];
  Map<String, dynamic> toJson() =>
      _$ListDisciplines$Query$DisciplineToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ListDisciplines$Query with EquatableMixin {
  ListDisciplines$Query();

  factory ListDisciplines$Query.fromJson(Map<String, dynamic> json) =>
      _$ListDisciplines$QueryFromJson(json);

  List<ListDisciplines$Query$Discipline> listDisciplines;

  @override
  List<Object> get props => [listDisciplines];
  Map<String, dynamic> toJson() => _$ListDisciplines$QueryToJson(this);
}

class ListDisciplinesQuery
    extends GraphQLQuery<ListDisciplines$Query, JsonSerializable> {
  ListDisciplinesQuery();

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'ListDisciplines'),
        variableDefinitions: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'listDisciplines'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'id'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'name'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'slug'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ]))
        ]))
  ]);

  @override
  final String operationName = 'ListDisciplines';

  @override
  List<Object> get props => [document, operationName];
  @override
  ListDisciplines$Query parse(Map<String, dynamic> json) =>
      ListDisciplines$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class ReadExam$Query$Exam$Interaction with EquatableMixin {
  ReadExam$Query$Exam$Interaction();

  factory ReadExam$Query$Exam$Interaction.fromJson(Map<String, dynamic> json) =>
      _$ReadExam$Query$Exam$InteractionFromJson(json);

  @JsonKey(
      unknownEnumValue: ReadExam$Query$Exam$Interaction$InteractionComprehension
          .ARTEMIS_UNKNOWN)
  ReadExam$Query$Exam$Interaction$InteractionComprehension comprehension;

  int score;

  int total;

  int watchtime;

  @override
  List<Object> get props => [comprehension, score, total, watchtime];
  Map<String, dynamic> toJson() =>
      _$ReadExam$Query$Exam$InteractionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ReadExam$Query$Exam with EquatableMixin {
  ReadExam$Query$Exam();

  factory ReadExam$Query$Exam.fromJson(Map<String, dynamic> json) =>
      _$ReadExam$Query$ExamFromJson(json);

  String name;

  List<dynamic> content;

  int duration;

  ReadExam$Query$Exam$Interaction interaction;

  @override
  List<Object> get props => [name, content, duration, interaction];
  Map<String, dynamic> toJson() => _$ReadExam$Query$ExamToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ReadExam$Query with EquatableMixin {
  ReadExam$Query();

  factory ReadExam$Query.fromJson(Map<String, dynamic> json) =>
      _$ReadExam$QueryFromJson(json);

  ReadExam$Query$Exam readExam;

  @override
  List<Object> get props => [readExam];
  Map<String, dynamic> toJson() => _$ReadExam$QueryToJson(this);
}

enum ReadExam$Query$Exam$Interaction$InteractionComprehension {
  blur,
  clear,
  ARTEMIS_UNKNOWN,
}

@JsonSerializable(explicitToJson: true)
class ReadExamArguments extends JsonSerializable with EquatableMixin {
  ReadExamArguments({@required this.id});

  factory ReadExamArguments.fromJson(Map<String, dynamic> json) =>
      _$ReadExamArgumentsFromJson(json);

  final String id;

  @override
  List<Object> get props => [id];
  Map<String, dynamic> toJson() => _$ReadExamArgumentsToJson(this);
}

class ReadExamQuery extends GraphQLQuery<ReadExam$Query, ReadExamArguments> {
  ReadExamQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'ReadExam'),
        variableDefinitions: [
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'id')),
              type: NamedTypeNode(name: NameNode(value: 'ID'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'readExam'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'id'),
                    value: VariableNode(name: NameNode(value: 'id')))
              ],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'name'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'content'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'duration'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'interaction'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                          name: NameNode(value: 'comprehension'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'score'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'total'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'watchtime'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null)
                    ]))
              ]))
        ]))
  ]);

  @override
  final String operationName = 'ReadExam';

  @override
  final ReadExamArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  ReadExam$Query parse(Map<String, dynamic> json) =>
      ReadExam$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class LoginWithFacebook$Mutation$JWT with EquatableMixin {
  LoginWithFacebook$Mutation$JWT();

  factory LoginWithFacebook$Mutation$JWT.fromJson(Map<String, dynamic> json) =>
      _$LoginWithFacebook$Mutation$JWTFromJson(json);

  String token;

  @override
  List<Object> get props => [token];
  Map<String, dynamic> toJson() => _$LoginWithFacebook$Mutation$JWTToJson(this);
}

@JsonSerializable(explicitToJson: true)
class LoginWithFacebook$Mutation with EquatableMixin {
  LoginWithFacebook$Mutation();

  factory LoginWithFacebook$Mutation.fromJson(Map<String, dynamic> json) =>
      _$LoginWithFacebook$MutationFromJson(json);

  LoginWithFacebook$Mutation$JWT loginWithFacebook;

  @override
  List<Object> get props => [loginWithFacebook];
  Map<String, dynamic> toJson() => _$LoginWithFacebook$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class LoginWithFacebookArguments extends JsonSerializable with EquatableMixin {
  LoginWithFacebookArguments({@required this.accessToken});

  factory LoginWithFacebookArguments.fromJson(Map<String, dynamic> json) =>
      _$LoginWithFacebookArgumentsFromJson(json);

  final String accessToken;

  @override
  List<Object> get props => [accessToken];
  Map<String, dynamic> toJson() => _$LoginWithFacebookArgumentsToJson(this);
}

class LoginWithFacebookMutation extends GraphQLQuery<LoginWithFacebook$Mutation,
    LoginWithFacebookArguments> {
  LoginWithFacebookMutation({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.mutation,
        name: NameNode(value: 'loginWithFacebook'),
        variableDefinitions: [
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'accessToken')),
              type: NamedTypeNode(
                  name: NameNode(value: 'String'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'loginWithFacebook'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'accessToken'),
                    value: VariableNode(name: NameNode(value: 'accessToken')))
              ],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'token'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ]))
        ]))
  ]);

  @override
  final String operationName = 'loginWithFacebook';

  @override
  final LoginWithFacebookArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  LoginWithFacebook$Mutation parse(Map<String, dynamic> json) =>
      LoginWithFacebook$Mutation.fromJson(json);
}

mixin ReadFlashcard$BasicInteractionMixin {
  @JsonKey(
      unknownEnumValue: ReadFlashcard$Query$Interaction$InteractionComprehension
          .ARTEMIS_UNKNOWN)
  ReadFlashcard$Query$Interaction$InteractionComprehension comprehension;
  int interactable_id;
  @JsonKey(
      unknownEnumValue:
          ReadFlashcard$Query$Interaction$InteractionType.ARTEMIS_UNKNOWN)
  ReadFlashcard$Query$Interaction$InteractionType interactable_type;
  int score;
  int total;
  int user_id;
  int watchtime;
}

@JsonSerializable(explicitToJson: true)
class ReadFlashcard$Query$Flashcard$FlashcardContent with EquatableMixin {
  ReadFlashcard$Query$Flashcard$FlashcardContent();

  factory ReadFlashcard$Query$Flashcard$FlashcardContent.fromJson(
          Map<String, dynamic> json) =>
      _$ReadFlashcard$Query$Flashcard$FlashcardContentFromJson(json);

  List<dynamic> front;

  List<dynamic> back;

  @override
  List<Object> get props => [front, back];
  Map<String, dynamic> toJson() =>
      _$ReadFlashcard$Query$Flashcard$FlashcardContentToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ReadFlashcard$Query$Flashcard$Interaction
    with EquatableMixin, ReadFlashcard$BasicInteractionMixin {
  ReadFlashcard$Query$Flashcard$Interaction();

  factory ReadFlashcard$Query$Flashcard$Interaction.fromJson(
          Map<String, dynamic> json) =>
      _$ReadFlashcard$Query$Flashcard$InteractionFromJson(json);

  @override
  List<Object> get props => [
        comprehension,
        interactable_id,
        interactable_type,
        score,
        total,
        user_id,
        watchtime
      ];
  Map<String, dynamic> toJson() =>
      _$ReadFlashcard$Query$Flashcard$InteractionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ReadFlashcard$Query$Flashcard with EquatableMixin {
  ReadFlashcard$Query$Flashcard();

  factory ReadFlashcard$Query$Flashcard.fromJson(Map<String, dynamic> json) =>
      _$ReadFlashcard$Query$FlashcardFromJson(json);

  List<ReadFlashcard$Query$Flashcard$FlashcardContent> content;

  ReadFlashcard$Query$Flashcard$Interaction interaction;

  @override
  List<Object> get props => [content, interaction];
  Map<String, dynamic> toJson() => _$ReadFlashcard$Query$FlashcardToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ReadFlashcard$Query with EquatableMixin {
  ReadFlashcard$Query();

  factory ReadFlashcard$Query.fromJson(Map<String, dynamic> json) =>
      _$ReadFlashcard$QueryFromJson(json);

  ReadFlashcard$Query$Flashcard readFlashcard;

  @override
  List<Object> get props => [readFlashcard];
  Map<String, dynamic> toJson() => _$ReadFlashcard$QueryToJson(this);
}

enum ReadFlashcard$Query$Interaction$InteractionComprehension {
  blur,
  clear,
  ARTEMIS_UNKNOWN,
}
enum ReadFlashcard$Query$Interaction$InteractionType {
  course,
  exam,
  exercise,
  flashcard,
  subject,
  ARTEMIS_UNKNOWN,
}

@JsonSerializable(explicitToJson: true)
class ReadFlashcardArguments extends JsonSerializable with EquatableMixin {
  ReadFlashcardArguments({@required this.id});

  factory ReadFlashcardArguments.fromJson(Map<String, dynamic> json) =>
      _$ReadFlashcardArgumentsFromJson(json);

  final String id;

  @override
  List<Object> get props => [id];
  Map<String, dynamic> toJson() => _$ReadFlashcardArgumentsToJson(this);
}

class ReadFlashcardQuery
    extends GraphQLQuery<ReadFlashcard$Query, ReadFlashcardArguments> {
  ReadFlashcardQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'ReadFlashcard'),
        variableDefinitions: [
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'id')),
              type: NamedTypeNode(name: NameNode(value: 'ID'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'readFlashcard'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'id'),
                    value: VariableNode(name: NameNode(value: 'id')))
              ],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'content'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                          name: NameNode(value: 'front'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'back'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null)
                    ])),
                FieldNode(
                    name: NameNode(value: 'interaction'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FragmentSpreadNode(
                          name: NameNode(value: 'BasicInteraction'),
                          directives: [])
                    ]))
              ]))
        ])),
    FragmentDefinitionNode(
        name: NameNode(value: 'BasicInteraction'),
        typeCondition: TypeConditionNode(
            on: NamedTypeNode(
                name: NameNode(value: 'Interaction'), isNonNull: false)),
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'comprehension'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'interactable_id'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'interactable_type'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'score'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'total'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'user_id'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'watchtime'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null)
        ]))
  ]);

  @override
  final String operationName = 'ReadFlashcard';

  @override
  final ReadFlashcardArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  ReadFlashcard$Query parse(Map<String, dynamic> json) =>
      ReadFlashcard$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class LoginWithGoogle$Mutation$JWT with EquatableMixin {
  LoginWithGoogle$Mutation$JWT();

  factory LoginWithGoogle$Mutation$JWT.fromJson(Map<String, dynamic> json) =>
      _$LoginWithGoogle$Mutation$JWTFromJson(json);

  String token;

  @override
  List<Object> get props => [token];
  Map<String, dynamic> toJson() => _$LoginWithGoogle$Mutation$JWTToJson(this);
}

@JsonSerializable(explicitToJson: true)
class LoginWithGoogle$Mutation with EquatableMixin {
  LoginWithGoogle$Mutation();

  factory LoginWithGoogle$Mutation.fromJson(Map<String, dynamic> json) =>
      _$LoginWithGoogle$MutationFromJson(json);

  LoginWithGoogle$Mutation$JWT loginWithGoogle;

  @override
  List<Object> get props => [loginWithGoogle];
  Map<String, dynamic> toJson() => _$LoginWithGoogle$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class LoginWithGoogleArguments extends JsonSerializable with EquatableMixin {
  LoginWithGoogleArguments({@required this.accessToken});

  factory LoginWithGoogleArguments.fromJson(Map<String, dynamic> json) =>
      _$LoginWithGoogleArgumentsFromJson(json);

  final String accessToken;

  @override
  List<Object> get props => [accessToken];
  Map<String, dynamic> toJson() => _$LoginWithGoogleArgumentsToJson(this);
}

class LoginWithGoogleMutation
    extends GraphQLQuery<LoginWithGoogle$Mutation, LoginWithGoogleArguments> {
  LoginWithGoogleMutation({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.mutation,
        name: NameNode(value: 'loginWithGoogle'),
        variableDefinitions: [
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'accessToken')),
              type: NamedTypeNode(
                  name: NameNode(value: 'String'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'loginWithGoogle'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'accessToken'),
                    value: VariableNode(name: NameNode(value: 'accessToken')))
              ],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'token'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ]))
        ]))
  ]);

  @override
  final String operationName = 'loginWithGoogle';

  @override
  final LoginWithGoogleArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  LoginWithGoogle$Mutation parse(Map<String, dynamic> json) =>
      LoginWithGoogle$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class ListGrades$Query$Grade with EquatableMixin {
  ListGrades$Query$Grade();

  factory ListGrades$Query$Grade.fromJson(Map<String, dynamic> json) =>
      _$ListGrades$Query$GradeFromJson(json);

  String id;

  String name;

  String slug;

  @override
  List<Object> get props => [id, name, slug];
  Map<String, dynamic> toJson() => _$ListGrades$Query$GradeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ListGrades$Query with EquatableMixin {
  ListGrades$Query();

  factory ListGrades$Query.fromJson(Map<String, dynamic> json) =>
      _$ListGrades$QueryFromJson(json);

  List<ListGrades$Query$Grade> listGrades;

  @override
  List<Object> get props => [listGrades];
  Map<String, dynamic> toJson() => _$ListGrades$QueryToJson(this);
}

class ListGradesQuery extends GraphQLQuery<ListGrades$Query, JsonSerializable> {
  ListGradesQuery();

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'ListGrades'),
        variableDefinitions: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'listGrades'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'id'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'name'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'slug'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ]))
        ]))
  ]);

  @override
  final String operationName = 'ListGrades';

  @override
  List<Object> get props => [document, operationName];
  @override
  ListGrades$Query parse(Map<String, dynamic> json) =>
      ListGrades$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class Interact$Mutation with EquatableMixin {
  Interact$Mutation();

  factory Interact$Mutation.fromJson(Map<String, dynamic> json) =>
      _$Interact$MutationFromJson(json);

  bool interact;

  @override
  List<Object> get props => [interact];
  Map<String, dynamic> toJson() => _$Interact$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Interact$CreateInteraction with EquatableMixin {
  Interact$CreateInteraction(
      {this.comprehension,
      @required this.interactable_id,
      @required this.interactable_type,
      this.score,
      this.total,
      this.watchtime});

  factory Interact$CreateInteraction.fromJson(Map<String, dynamic> json) =>
      _$Interact$CreateInteractionFromJson(json);

  @JsonKey(
      unknownEnumValue:
          Interact$CreateInteraction$InteractionComprehension.ARTEMIS_UNKNOWN)
  Interact$CreateInteraction$InteractionComprehension comprehension;

  String interactable_id;

  @JsonKey(
      unknownEnumValue:
          Interact$CreateInteraction$InteractionType.ARTEMIS_UNKNOWN)
  Interact$CreateInteraction$InteractionType interactable_type;

  int score;

  int total;

  int watchtime;

  @override
  List<Object> get props => [
        comprehension,
        interactable_id,
        interactable_type,
        score,
        total,
        watchtime
      ];
  Map<String, dynamic> toJson() => _$Interact$CreateInteractionToJson(this);
}

enum Interact$CreateInteraction$InteractionComprehension {
  blur,
  clear,
  ARTEMIS_UNKNOWN,
}
enum Interact$CreateInteraction$InteractionType {
  course,
  exam,
  exercise,
  flashcard,
  subject,
  ARTEMIS_UNKNOWN,
}

@JsonSerializable(explicitToJson: true)
class InteractArguments extends JsonSerializable with EquatableMixin {
  InteractArguments({@required this.input});

  factory InteractArguments.fromJson(Map<String, dynamic> json) =>
      _$InteractArgumentsFromJson(json);

  final Interact$CreateInteraction input;

  @override
  List<Object> get props => [input];
  Map<String, dynamic> toJson() => _$InteractArgumentsToJson(this);
}

class InteractMutation
    extends GraphQLQuery<Interact$Mutation, InteractArguments> {
  InteractMutation({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.mutation,
        name: NameNode(value: 'interact'),
        variableDefinitions: [
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'input')),
              type: NamedTypeNode(
                  name: NameNode(value: 'CreateInteraction'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'interact'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'input'),
                    value: VariableNode(name: NameNode(value: 'input')))
              ],
              directives: [],
              selectionSet: null)
        ]))
  ]);

  @override
  final String operationName = 'interact';

  @override
  final InteractArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  Interact$Mutation parse(Map<String, dynamic> json) =>
      Interact$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class ReadLesson$Query$Lesson with EquatableMixin {
  ReadLesson$Query$Lesson();

  factory ReadLesson$Query$Lesson.fromJson(Map<String, dynamic> json) =>
      _$ReadLesson$Query$LessonFromJson(json);

  List<dynamic> content;

  @override
  List<Object> get props => [content];
  Map<String, dynamic> toJson() => _$ReadLesson$Query$LessonToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ReadLesson$Query with EquatableMixin {
  ReadLesson$Query();

  factory ReadLesson$Query.fromJson(Map<String, dynamic> json) =>
      _$ReadLesson$QueryFromJson(json);

  ReadLesson$Query$Lesson readLesson;

  @override
  List<Object> get props => [readLesson];
  Map<String, dynamic> toJson() => _$ReadLesson$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ReadLessonArguments extends JsonSerializable with EquatableMixin {
  ReadLessonArguments({@required this.id});

  factory ReadLessonArguments.fromJson(Map<String, dynamic> json) =>
      _$ReadLessonArgumentsFromJson(json);

  final String id;

  @override
  List<Object> get props => [id];
  Map<String, dynamic> toJson() => _$ReadLessonArgumentsToJson(this);
}

class ReadLessonQuery
    extends GraphQLQuery<ReadLesson$Query, ReadLessonArguments> {
  ReadLessonQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'ReadLesson'),
        variableDefinitions: [
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'id')),
              type: NamedTypeNode(name: NameNode(value: 'ID'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'readLesson'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'id'),
                    value: VariableNode(name: NameNode(value: 'id')))
              ],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'content'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ]))
        ]))
  ]);

  @override
  final String operationName = 'ReadLesson';

  @override
  final ReadLessonArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  ReadLesson$Query parse(Map<String, dynamic> json) =>
      ReadLesson$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class ReadTraining$Query$Training$Section$Lesson with EquatableMixin {
  ReadTraining$Query$Training$Section$Lesson();

  factory ReadTraining$Query$Training$Section$Lesson.fromJson(
          Map<String, dynamic> json) =>
      _$ReadTraining$Query$Training$Section$LessonFromJson(json);

  String name;

  String id;

  @override
  List<Object> get props => [name, id];
  Map<String, dynamic> toJson() =>
      _$ReadTraining$Query$Training$Section$LessonToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ReadTraining$Query$Training$Section with EquatableMixin {
  ReadTraining$Query$Training$Section();

  factory ReadTraining$Query$Training$Section.fromJson(
          Map<String, dynamic> json) =>
      _$ReadTraining$Query$Training$SectionFromJson(json);

  String name;

  List<ReadTraining$Query$Training$Section$Lesson> lessons;

  @override
  List<Object> get props => [name, lessons];
  Map<String, dynamic> toJson() =>
      _$ReadTraining$Query$Training$SectionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ReadTraining$Query$Training with EquatableMixin {
  ReadTraining$Query$Training();

  factory ReadTraining$Query$Training.fromJson(Map<String, dynamic> json) =>
      _$ReadTraining$Query$TrainingFromJson(json);

  String name;

  List<ReadTraining$Query$Training$Section> sections;

  @override
  List<Object> get props => [name, sections];
  Map<String, dynamic> toJson() => _$ReadTraining$Query$TrainingToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ReadTraining$Query with EquatableMixin {
  ReadTraining$Query();

  factory ReadTraining$Query.fromJson(Map<String, dynamic> json) =>
      _$ReadTraining$QueryFromJson(json);

  ReadTraining$Query$Training readTraining;

  @override
  List<Object> get props => [readTraining];
  Map<String, dynamic> toJson() => _$ReadTraining$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ReadTrainingArguments extends JsonSerializable with EquatableMixin {
  ReadTrainingArguments({@required this.id});

  factory ReadTrainingArguments.fromJson(Map<String, dynamic> json) =>
      _$ReadTrainingArgumentsFromJson(json);

  final String id;

  @override
  List<Object> get props => [id];
  Map<String, dynamic> toJson() => _$ReadTrainingArgumentsToJson(this);
}

class ReadTrainingQuery
    extends GraphQLQuery<ReadTraining$Query, ReadTrainingArguments> {
  ReadTrainingQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'ReadTraining'),
        variableDefinitions: [
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'id')),
              type: NamedTypeNode(name: NameNode(value: 'ID'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'readTraining'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'id'),
                    value: VariableNode(name: NameNode(value: 'id')))
              ],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'name'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'sections'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                          name: NameNode(value: 'name'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'lessons'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: SelectionSetNode(selections: [
                            FieldNode(
                                name: NameNode(value: 'name'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'id'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null)
                          ]))
                    ]))
              ]))
        ]))
  ]);

  @override
  final String operationName = 'ReadTraining';

  @override
  final ReadTrainingArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  ReadTraining$Query parse(Map<String, dynamic> json) =>
      ReadTraining$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class ReadSubject$Query$Subject$Exercise$Interaction with EquatableMixin {
  ReadSubject$Query$Subject$Exercise$Interaction();

  factory ReadSubject$Query$Subject$Exercise$Interaction.fromJson(
          Map<String, dynamic> json) =>
      _$ReadSubject$Query$Subject$Exercise$InteractionFromJson(json);

  int score;

  int total;

  @override
  List<Object> get props => [score, total];
  Map<String, dynamic> toJson() =>
      _$ReadSubject$Query$Subject$Exercise$InteractionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ReadSubject$Query$Subject$Exercise with EquatableMixin {
  ReadSubject$Query$Subject$Exercise();

  factory ReadSubject$Query$Subject$Exercise.fromJson(
          Map<String, dynamic> json) =>
      _$ReadSubject$Query$Subject$ExerciseFromJson(json);

  List<dynamic> content;

  ReadSubject$Query$Subject$Exercise$Interaction interaction;

  @override
  List<Object> get props => [content, interaction];
  Map<String, dynamic> toJson() =>
      _$ReadSubject$Query$Subject$ExerciseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ReadSubject$Query$Subject with EquatableMixin {
  ReadSubject$Query$Subject();

  factory ReadSubject$Query$Subject.fromJson(Map<String, dynamic> json) =>
      _$ReadSubject$Query$SubjectFromJson(json);

  List<ReadSubject$Query$Subject$Exercise> exercises;

  @override
  List<Object> get props => [exercises];
  Map<String, dynamic> toJson() => _$ReadSubject$Query$SubjectToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ReadSubject$Query with EquatableMixin {
  ReadSubject$Query();

  factory ReadSubject$Query.fromJson(Map<String, dynamic> json) =>
      _$ReadSubject$QueryFromJson(json);

  ReadSubject$Query$Subject readSubject;

  @override
  List<Object> get props => [readSubject];
  Map<String, dynamic> toJson() => _$ReadSubject$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ReadSubjectArguments extends JsonSerializable with EquatableMixin {
  ReadSubjectArguments({@required this.id});

  factory ReadSubjectArguments.fromJson(Map<String, dynamic> json) =>
      _$ReadSubjectArgumentsFromJson(json);

  final String id;

  @override
  List<Object> get props => [id];
  Map<String, dynamic> toJson() => _$ReadSubjectArgumentsToJson(this);
}

class ReadSubjectQuery
    extends GraphQLQuery<ReadSubject$Query, ReadSubjectArguments> {
  ReadSubjectQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'readSubject'),
        variableDefinitions: [
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'id')),
              type: NamedTypeNode(name: NameNode(value: 'ID'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'readSubject'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'id'),
                    value: VariableNode(name: NameNode(value: 'id')))
              ],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'exercises'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                          name: NameNode(value: 'content'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'interaction'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: SelectionSetNode(selections: [
                            FieldNode(
                                name: NameNode(value: 'score'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'total'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null)
                          ]))
                    ]))
              ]))
        ]))
  ]);

  @override
  final String operationName = 'readSubject';

  @override
  final ReadSubjectArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  ReadSubject$Query parse(Map<String, dynamic> json) =>
      ReadSubject$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class ListThemesChaptersFromDisciplines$Query$Theme$Chapter
    with EquatableMixin {
  ListThemesChaptersFromDisciplines$Query$Theme$Chapter();

  factory ListThemesChaptersFromDisciplines$Query$Theme$Chapter.fromJson(
          Map<String, dynamic> json) =>
      _$ListThemesChaptersFromDisciplines$Query$Theme$ChapterFromJson(json);

  String id;

  String name;

  @override
  List<Object> get props => [id, name];
  Map<String, dynamic> toJson() =>
      _$ListThemesChaptersFromDisciplines$Query$Theme$ChapterToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ListThemesChaptersFromDisciplines$Query$Theme with EquatableMixin {
  ListThemesChaptersFromDisciplines$Query$Theme();

  factory ListThemesChaptersFromDisciplines$Query$Theme.fromJson(
          Map<String, dynamic> json) =>
      _$ListThemesChaptersFromDisciplines$Query$ThemeFromJson(json);

  String name;

  List<ListThemesChaptersFromDisciplines$Query$Theme$Chapter> chapters;

  @override
  List<Object> get props => [name, chapters];
  Map<String, dynamic> toJson() =>
      _$ListThemesChaptersFromDisciplines$Query$ThemeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ListThemesChaptersFromDisciplines$Query with EquatableMixin {
  ListThemesChaptersFromDisciplines$Query();

  factory ListThemesChaptersFromDisciplines$Query.fromJson(
          Map<String, dynamic> json) =>
      _$ListThemesChaptersFromDisciplines$QueryFromJson(json);

  List<ListThemesChaptersFromDisciplines$Query$Theme> listThemes;

  @override
  List<Object> get props => [listThemes];
  Map<String, dynamic> toJson() =>
      _$ListThemesChaptersFromDisciplines$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ListThemesChaptersFromDisciplinesArguments extends JsonSerializable
    with EquatableMixin {
  ListThemesChaptersFromDisciplinesArguments(
      {@required this.gradeId, @required this.disciplineId});

  factory ListThemesChaptersFromDisciplinesArguments.fromJson(
          Map<String, dynamic> json) =>
      _$ListThemesChaptersFromDisciplinesArgumentsFromJson(json);

  final String gradeId;

  final String disciplineId;

  @override
  List<Object> get props => [gradeId, disciplineId];
  Map<String, dynamic> toJson() =>
      _$ListThemesChaptersFromDisciplinesArgumentsToJson(this);
}

class ListThemesChaptersFromDisciplinesQuery extends GraphQLQuery<
    ListThemesChaptersFromDisciplines$Query,
    ListThemesChaptersFromDisciplinesArguments> {
  ListThemesChaptersFromDisciplinesQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'ListThemesChaptersFromDisciplines'),
        variableDefinitions: [
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'gradeId')),
              type: NamedTypeNode(name: NameNode(value: 'ID'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: []),
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'disciplineId')),
              type: NamedTypeNode(name: NameNode(value: 'ID'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'listThemes'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'gradeId'),
                    value: VariableNode(name: NameNode(value: 'gradeId'))),
                ArgumentNode(
                    name: NameNode(value: 'disciplineId'),
                    value: VariableNode(name: NameNode(value: 'disciplineId')))
              ],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'name'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'chapters'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                          name: NameNode(value: 'id'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'name'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null)
                    ]))
              ]))
        ]))
  ]);

  @override
  final String operationName = 'ListThemesChaptersFromDisciplines';

  @override
  final ListThemesChaptersFromDisciplinesArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  ListThemesChaptersFromDisciplines$Query parse(Map<String, dynamic> json) =>
      ListThemesChaptersFromDisciplines$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class ListTrainings$Query$Training$Grade with EquatableMixin {
  ListTrainings$Query$Training$Grade();

  factory ListTrainings$Query$Training$Grade.fromJson(
          Map<String, dynamic> json) =>
      _$ListTrainings$Query$Training$GradeFromJson(json);

  String name;

  @override
  List<Object> get props => [name];
  Map<String, dynamic> toJson() =>
      _$ListTrainings$Query$Training$GradeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ListTrainings$Query$Training with EquatableMixin {
  ListTrainings$Query$Training();

  factory ListTrainings$Query$Training.fromJson(Map<String, dynamic> json) =>
      _$ListTrainings$Query$TrainingFromJson(json);

  String id;

  String name;

  bool available;

  bool owned;

  int duration;

  List<ListTrainings$Query$Training$Grade> grades;

  @override
  List<Object> get props => [id, name, available, owned, duration, grades];
  Map<String, dynamic> toJson() => _$ListTrainings$Query$TrainingToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ListTrainings$Query with EquatableMixin {
  ListTrainings$Query();

  factory ListTrainings$Query.fromJson(Map<String, dynamic> json) =>
      _$ListTrainings$QueryFromJson(json);

  List<ListTrainings$Query$Training> listTrainings;

  @override
  List<Object> get props => [listTrainings];
  Map<String, dynamic> toJson() => _$ListTrainings$QueryToJson(this);
}

class ListTrainingsQuery
    extends GraphQLQuery<ListTrainings$Query, JsonSerializable> {
  ListTrainingsQuery();

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'ListTrainings'),
        variableDefinitions: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'listTrainings'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'id'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'name'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'available'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'owned'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'duration'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'grades'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                          name: NameNode(value: 'name'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null)
                    ]))
              ]))
        ]))
  ]);

  @override
  final String operationName = 'ListTrainings';

  @override
  List<Object> get props => [document, operationName];
  @override
  ListTrainings$Query parse(Map<String, dynamic> json) =>
      ListTrainings$Query.fromJson(json);
}

mixin UpdateComment$BasicCommentMixin {
  String id;
  int score;
  DateTime created_at;
  String content;
  UpdateComment$Mutation$Comment$User user;
  List<UpdateComment$Mutation$Comment$Comment> children;
}

@JsonSerializable(explicitToJson: true)
class UpdateComment$Mutation$Comment
    with EquatableMixin, UpdateComment$BasicCommentMixin {
  UpdateComment$Mutation$Comment();

  factory UpdateComment$Mutation$Comment.fromJson(Map<String, dynamic> json) =>
      _$UpdateComment$Mutation$CommentFromJson(json);

  @override
  List<Object> get props => [id, score, created_at, content, user, children];
  Map<String, dynamic> toJson() => _$UpdateComment$Mutation$CommentToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpdateComment$Mutation with EquatableMixin {
  UpdateComment$Mutation();

  factory UpdateComment$Mutation.fromJson(Map<String, dynamic> json) =>
      _$UpdateComment$MutationFromJson(json);

  UpdateComment$Mutation$Comment updateComment;

  @override
  List<Object> get props => [updateComment];
  Map<String, dynamic> toJson() => _$UpdateComment$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpdateComment$UpdateComment with EquatableMixin {
  UpdateComment$UpdateComment({@required this.content, @required this.id});

  factory UpdateComment$UpdateComment.fromJson(Map<String, dynamic> json) =>
      _$UpdateComment$UpdateCommentFromJson(json);

  String content;

  String id;

  @override
  List<Object> get props => [content, id];
  Map<String, dynamic> toJson() => _$UpdateComment$UpdateCommentToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpdateComment$Mutation$Comment$User with EquatableMixin {
  UpdateComment$Mutation$Comment$User();

  factory UpdateComment$Mutation$Comment$User.fromJson(
          Map<String, dynamic> json) =>
      _$UpdateComment$Mutation$Comment$UserFromJson(json);

  String username;

  @override
  List<Object> get props => [username];
  Map<String, dynamic> toJson() =>
      _$UpdateComment$Mutation$Comment$UserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpdateComment$Mutation$Comment$Comment$User with EquatableMixin {
  UpdateComment$Mutation$Comment$Comment$User();

  factory UpdateComment$Mutation$Comment$Comment$User.fromJson(
          Map<String, dynamic> json) =>
      _$UpdateComment$Mutation$Comment$Comment$UserFromJson(json);

  String id;

  String username;

  @override
  List<Object> get props => [id, username];
  Map<String, dynamic> toJson() =>
      _$UpdateComment$Mutation$Comment$Comment$UserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpdateComment$Mutation$Comment$Comment$Vote$User with EquatableMixin {
  UpdateComment$Mutation$Comment$Comment$Vote$User();

  factory UpdateComment$Mutation$Comment$Comment$Vote$User.fromJson(
          Map<String, dynamic> json) =>
      _$UpdateComment$Mutation$Comment$Comment$Vote$UserFromJson(json);

  String id;

  @override
  List<Object> get props => [id];
  Map<String, dynamic> toJson() =>
      _$UpdateComment$Mutation$Comment$Comment$Vote$UserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpdateComment$Mutation$Comment$Comment$Vote with EquatableMixin {
  UpdateComment$Mutation$Comment$Comment$Vote();

  factory UpdateComment$Mutation$Comment$Comment$Vote.fromJson(
          Map<String, dynamic> json) =>
      _$UpdateComment$Mutation$Comment$Comment$VoteFromJson(json);

  @JsonKey(
      unknownEnumValue:
          UpdateComment$Mutation$Comment$Comment$Vote$VoteValue.ARTEMIS_UNKNOWN)
  UpdateComment$Mutation$Comment$Comment$Vote$VoteValue value;

  UpdateComment$Mutation$Comment$Comment$Vote$User user;

  @override
  List<Object> get props => [value, user];
  Map<String, dynamic> toJson() =>
      _$UpdateComment$Mutation$Comment$Comment$VoteToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpdateComment$Mutation$Comment$Comment with EquatableMixin {
  UpdateComment$Mutation$Comment$Comment();

  factory UpdateComment$Mutation$Comment$Comment.fromJson(
          Map<String, dynamic> json) =>
      _$UpdateComment$Mutation$Comment$CommentFromJson(json);

  String id;

  int score;

  DateTime created_at;

  String content;

  UpdateComment$Mutation$Comment$Comment$User user;

  UpdateComment$Mutation$Comment$Comment$Vote vote;

  @override
  List<Object> get props => [id, score, created_at, content, user, vote];
  Map<String, dynamic> toJson() =>
      _$UpdateComment$Mutation$Comment$CommentToJson(this);
}

enum UpdateComment$Mutation$Comment$Comment$Vote$VoteValue {
  down,
  up,
  ARTEMIS_UNKNOWN,
}

@JsonSerializable(explicitToJson: true)
class UpdateCommentArguments extends JsonSerializable with EquatableMixin {
  UpdateCommentArguments({@required this.input});

  factory UpdateCommentArguments.fromJson(Map<String, dynamic> json) =>
      _$UpdateCommentArgumentsFromJson(json);

  final UpdateComment$UpdateComment input;

  @override
  List<Object> get props => [input];
  Map<String, dynamic> toJson() => _$UpdateCommentArgumentsToJson(this);
}

class UpdateCommentMutation
    extends GraphQLQuery<UpdateComment$Mutation, UpdateCommentArguments> {
  UpdateCommentMutation({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.mutation,
        name: NameNode(value: 'UpdateComment'),
        variableDefinitions: [
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'input')),
              type: NamedTypeNode(
                  name: NameNode(value: 'UpdateComment'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'updateComment'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'input'),
                    value: VariableNode(name: NameNode(value: 'input')))
              ],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FragmentSpreadNode(
                    name: NameNode(value: 'BasicComment'), directives: [])
              ]))
        ])),
    FragmentDefinitionNode(
        name: NameNode(value: 'BasicComment'),
        typeCondition: TypeConditionNode(
            on: NamedTypeNode(
                name: NameNode(value: 'Comment'), isNonNull: false)),
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'id'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'score'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'created_at'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'content'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'user'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'username'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ])),
          FieldNode(
              name: NameNode(value: 'children'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'id'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'score'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'created_at'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'content'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'user'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                          name: NameNode(value: 'id'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'username'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null)
                    ])),
                FieldNode(
                    name: NameNode(value: 'vote'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                          name: NameNode(value: 'value'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'user'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: SelectionSetNode(selections: [
                            FieldNode(
                                name: NameNode(value: 'id'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null)
                          ]))
                    ]))
              ]))
        ]))
  ]);

  @override
  final String operationName = 'UpdateComment';

  @override
  final UpdateCommentArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  UpdateComment$Mutation parse(Map<String, dynamic> json) =>
      UpdateComment$Mutation.fromJson(json);
}

mixin UpdateMe$BasicUserMixin {
  String id;
  String username;
  String firstname;
  String lastname;
  String email;
  DateTime created_at;
  DateTime updated_at;
  bool premium;
  bool premium_bypass;
  List<UpdateMe$Mutation$User$Training> trainings;
  UpdateMe$Mutation$User$Grade grade;
}

@JsonSerializable(explicitToJson: true)
class UpdateMe$Mutation$User with EquatableMixin, UpdateMe$BasicUserMixin {
  UpdateMe$Mutation$User();

  factory UpdateMe$Mutation$User.fromJson(Map<String, dynamic> json) =>
      _$UpdateMe$Mutation$UserFromJson(json);

  @override
  List<Object> get props => [
        id,
        username,
        firstname,
        lastname,
        email,
        created_at,
        updated_at,
        premium,
        premium_bypass,
        trainings,
        grade
      ];
  Map<String, dynamic> toJson() => _$UpdateMe$Mutation$UserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpdateMe$Mutation with EquatableMixin {
  UpdateMe$Mutation();

  factory UpdateMe$Mutation.fromJson(Map<String, dynamic> json) =>
      _$UpdateMe$MutationFromJson(json);

  UpdateMe$Mutation$User updateMe;

  @override
  List<Object> get props => [updateMe];
  Map<String, dynamic> toJson() => _$UpdateMe$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpdateMe$UpdateMe with EquatableMixin {
  UpdateMe$UpdateMe(
      {this.email,
      this.firstname,
      this.grade_id,
      this.lastname,
      this.password,
      this.username});

  factory UpdateMe$UpdateMe.fromJson(Map<String, dynamic> json) =>
      _$UpdateMe$UpdateMeFromJson(json);

  String email;

  String firstname;

  String grade_id;

  String lastname;

  String password;

  String username;

  @override
  List<Object> get props =>
      [email, firstname, grade_id, lastname, password, username];
  Map<String, dynamic> toJson() => _$UpdateMe$UpdateMeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpdateMe$Mutation$User$Training with EquatableMixin {
  UpdateMe$Mutation$User$Training();

  factory UpdateMe$Mutation$User$Training.fromJson(Map<String, dynamic> json) =>
      _$UpdateMe$Mutation$User$TrainingFromJson(json);

  String id;

  @override
  List<Object> get props => [id];
  Map<String, dynamic> toJson() =>
      _$UpdateMe$Mutation$User$TrainingToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpdateMe$Mutation$User$Grade$Discipline with EquatableMixin {
  UpdateMe$Mutation$User$Grade$Discipline();

  factory UpdateMe$Mutation$User$Grade$Discipline.fromJson(
          Map<String, dynamic> json) =>
      _$UpdateMe$Mutation$User$Grade$DisciplineFromJson(json);

  String id;

  String name;

  String slug;

  @override
  List<Object> get props => [id, name, slug];
  Map<String, dynamic> toJson() =>
      _$UpdateMe$Mutation$User$Grade$DisciplineToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpdateMe$Mutation$User$Grade with EquatableMixin {
  UpdateMe$Mutation$User$Grade();

  factory UpdateMe$Mutation$User$Grade.fromJson(Map<String, dynamic> json) =>
      _$UpdateMe$Mutation$User$GradeFromJson(json);

  String id;

  String name;

  String slug;

  List<UpdateMe$Mutation$User$Grade$Discipline> disciplines;

  @override
  List<Object> get props => [id, name, slug, disciplines];
  Map<String, dynamic> toJson() => _$UpdateMe$Mutation$User$GradeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpdateMeArguments extends JsonSerializable with EquatableMixin {
  UpdateMeArguments({@required this.input});

  factory UpdateMeArguments.fromJson(Map<String, dynamic> json) =>
      _$UpdateMeArgumentsFromJson(json);

  final UpdateMe$UpdateMe input;

  @override
  List<Object> get props => [input];
  Map<String, dynamic> toJson() => _$UpdateMeArgumentsToJson(this);
}

class UpdateMeMutation
    extends GraphQLQuery<UpdateMe$Mutation, UpdateMeArguments> {
  UpdateMeMutation({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.mutation,
        name: NameNode(value: 'UpdateMe'),
        variableDefinitions: [
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'input')),
              type: NamedTypeNode(
                  name: NameNode(value: 'UpdateMe'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'updateMe'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'input'),
                    value: VariableNode(name: NameNode(value: 'input')))
              ],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FragmentSpreadNode(
                    name: NameNode(value: 'BasicUser'), directives: [])
              ]))
        ])),
    FragmentDefinitionNode(
        name: NameNode(value: 'BasicUser'),
        typeCondition: TypeConditionNode(
            on: NamedTypeNode(name: NameNode(value: 'User'), isNonNull: false)),
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'id'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'username'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'firstname'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'lastname'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'email'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'created_at'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'updated_at'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'premium'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'premium_bypass'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'trainings'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'id'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ])),
          FieldNode(
              name: NameNode(value: 'grade'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'id'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'name'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'slug'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'disciplines'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                          name: NameNode(value: 'id'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'name'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'slug'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null)
                    ]))
              ]))
        ]))
  ]);

  @override
  final String operationName = 'UpdateMe';

  @override
  final UpdateMeArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  UpdateMe$Mutation parse(Map<String, dynamic> json) =>
      UpdateMe$Mutation.fromJson(json);
}

mixin Me$BasicUserMixin {
  String id;
  String username;
  String firstname;
  String lastname;
  String email;
  DateTime created_at;
  DateTime updated_at;
  bool premium;
  bool premium_bypass;
  List<Me$Query$User$Training> trainings;
  Me$Query$User$Grade grade;
}

@JsonSerializable(explicitToJson: true)
class Me$Query$User with EquatableMixin, Me$BasicUserMixin {
  Me$Query$User();

  factory Me$Query$User.fromJson(Map<String, dynamic> json) =>
      _$Me$Query$UserFromJson(json);

  @override
  List<Object> get props => [
        id,
        username,
        firstname,
        lastname,
        email,
        created_at,
        updated_at,
        premium,
        premium_bypass,
        trainings,
        grade
      ];
  Map<String, dynamic> toJson() => _$Me$Query$UserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Me$Query with EquatableMixin {
  Me$Query();

  factory Me$Query.fromJson(Map<String, dynamic> json) =>
      _$Me$QueryFromJson(json);

  Me$Query$User me;

  @override
  List<Object> get props => [me];
  Map<String, dynamic> toJson() => _$Me$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Me$Query$User$Training with EquatableMixin {
  Me$Query$User$Training();

  factory Me$Query$User$Training.fromJson(Map<String, dynamic> json) =>
      _$Me$Query$User$TrainingFromJson(json);

  String id;

  @override
  List<Object> get props => [id];
  Map<String, dynamic> toJson() => _$Me$Query$User$TrainingToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Me$Query$User$Grade$Discipline with EquatableMixin {
  Me$Query$User$Grade$Discipline();

  factory Me$Query$User$Grade$Discipline.fromJson(Map<String, dynamic> json) =>
      _$Me$Query$User$Grade$DisciplineFromJson(json);

  String id;

  String name;

  String slug;

  @override
  List<Object> get props => [id, name, slug];
  Map<String, dynamic> toJson() => _$Me$Query$User$Grade$DisciplineToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Me$Query$User$Grade with EquatableMixin {
  Me$Query$User$Grade();

  factory Me$Query$User$Grade.fromJson(Map<String, dynamic> json) =>
      _$Me$Query$User$GradeFromJson(json);

  String id;

  String name;

  String slug;

  List<Me$Query$User$Grade$Discipline> disciplines;

  @override
  List<Object> get props => [id, name, slug, disciplines];
  Map<String, dynamic> toJson() => _$Me$Query$User$GradeToJson(this);
}

class MeQuery extends GraphQLQuery<Me$Query, JsonSerializable> {
  MeQuery();

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'me'),
        variableDefinitions: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'me'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FragmentSpreadNode(
                    name: NameNode(value: 'BasicUser'), directives: [])
              ]))
        ])),
    FragmentDefinitionNode(
        name: NameNode(value: 'BasicUser'),
        typeCondition: TypeConditionNode(
            on: NamedTypeNode(name: NameNode(value: 'User'), isNonNull: false)),
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'id'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'username'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'firstname'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'lastname'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'email'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'created_at'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'updated_at'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'premium'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'premium_bypass'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'trainings'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'id'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ])),
          FieldNode(
              name: NameNode(value: 'grade'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'id'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'name'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'slug'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'disciplines'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                          name: NameNode(value: 'id'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'name'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'slug'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null)
                    ]))
              ]))
        ]))
  ]);

  @override
  final String operationName = 'me';

  @override
  List<Object> get props => [document, operationName];
  @override
  Me$Query parse(Map<String, dynamic> json) => Me$Query.fromJson(json);
}
