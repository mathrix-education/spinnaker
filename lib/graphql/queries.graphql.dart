// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:meta/meta.dart';
import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'queries.graphql.g.dart';

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
