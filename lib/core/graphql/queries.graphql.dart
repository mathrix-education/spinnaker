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
class ReadChaptersInformations$Query$Chapter with EquatableMixin {
  ReadChaptersInformations$Query$Chapter();

  factory ReadChaptersInformations$Query$Chapter.fromJson(
          Map<String, dynamic> json) =>
      _$ReadChaptersInformations$Query$ChapterFromJson(json);

  String name;

  List<ReadChaptersInformations$Query$Chapter$Notion> notions;

  List<ReadChaptersInformations$Query$Chapter$Flashcard> flashcards;

  @override
  List<Object> get props => [name, notions, flashcards];
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

mixin ListDisciplines$BasicDisciplineMixin {
  String id;
  bool beta;
  String name;
  String slug;
}

@JsonSerializable(explicitToJson: true)
class ListDisciplines$Query$Discipline
    with EquatableMixin, ListDisciplines$BasicDisciplineMixin {
  ListDisciplines$Query$Discipline();

  factory ListDisciplines$Query$Discipline.fromJson(
          Map<String, dynamic> json) =>
      _$ListDisciplines$Query$DisciplineFromJson(json);

  @override
  List<Object> get props => [id, beta, name, slug];
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
                FragmentSpreadNode(
                    name: NameNode(value: 'BasicDiscipline'), directives: [])
              ]))
        ])),
    FragmentDefinitionNode(
        name: NameNode(value: 'BasicDiscipline'),
        typeCondition: TypeConditionNode(
            on: NamedTypeNode(
                name: NameNode(value: 'Discipline'), isNonNull: false)),
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'id'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'beta'),
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
  ]);

  @override
  final String operationName = 'ListDisciplines';

  @override
  List<Object> get props => [document, operationName];
  @override
  ListDisciplines$Query parse(Map<String, dynamic> json) =>
      ListDisciplines$Query.fromJson(json);
}

mixin ListGrades$BasicGradeMixin {
  String id;
  String name;
  int order;
  String slug;
  bool visible;
}

@JsonSerializable(explicitToJson: true)
class ListGrades$Query$Grade with EquatableMixin, ListGrades$BasicGradeMixin {
  ListGrades$Query$Grade();

  factory ListGrades$Query$Grade.fromJson(Map<String, dynamic> json) =>
      _$ListGrades$Query$GradeFromJson(json);

