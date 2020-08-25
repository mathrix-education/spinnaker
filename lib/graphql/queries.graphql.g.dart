// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'queries.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListCategories$Query$Category _$ListCategories$Query$CategoryFromJson(
    Map<String, dynamic> json) {
  return ListCategories$Query$Category()
    ..id = json['id'] as String
    ..name = json['name'] as String
    ..slug = json['slug'] as String;
}

Map<String, dynamic> _$ListCategories$Query$CategoryToJson(
        ListCategories$Query$Category instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
    };

ListCategories$Query _$ListCategories$QueryFromJson(Map<String, dynamic> json) {
  return ListCategories$Query()
    ..listCategories = (json['listCategories'] as List)
        ?.map((e) => e == null
            ? null
            : ListCategories$Query$Category.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$ListCategories$QueryToJson(
        ListCategories$Query instance) =>
    <String, dynamic>{
      'listCategories':
          instance.listCategories?.map((e) => e?.toJson())?.toList(),
    };
