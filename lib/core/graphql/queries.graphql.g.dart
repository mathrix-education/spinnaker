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

ListCategories$Query$Category$Post _$ListCategories$Query$Category$PostFromJson(
    Map<String, dynamic> json) {
  return ListCategories$Query$Category$Post()
    ..title = json['title'] as String
    ..video_id = json['video_id'] as String
    ..content = json['content'] as List;
}

Map<String, dynamic> _$ListCategories$Query$Category$PostToJson(
        ListCategories$Query$Category$Post instance) =>
    <String, dynamic>{
      'title': instance.title,
      'video_id': instance.video_id,
      'content': instance.content,
    };

ListCategories$Query$Category _$ListCategories$Query$CategoryFromJson(
    Map<String, dynamic> json) {
  return ListCategories$Query$Category()
    ..name = json['name'] as String
    ..posts = (json['posts'] as List)
        ?.map((e) => e == null
            ? null
            : ListCategories$Query$Category$Post.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$ListCategories$Query$CategoryToJson(
        ListCategories$Query$Category instance) =>
    <String, dynamic>{
      'name': instance.name,
      'posts': instance.posts?.map((e) => e?.toJson())?.toList(),
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

ReadChaptersInformations$Query$Chapter$Notion$Course
    _$ReadChaptersInformations$Query$Chapter$Notion$CourseFromJson(
        Map<String, dynamic> json) {
  return ReadChaptersInformations$Query$Chapter$Notion$Course()
    ..id = json['id'] as String
    ..name = json['name'] as String
    ..premium = json['premium'] as bool
    ..order = json['order'] as int;
}

Map<String, dynamic>
    _$ReadChaptersInformations$Query$Chapter$Notion$CourseToJson(
            ReadChaptersInformations$Query$Chapter$Notion$Course instance) =>
        <String, dynamic>{
          'id': instance.id,
          'name': instance.name,
          'premium': instance.premium,
          'order': instance.order,
        };

ReadChaptersInformations$Query$Chapter$Notion$Subject
    _$ReadChaptersInformations$Query$Chapter$Notion$SubjectFromJson(
        Map<String, dynamic> json) {
  return ReadChaptersInformations$Query$Chapter$Notion$Subject()
    ..id = json['id'] as String
    ..name = json['name'] as String
    ..premium = json['premium'] as bool
    ..order = json['order'] as int;
}

Map<String, dynamic>
    _$ReadChaptersInformations$Query$Chapter$Notion$SubjectToJson(
            ReadChaptersInformations$Query$Chapter$Notion$Subject instance) =>
        <String, dynamic>{
          'id': instance.id,
          'name': instance.name,
          'premium': instance.premium,
          'order': instance.order,
        };

ReadChaptersInformations$Query$Chapter$Notion
    _$ReadChaptersInformations$Query$Chapter$NotionFromJson(
        Map<String, dynamic> json) {
  return ReadChaptersInformations$Query$Chapter$Notion()
    ..name = json['name'] as String
    ..type = _$enumDecodeNullable(
        _$ReadChaptersInformations$Query$Chapter$Notion$NotionTypeEnumMap,
        json['type'],
        unknownValue: ReadChaptersInformations$Query$Chapter$Notion$NotionType
            .ARTEMIS_UNKNOWN)
    ..courses = (json['courses'] as List)
        ?.map((e) => e == null
            ? null
            : ReadChaptersInformations$Query$Chapter$Notion$Course.fromJson(
                e as Map<String, dynamic>))
        ?.toList()
    ..subjects = (json['subjects'] as List)
        ?.map((e) => e == null
            ? null
            : ReadChaptersInformations$Query$Chapter$Notion$Subject.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$ReadChaptersInformations$Query$Chapter$NotionToJson(
        ReadChaptersInformations$Query$Chapter$Notion instance) =>
    <String, dynamic>{
      'name': instance.name,
      'type': _$ReadChaptersInformations$Query$Chapter$Notion$NotionTypeEnumMap[
          instance.type],
      'courses': instance.courses?.map((e) => e?.toJson())?.toList(),
      'subjects': instance.subjects?.map((e) => e?.toJson())?.toList(),
    };

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$ReadChaptersInformations$Query$Chapter$Notion$NotionTypeEnumMap = {
  ReadChaptersInformations$Query$Chapter$Notion$NotionType.standard: 'standard',
  ReadChaptersInformations$Query$Chapter$Notion$NotionType.summary: 'summary',
  ReadChaptersInformations$Query$Chapter$Notion$NotionType.ARTEMIS_UNKNOWN:
      'ARTEMIS_UNKNOWN',
};

ReadChaptersInformations$Query$Chapter$Flashcard
    _$ReadChaptersInformations$Query$Chapter$FlashcardFromJson(
        Map<String, dynamic> json) {
  return ReadChaptersInformations$Query$Chapter$Flashcard()
    ..id = json['id'] as String
    ..name = json['name'] as String
    ..premium = json['premium'] as bool;
}

Map<String, dynamic> _$ReadChaptersInformations$Query$Chapter$FlashcardToJson(
        ReadChaptersInformations$Query$Chapter$Flashcard instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'premium': instance.premium,
    };

ReadChaptersInformations$Query$Chapter
    _$ReadChaptersInformations$Query$ChapterFromJson(
        Map<String, dynamic> json) {
  return ReadChaptersInformations$Query$Chapter()
    ..name = json['name'] as String
    ..notions = (json['notions'] as List)
        ?.map((e) => e == null
            ? null
            : ReadChaptersInformations$Query$Chapter$Notion.fromJson(
                e as Map<String, dynamic>))
        ?.toList()
    ..flashcards = (json['flashcards'] as List)
        ?.map((e) => e == null
            ? null
            : ReadChaptersInformations$Query$Chapter$Flashcard.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$ReadChaptersInformations$Query$ChapterToJson(
        ReadChaptersInformations$Query$Chapter instance) =>
    <String, dynamic>{
      'name': instance.name,
      'notions': instance.notions?.map((e) => e?.toJson())?.toList(),
      'flashcards': instance.flashcards?.map((e) => e?.toJson())?.toList(),
    };

ReadChaptersInformations$Query _$ReadChaptersInformations$QueryFromJson(
    Map<String, dynamic> json) {
  return ReadChaptersInformations$Query()
    ..readChapter = json['readChapter'] == null
        ? null
        : ReadChaptersInformations$Query$Chapter.fromJson(
            json['readChapter'] as Map<String, dynamic>);
}

Map<String, dynamic> _$ReadChaptersInformations$QueryToJson(
        ReadChaptersInformations$Query instance) =>
    <String, dynamic>{
      'readChapter': instance.readChapter?.toJson(),
    };

ReadChaptersInformationsArguments _$ReadChaptersInformationsArgumentsFromJson(
    Map<String, dynamic> json) {
  return ReadChaptersInformationsArguments(
    id: json['id'] as String,
  );
}

Map<String, dynamic> _$ReadChaptersInformationsArgumentsToJson(
        ReadChaptersInformationsArguments instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

ReadCourse$Query$Course _$ReadCourse$Query$CourseFromJson(
    Map<String, dynamic> json) {
  return ReadCourse$Query$Course()..content = json['content'] as List;
}

Map<String, dynamic> _$ReadCourse$Query$CourseToJson(
        ReadCourse$Query$Course instance) =>
    <String, dynamic>{
      'content': instance.content,
    };

ReadCourse$Query _$ReadCourse$QueryFromJson(Map<String, dynamic> json) {
  return ReadCourse$Query()
    ..readCourse = json['readCourse'] == null
        ? null
        : ReadCourse$Query$Course.fromJson(
            json['readCourse'] as Map<String, dynamic>);
}

Map<String, dynamic> _$ReadCourse$QueryToJson(ReadCourse$Query instance) =>
    <String, dynamic>{
      'readCourse': instance.readCourse?.toJson(),
    };

ReadCourseArguments _$ReadCourseArgumentsFromJson(Map<String, dynamic> json) {
  return ReadCourseArguments(
    id: json['id'] as String,
  );
}

Map<String, dynamic> _$ReadCourseArgumentsToJson(
        ReadCourseArguments instance) =>
    <String, dynamic>{
      'id': instance.id,
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

ListThemesChaptersFromDisciplines$Query$Theme$Chapter
    _$ListThemesChaptersFromDisciplines$Query$Theme$ChapterFromJson(
        Map<String, dynamic> json) {
  return ListThemesChaptersFromDisciplines$Query$Theme$Chapter()
    ..id = json['id'] as String
    ..name = json['name'] as String;
}

Map<String, dynamic>
    _$ListThemesChaptersFromDisciplines$Query$Theme$ChapterToJson(
            ListThemesChaptersFromDisciplines$Query$Theme$Chapter instance) =>
        <String, dynamic>{
          'id': instance.id,
          'name': instance.name,
        };

ListThemesChaptersFromDisciplines$Query$Theme
    _$ListThemesChaptersFromDisciplines$Query$ThemeFromJson(
        Map<String, dynamic> json) {
  return ListThemesChaptersFromDisciplines$Query$Theme()
    ..id = json['id'] as String
    ..name = json['name'] as String
    ..chapters = (json['chapters'] as List)
        ?.map((e) => e == null
            ? null
            : ListThemesChaptersFromDisciplines$Query$Theme$Chapter.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$ListThemesChaptersFromDisciplines$Query$ThemeToJson(
        ListThemesChaptersFromDisciplines$Query$Theme instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'chapters': instance.chapters?.map((e) => e?.toJson())?.toList(),
    };

ListThemesChaptersFromDisciplines$Query
    _$ListThemesChaptersFromDisciplines$QueryFromJson(
        Map<String, dynamic> json) {
  return ListThemesChaptersFromDisciplines$Query()
    ..listThemes = (json['listThemes'] as List)
        ?.map((e) => e == null
            ? null
            : ListThemesChaptersFromDisciplines$Query$Theme.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$ListThemesChaptersFromDisciplines$QueryToJson(
        ListThemesChaptersFromDisciplines$Query instance) =>
    <String, dynamic>{
      'listThemes': instance.listThemes?.map((e) => e?.toJson())?.toList(),
    };

ListThemesChaptersFromDisciplinesArguments
    _$ListThemesChaptersFromDisciplinesArgumentsFromJson(
        Map<String, dynamic> json) {
  return ListThemesChaptersFromDisciplinesArguments(
    gradeId: json['gradeId'] as String,
    disciplineId: json['disciplineId'] as String,
  );
}

Map<String, dynamic> _$ListThemesChaptersFromDisciplinesArgumentsToJson(
        ListThemesChaptersFromDisciplinesArguments instance) =>
    <String, dynamic>{
      'gradeId': instance.gradeId,
      'disciplineId': instance.disciplineId,
    };

ListTrainings$Query$Training _$ListTrainings$Query$TrainingFromJson(
    Map<String, dynamic> json) {
  return ListTrainings$Query$Training()
    ..id = json['id'] as String
    ..name = json['name'] as String
    ..duration = json['duration'] as int
    ..image = json['image'] as String
    ..available = json['available'] as bool
    ..owned = json['owned'] as bool
    ..content = json['content'] as List
    ..price = json['price'] as int
    ..grades = (json['grades'] as List)
        ?.map((e) => e == null
            ? null
            : ListTrainings$Query$Training$Grade.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$ListTrainings$Query$TrainingToJson(
        ListTrainings$Query$Training instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'duration': instance.duration,
      'image': instance.image,
      'available': instance.available,
      'owned': instance.owned,
      'content': instance.content,
      'price': instance.price,
      'grades': instance.grades?.map((e) => e?.toJson())?.toList(),
    };

ListTrainings$Query _$ListTrainings$QueryFromJson(Map<String, dynamic> json) {
  return ListTrainings$Query()
    ..listTrainings = (json['listTrainings'] as List)
        ?.map((e) => e == null
            ? null
            : ListTrainings$Query$Training.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$ListTrainings$QueryToJson(
        ListTrainings$Query instance) =>
    <String, dynamic>{
      'listTrainings':
          instance.listTrainings?.map((e) => e?.toJson())?.toList(),
    };

ListTrainings$Query$Training$Grade _$ListTrainings$Query$Training$GradeFromJson(
    Map<String, dynamic> json) {
  return ListTrainings$Query$Training$Grade()..name = json['name'] as String;
}

Map<String, dynamic> _$ListTrainings$Query$Training$GradeToJson(
        ListTrainings$Query$Training$Grade instance) =>
    <String, dynamic>{
      'name': instance.name,
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

ReadTraining$Query$Training$Section$Lesson
    _$ReadTraining$Query$Training$Section$LessonFromJson(
        Map<String, dynamic> json) {
  return ReadTraining$Query$Training$Section$Lesson()
    ..name = json['name'] as String
    ..id = json['id'] as String;
}

Map<String, dynamic> _$ReadTraining$Query$Training$Section$LessonToJson(
        ReadTraining$Query$Training$Section$Lesson instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
    };

ReadTraining$Query$Training$Section
    _$ReadTraining$Query$Training$SectionFromJson(Map<String, dynamic> json) {
  return ReadTraining$Query$Training$Section()
    ..name = json['name'] as String
    ..lessons = (json['lessons'] as List)
        ?.map((e) => e == null
            ? null
            : ReadTraining$Query$Training$Section$Lesson.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$ReadTraining$Query$Training$SectionToJson(
        ReadTraining$Query$Training$Section instance) =>
    <String, dynamic>{
      'name': instance.name,
      'lessons': instance.lessons?.map((e) => e?.toJson())?.toList(),
    };

ReadTraining$Query$Training _$ReadTraining$Query$TrainingFromJson(
    Map<String, dynamic> json) {
  return ReadTraining$Query$Training()
    ..name = json['name'] as String
    ..sections = (json['sections'] as List)
        ?.map((e) => e == null
            ? null
            : ReadTraining$Query$Training$Section.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$ReadTraining$Query$TrainingToJson(
        ReadTraining$Query$Training instance) =>
    <String, dynamic>{
      'name': instance.name,
      'sections': instance.sections?.map((e) => e?.toJson())?.toList(),
    };

ReadTraining$Query _$ReadTraining$QueryFromJson(Map<String, dynamic> json) {
  return ReadTraining$Query()
    ..readTraining = json['readTraining'] == null
        ? null
        : ReadTraining$Query$Training.fromJson(
            json['readTraining'] as Map<String, dynamic>);
}

Map<String, dynamic> _$ReadTraining$QueryToJson(ReadTraining$Query instance) =>
    <String, dynamic>{
      'readTraining': instance.readTraining?.toJson(),
    };

ReadTrainingArguments _$ReadTrainingArgumentsFromJson(
    Map<String, dynamic> json) {
  return ReadTrainingArguments(
    id: json['id'] as String,
  );
}

Map<String, dynamic> _$ReadTrainingArgumentsToJson(
        ReadTrainingArguments instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

ReadLesson$Query$Lesson _$ReadLesson$Query$LessonFromJson(
    Map<String, dynamic> json) {
  return ReadLesson$Query$Lesson()..content = json['content'] as List;
}

Map<String, dynamic> _$ReadLesson$Query$LessonToJson(
        ReadLesson$Query$Lesson instance) =>
    <String, dynamic>{
      'content': instance.content,
    };

ReadLesson$Query _$ReadLesson$QueryFromJson(Map<String, dynamic> json) {
  return ReadLesson$Query()
    ..readLesson = json['readLesson'] == null
        ? null
        : ReadLesson$Query$Lesson.fromJson(
            json['readLesson'] as Map<String, dynamic>);
}

Map<String, dynamic> _$ReadLesson$QueryToJson(ReadLesson$Query instance) =>
    <String, dynamic>{
      'readLesson': instance.readLesson?.toJson(),
    };

ReadLessonArguments _$ReadLessonArgumentsFromJson(Map<String, dynamic> json) {
  return ReadLessonArguments(
    id: json['id'] as String,
  );
}

Map<String, dynamic> _$ReadLessonArgumentsToJson(
        ReadLessonArguments instance) =>
    <String, dynamic>{
      'id': instance.id,
    };
