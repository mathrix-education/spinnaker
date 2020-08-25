// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:meta/meta.dart';
import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'graphql_api.graphql.g.dart';

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
        ])),
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
