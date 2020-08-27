// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'queries.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Login$Mutation$JWT _$Login$Mutation$JWTFromJson(Map<String, dynamic> json) {
  return Login$Mutation$JWT()..token = json['token'] as String;
}

Map<String, dynamic> _$Login$Mutation$JWTToJson(Login$Mutation$JWT instance) =>
    <String, dynamic>{
      'token': instance.token,
    };

Login$Mutation _$Login$MutationFromJson(Map<String, dynamic> json) {
  return Login$Mutation()
    ..loginBasic = json['loginBasic'] == null
        ? null
        : Login$Mutation$JWT.fromJson(
            json['loginBasic'] as Map<String, dynamic>);
}

Map<String, dynamic> _$Login$MutationToJson(Login$Mutation instance) =>
    <String, dynamic>{
      'loginBasic': instance.loginBasic?.toJson(),
    };

LoginArguments _$LoginArgumentsFromJson(Map<String, dynamic> json) {
  return LoginArguments(
    email: json['email'] as String,
    password: json['password'] as String,
  );
}

Map<String, dynamic> _$LoginArgumentsToJson(LoginArguments instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };

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

ListGrades$Query$Grade _$ListGrades$Query$GradeFromJson(
    Map<String, dynamic> json) {
  return ListGrades$Query$Grade()
    ..id = json['id'] as String
    ..name = json['name'] as String
    ..order = json['order'] as int
    ..slug = json['slug'] as String
    ..visible = json['visible'] as bool;
}

Map<String, dynamic> _$ListGrades$Query$GradeToJson(
        ListGrades$Query$Grade instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'order': instance.order,
      'slug': instance.slug,
      'visible': instance.visible,
    };

ListGrades$Query _$ListGrades$QueryFromJson(Map<String, dynamic> json) {
  return ListGrades$Query()
    ..listGrades = (json['listGrades'] as List)
        ?.map((e) => e == null
            ? null
            : ListGrades$Query$Grade.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$ListGrades$QueryToJson(ListGrades$Query instance) =>
    <String, dynamic>{
      'listGrades': instance.listGrades?.map((e) => e?.toJson())?.toList(),
    };

Me$Query$User _$Me$Query$UserFromJson(Map<String, dynamic> json) {
  return Me$Query$User()
    ..id = json['id'] as String
    ..username = json['username'] as String
    ..firstname = json['firstname'] as String
    ..lastname = json['lastname'] as String
    ..email = json['email'] as String
    ..created_at = json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String)
    ..updated_at = json['updated_at'] == null
        ? null
        : DateTime.parse(json['updated_at'] as String)
    ..premium = json['premium'] as bool
    ..premium_bypass = json['premium_bypass'] as bool
    ..trainings = (json['trainings'] as List)
        ?.map((e) => e == null
            ? null
            : Me$Query$User$Training.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..grade = json['grade'] == null
        ? null
        : Me$Query$User$Grade.fromJson(json['grade'] as Map<String, dynamic>);
}

Map<String, dynamic> _$Me$Query$UserToJson(Me$Query$User instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'email': instance.email,
      'created_at': instance.created_at?.toIso8601String(),
      'updated_at': instance.updated_at?.toIso8601String(),
      'premium': instance.premium,
      'premium_bypass': instance.premium_bypass,
      'trainings': instance.trainings?.map((e) => e?.toJson())?.toList(),
      'grade': instance.grade?.toJson(),
    };

Me$Query _$Me$QueryFromJson(Map<String, dynamic> json) {
  return Me$Query()
    ..me = json['me'] == null
        ? null
        : Me$Query$User.fromJson(json['me'] as Map<String, dynamic>);
}

Map<String, dynamic> _$Me$QueryToJson(Me$Query instance) => <String, dynamic>{
      'me': instance.me?.toJson(),
    };

Me$Query$User$Training _$Me$Query$User$TrainingFromJson(
    Map<String, dynamic> json) {
  return Me$Query$User$Training()..id = json['id'] as String;
}

Map<String, dynamic> _$Me$Query$User$TrainingToJson(
        Me$Query$User$Training instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

Me$Query$User$Grade$Discipline _$Me$Query$User$Grade$DisciplineFromJson(
    Map<String, dynamic> json) {
  return Me$Query$User$Grade$Discipline()
    ..id = json['id'] as String
    ..beta = json['beta'] as bool
    ..name = json['name'] as String
    ..slug = json['slug'] as String;
}

Map<String, dynamic> _$Me$Query$User$Grade$DisciplineToJson(
        Me$Query$User$Grade$Discipline instance) =>
    <String, dynamic>{
      'id': instance.id,
      'beta': instance.beta,
      'name': instance.name,
      'slug': instance.slug,
    };

Me$Query$User$Grade _$Me$Query$User$GradeFromJson(Map<String, dynamic> json) {
  return Me$Query$User$Grade()
    ..id = json['id'] as String
    ..name = json['name'] as String
    ..order = json['order'] as int
    ..slug = json['slug'] as String
    ..visible = json['visible'] as bool
    ..disciplines = (json['disciplines'] as List)
        ?.map((e) => e == null
            ? null
            : Me$Query$User$Grade$Discipline.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$Me$Query$User$GradeToJson(
        Me$Query$User$Grade instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'order': instance.order,
      'slug': instance.slug,
      'visible': instance.visible,
      'disciplines': instance.disciplines?.map((e) => e?.toJson())?.toList(),
    };