  @override
  List<Object> get props => [id, name, order, slug, visible];
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
                FragmentSpreadNode(
                    name: NameNode(value: 'BasicGrade'), directives: [])
              ]))
        ])),
    FragmentDefinitionNode(
        name: NameNode(value: 'BasicGrade'),
        typeCondition: TypeConditionNode(
            on: NamedTypeNode(
                name: NameNode(value: 'Grade'), isNonNull: false)),
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
              name: NameNode(value: 'order'),
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
              name: NameNode(value: 'visible'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null)
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

mixin ListThemesChaptersFromDisciplines$BasicThemeMixin {
  String id;
  String name;
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
class ListThemesChaptersFromDisciplines$Query$Theme
    with EquatableMixin, ListThemesChaptersFromDisciplines$BasicThemeMixin {
  ListThemesChaptersFromDisciplines$Query$Theme();

  factory ListThemesChaptersFromDisciplines$Query$Theme.fromJson(
          Map<String, dynamic> json) =>
      _$ListThemesChaptersFromDisciplines$Query$ThemeFromJson(json);

  List<ListThemesChaptersFromDisciplines$Query$Theme$Chapter> chapters;

  @override
  List<Object> get props => [id, name, chapters];
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
                FragmentSpreadNode(
                    name: NameNode(value: 'BasicTheme'), directives: []),
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
        ])),
    FragmentDefinitionNode(
        name: NameNode(value: 'BasicTheme'),
        typeCondition: TypeConditionNode(
            on: NamedTypeNode(
                name: NameNode(value: 'Theme'), isNonNull: false)),
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

mixin ListTrainings$BasicTrainingMixin {
  String id;
  String name;
  int duration;
  String image;
  bool available;
  bool owned;
  List<dynamic> content;
  int price;
  List<ListTrainings$Query$Training$Grade> grades;
}

@JsonSerializable(explicitToJson: true)
class ListTrainings$Query$Training
    with EquatableMixin, ListTrainings$BasicTrainingMixin {
  ListTrainings$Query$Training();

  factory ListTrainings$Query$Training.fromJson(Map<String, dynamic> json) =>
      _$ListTrainings$Query$TrainingFromJson(json);

  @override
  List<Object> get props =>
      [id, name, duration, image, available, owned, content, price, grades];
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
                FragmentSpreadNode(
                    name: NameNode(value: 'BasicTraining'), directives: [])
              ]))
        ])),
    FragmentDefinitionNode(
        name: NameNode(value: 'BasicTraining'),
        typeCondition: TypeConditionNode(
            on: NamedTypeNode(
                name: NameNode(value: 'Training'), isNonNull: false)),
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
              name: NameNode(value: 'duration'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'image'),
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
              name: NameNode(value: 'content'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'price'),
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
  ]);

  @override
  final String operationName = 'ListTrainings';

  @override
  List<Object> get props => [document, operationName];
  @override
  ListTrainings$Query parse(Map<String, dynamic> json) =>
      ListTrainings$Query.fromJson(json);
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
mixin UpdateMe$BasicDisciplineMixin {
  String id;
  bool beta;
  String name;
  String slug;
}
mixin UpdateMe$BasicGradeMixin {
  String id;
  String name;
  int order;
  String slug;
  bool visible;
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
class UpdateMe$Mutation$User$Grade$Discipline
    with EquatableMixin, UpdateMe$BasicDisciplineMixin {
  UpdateMe$Mutation$User$Grade$Discipline();

  factory UpdateMe$Mutation$User$Grade$Discipline.fromJson(
          Map<String, dynamic> json) =>
      _$UpdateMe$Mutation$User$Grade$DisciplineFromJson(json);

  @override
  List<Object> get props => [id, beta, name, slug];
  Map<String, dynamic> toJson() =>
      _$UpdateMe$Mutation$User$Grade$DisciplineToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpdateMe$Mutation$User$Grade
    with EquatableMixin, UpdateMe$BasicGradeMixin {
  UpdateMe$Mutation$User$Grade();

  factory UpdateMe$Mutation$User$Grade.fromJson(Map<String, dynamic> json) =>
      _$UpdateMe$Mutation$User$GradeFromJson(json);

  List<UpdateMe$Mutation$User$Grade$Discipline> disciplines;

  @override
  List<Object> get props => [id, name, order, slug, visible, disciplines];
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
                FragmentSpreadNode(
                    name: NameNode(value: 'BasicGrade'), directives: []),
                FieldNode(
                    name: NameNode(value: 'disciplines'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FragmentSpreadNode(
                          name: NameNode(value: 'BasicDiscipline'),
                          directives: [])
                    ]))
              ]))
        ])),
    FragmentDefinitionNode(
        name: NameNode(value: 'BasicDiscipline'),
        typeCondition: TypeConditionNode(
            on: NamedTypeNode(
                name: NameNode(value: 'Discipline'), isNonNull: false)),
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'id'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'beta'),
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
        ])),
    FragmentDefinitionNode(
        name: NameNode(value: 'BasicGrade'),
        typeCondition: TypeConditionNode(
            on: NamedTypeNode(
                name: NameNode(value: 'Grade'), isNonNull: false)),
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
              name: NameNode(value: 'order'),
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
              name: NameNode(value: 'visible'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null)
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
mixin Me$BasicDisciplineMixin {
  String id;
  bool beta;
  String name;
  String slug;
}
mixin Me$BasicGradeMixin {
  String id;
  String name;
  int order;
  String slug;
  bool visible;
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
class Me$Query$User$Grade$Discipline
    with EquatableMixin, Me$BasicDisciplineMixin {
  Me$Query$User$Grade$Discipline();

  factory Me$Query$User$Grade$Discipline.fromJson(Map<String, dynamic> json) =>
      _$Me$Query$User$Grade$DisciplineFromJson(json);

  @override
  List<Object> get props => [id, beta, name, slug];
  Map<String, dynamic> toJson() => _$Me$Query$User$Grade$DisciplineToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Me$Query$User$Grade with EquatableMixin, Me$BasicGradeMixin {
  Me$Query$User$Grade();

  factory Me$Query$User$Grade.fromJson(Map<String, dynamic> json) =>
      _$Me$Query$User$GradeFromJson(json);

  List<Me$Query$User$Grade$Discipline> disciplines;

  @override
  List<Object> get props => [id, name, order, slug, visible, disciplines];
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
                FragmentSpreadNode(
                    name: NameNode(value: 'BasicGrade'), directives: []),
                FieldNode(
                    name: NameNode(value: 'disciplines'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FragmentSpreadNode(
                          name: NameNode(value: 'BasicDiscipline'),
                          directives: [])
                    ]))
              ]))
        ])),
    FragmentDefinitionNode(
        name: NameNode(value: 'BasicDiscipline'),
        typeCondition: TypeConditionNode(
            on: NamedTypeNode(
                name: NameNode(value: 'Discipline'), isNonNull: false)),
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'id'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'beta'),
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
        ])),
    FragmentDefinitionNode(
        name: NameNode(value: 'BasicGrade'),
        typeCondition: TypeConditionNode(
            on: NamedTypeNode(
                name: NameNode(value: 'Grade'), isNonNull: false)),
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
              name: NameNode(value: 'order'),
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
              name: NameNode(value: 'visible'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null)
        ]))
  ]);

  @override
  final String operationName = 'me';

  @override
  List<Object> get props => [document, operationName];
  @override
  Me$Query parse(Map<String, dynamic> json) => Me$Query.fromJson(json);
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
