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

mixin ListCategories$BasicCategoryMixin {
  String id;
  String name;
  String slug;
}

@JsonSerializable(explicitToJson: true)
class ListCategories$Query$Category
    with EquatableMixin, ListCategories$BasicCategoryMixin {
  ListCategories$Query$Category();

  factory ListCategories$Query$Category.fromJson(Map<String, dynamic> json) =>
      _$ListCategories$Query$CategoryFromJson(json);

  @override
  List<Object> get props => [id, name, slug];
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
                FragmentSpreadNode(
                    name: NameNode(value: 'BasicCategory'), directives: [])
              ]))
        ])),
    FragmentDefinitionNode(
        name: NameNode(value: 'BasicCategory'),
        typeCondition: TypeConditionNode(
            on: NamedTypeNode(
                name: NameNode(value: 'Category'), isNonNull: false)),
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
class ReadCourse$Query$Course with EquatableMixin {
  ReadCourse$Query$Course();

  factory ReadCourse$Query$Course.fromJson(Map<String, dynamic> json) =>
      _$ReadCourse$Query$CourseFromJson(json);

  Map<String, dynamic> content;

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
