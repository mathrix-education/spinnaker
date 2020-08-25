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

ListDisciplines$Query$Discipline _$ListDisciplines$Query$DisciplineFromJson(
    Map<String, dynamic> json) {
  return ListDisciplines$Query$Discipline()
    ..id = json['id'] as String
    ..beta = json['beta'] as bool
    ..name = json['name'] as String
    ..slug = json['slug'] as String;
}

Map<String, dynamic> _$ListDisciplines$Query$DisciplineToJson(
        ListDisciplines$Query$Discipline instance) =>
    <String, dynamic>{
      'id': instance.id,
      'beta': instance.beta,
      'name': instance.name,
      'slug': instance.slug,
    };

ListDisciplines$Query _$ListDisciplines$QueryFromJson(
    Map<String, dynamic> json) {
  return ListDisciplines$Query()
    ..listDisciplines = (json['listDisciplines'] as List)
        ?.map((e) => e == null
            ? null
            : ListDisciplines$Query$Discipline.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$ListDisciplines$QueryToJson(
        ListDisciplines$Query instance) =>
    <String, dynamic>{
      'listDisciplines':
          instance.listDisciplines?.map((e) => e?.toJson())?.toList(),
    };
