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

ReadChaptersInformations$Query$Chapter$Notion$Course$Interaction
    _$ReadChaptersInformations$Query$Chapter$Notion$Course$InteractionFromJson(
        Map<String, dynamic> json) {
  return ReadChaptersInformations$Query$Chapter$Notion$Course$Interaction()
    ..comprehension = _$enumDecodeNullable(
        _$ReadChaptersInformations$Query$Chapter$Notion$Course$Interaction$InteractionComprehensionEnumMap,
        json['comprehension'],
        unknownValue:
            ReadChaptersInformations$Query$Chapter$Notion$Course$Interaction$InteractionComprehension
                .ARTEMIS_UNKNOWN);
}

Map<String, dynamic>
    _$ReadChaptersInformations$Query$Chapter$Notion$Course$InteractionToJson(
            ReadChaptersInformations$Query$Chapter$Notion$Course$Interaction
                instance) =>
        <String, dynamic>{
          'comprehension':
              _$ReadChaptersInformations$Query$Chapter$Notion$Course$Interaction$InteractionComprehensionEnumMap[
                  instance.comprehension],
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

const _$ReadChaptersInformations$Query$Chapter$Notion$Course$Interaction$InteractionComprehensionEnumMap =
    {
  ReadChaptersInformations$Query$Chapter$Notion$Course$Interaction$InteractionComprehension
      .blur: 'blur',
  ReadChaptersInformations$Query$Chapter$Notion$Course$Interaction$InteractionComprehension
      .clear: 'clear',
  ReadChaptersInformations$Query$Chapter$Notion$Course$Interaction$InteractionComprehension
      .ARTEMIS_UNKNOWN: 'ARTEMIS_UNKNOWN',
};

ReadChaptersInformations$Query$Chapter$Notion$Course
    _$ReadChaptersInformations$Query$Chapter$Notion$CourseFromJson(
        Map<String, dynamic> json) {
  return ReadChaptersInformations$Query$Chapter$Notion$Course()
    ..id = json['id'] as String
    ..name = json['name'] as String
    ..premium = json['premium'] as bool
    ..order = json['order'] as int
    ..interaction = json['interaction'] == null
        ? null
        : ReadChaptersInformations$Query$Chapter$Notion$Course$Interaction
            .fromJson(json['interaction'] as Map<String, dynamic>);
}

Map<String, dynamic>
    _$ReadChaptersInformations$Query$Chapter$Notion$CourseToJson(
            ReadChaptersInformations$Query$Chapter$Notion$Course instance) =>
        <String, dynamic>{
          'id': instance.id,
          'name': instance.name,
          'premium': instance.premium,
          'order': instance.order,
          'interaction': instance.interaction?.toJson(),
        };

ReadChaptersInformations$Query$Chapter$Notion$Subject$Exercise$Interaction
    _$ReadChaptersInformations$Query$Chapter$Notion$Subject$Exercise$InteractionFromJson(
        Map<String, dynamic> json) {
  return ReadChaptersInformations$Query$Chapter$Notion$Subject$Exercise$Interaction()
    ..score = json['score'] as int;
}

Map<String, dynamic>
    _$ReadChaptersInformations$Query$Chapter$Notion$Subject$Exercise$InteractionToJson(
            ReadChaptersInformations$Query$Chapter$Notion$Subject$Exercise$Interaction
                instance) =>
        <String, dynamic>{
          'score': instance.score,
        };

ReadChaptersInformations$Query$Chapter$Notion$Subject$Exercise
    _$ReadChaptersInformations$Query$Chapter$Notion$Subject$ExerciseFromJson(
        Map<String, dynamic> json) {
  return ReadChaptersInformations$Query$Chapter$Notion$Subject$Exercise()
    ..interaction = json['interaction'] == null
        ? null
        : ReadChaptersInformations$Query$Chapter$Notion$Subject$Exercise$Interaction
            .fromJson(json['interaction'] as Map<String, dynamic>);
}

Map<String, dynamic>
    _$ReadChaptersInformations$Query$Chapter$Notion$Subject$ExerciseToJson(
            ReadChaptersInformations$Query$Chapter$Notion$Subject$Exercise
                instance) =>
        <String, dynamic>{
          'interaction': instance.interaction?.toJson(),
        };

ReadChaptersInformations$Query$Chapter$Notion$Subject
    _$ReadChaptersInformations$Query$Chapter$Notion$SubjectFromJson(
        Map<String, dynamic> json) {
  return ReadChaptersInformations$Query$Chapter$Notion$Subject()
    ..id = json['id'] as String
    ..name = json['name'] as String
    ..premium = json['premium'] as bool
    ..order = json['order'] as int
    ..exercises = (json['exercises'] as List)
        ?.map((e) => e == null
            ? null
            : ReadChaptersInformations$Query$Chapter$Notion$Subject$Exercise
                .fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic>
    _$ReadChaptersInformations$Query$Chapter$Notion$SubjectToJson(
            ReadChaptersInformations$Query$Chapter$Notion$Subject instance) =>
        <String, dynamic>{
          'id': instance.id,
          'name': instance.name,
          'premium': instance.premium,
          'order': instance.order,
          'exercises': instance.exercises?.map((e) => e?.toJson())?.toList(),
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

const _$ReadChaptersInformations$Query$Chapter$Notion$NotionTypeEnumMap = {
  ReadChaptersInformations$Query$Chapter$Notion$NotionType.standard: 'standard',
  ReadChaptersInformations$Query$Chapter$Notion$NotionType.summary: 'summary',
  ReadChaptersInformations$Query$Chapter$Notion$NotionType.ARTEMIS_UNKNOWN:
      'ARTEMIS_UNKNOWN',
};

ReadChaptersInformations$Query$Chapter$Flashcard$Interaction
    _$ReadChaptersInformations$Query$Chapter$Flashcard$InteractionFromJson(
        Map<String, dynamic> json) {
  return ReadChaptersInformations$Query$Chapter$Flashcard$Interaction()
    ..comprehension = _$enumDecodeNullable(
        _$ReadChaptersInformations$Query$Chapter$Flashcard$Interaction$InteractionComprehensionEnumMap,
        json['comprehension'],
        unknownValue:
            ReadChaptersInformations$Query$Chapter$Flashcard$Interaction$InteractionComprehension
                .ARTEMIS_UNKNOWN);
}

Map<String, dynamic>
    _$ReadChaptersInformations$Query$Chapter$Flashcard$InteractionToJson(
            ReadChaptersInformations$Query$Chapter$Flashcard$Interaction
                instance) =>
        <String, dynamic>{
          'comprehension':
              _$ReadChaptersInformations$Query$Chapter$Flashcard$Interaction$InteractionComprehensionEnumMap[
                  instance.comprehension],
        };

const _$ReadChaptersInformations$Query$Chapter$Flashcard$Interaction$InteractionComprehensionEnumMap =
    {
  ReadChaptersInformations$Query$Chapter$Flashcard$Interaction$InteractionComprehension
      .blur: 'blur',
  ReadChaptersInformations$Query$Chapter$Flashcard$Interaction$InteractionComprehension
      .clear: 'clear',
  ReadChaptersInformations$Query$Chapter$Flashcard$Interaction$InteractionComprehension
      .ARTEMIS_UNKNOWN: 'ARTEMIS_UNKNOWN',
};

ReadChaptersInformations$Query$Chapter$Flashcard
    _$ReadChaptersInformations$Query$Chapter$FlashcardFromJson(
        Map<String, dynamic> json) {
  return ReadChaptersInformations$Query$Chapter$Flashcard()
    ..id = json['id'] as String
    ..name = json['name'] as String
    ..premium = json['premium'] as bool
    ..interaction = json['interaction'] == null
        ? null
        : ReadChaptersInformations$Query$Chapter$Flashcard$Interaction.fromJson(
            json['interaction'] as Map<String, dynamic>);
}

Map<String, dynamic> _$ReadChaptersInformations$Query$Chapter$FlashcardToJson(
        ReadChaptersInformations$Query$Chapter$Flashcard instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'premium': instance.premium,
      'interaction': instance.interaction?.toJson(),
    };

ReadChaptersInformations$Query$Chapter$Exam$Interaction
    _$ReadChaptersInformations$Query$Chapter$Exam$InteractionFromJson(
        Map<String, dynamic> json) {
  return ReadChaptersInformations$Query$Chapter$Exam$Interaction()
    ..score = json['score'] as int
    ..total = json['total'] as int
    ..comprehension = _$enumDecodeNullable(
        _$ReadChaptersInformations$Query$Chapter$Exam$Interaction$InteractionComprehensionEnumMap,
        json['comprehension'],
        unknownValue:
            ReadChaptersInformations$Query$Chapter$Exam$Interaction$InteractionComprehension
                .ARTEMIS_UNKNOWN);
}

Map<String, dynamic>
    _$ReadChaptersInformations$Query$Chapter$Exam$InteractionToJson(
            ReadChaptersInformations$Query$Chapter$Exam$Interaction instance) =>
        <String, dynamic>{
          'score': instance.score,
          'total': instance.total,
          'comprehension':
              _$ReadChaptersInformations$Query$Chapter$Exam$Interaction$InteractionComprehensionEnumMap[
                  instance.comprehension],
        };

const _$ReadChaptersInformations$Query$Chapter$Exam$Interaction$InteractionComprehensionEnumMap =
    {
  ReadChaptersInformations$Query$Chapter$Exam$Interaction$InteractionComprehension
      .blur: 'blur',
  ReadChaptersInformations$Query$Chapter$Exam$Interaction$InteractionComprehension
      .clear: 'clear',
  ReadChaptersInformations$Query$Chapter$Exam$Interaction$InteractionComprehension
      .ARTEMIS_UNKNOWN: 'ARTEMIS_UNKNOWN',
};

ReadChaptersInformations$Query$Chapter$Exam
    _$ReadChaptersInformations$Query$Chapter$ExamFromJson(
        Map<String, dynamic> json) {
  return ReadChaptersInformations$Query$Chapter$Exam()
    ..id = json['id'] as String
    ..premium = json['premium'] as bool
    ..owned = json['owned'] as bool
    ..name = json['name'] as String
    ..duration = json['duration'] as int
    ..interaction = json['interaction'] == null
        ? null
        : ReadChaptersInformations$Query$Chapter$Exam$Interaction.fromJson(
            json['interaction'] as Map<String, dynamic>);
}

Map<String, dynamic> _$ReadChaptersInformations$Query$Chapter$ExamToJson(
        ReadChaptersInformations$Query$Chapter$Exam instance) =>
    <String, dynamic>{
      'id': instance.id,
      'premium': instance.premium,
      'owned': instance.owned,
      'name': instance.name,
      'duration': instance.duration,
      'interaction': instance.interaction?.toJson(),
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
        ?.toList()
    ..exams = (json['exams'] as List)
        ?.map((e) => e == null
            ? null
            : ReadChaptersInformations$Query$Chapter$Exam.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$ReadChaptersInformations$Query$ChapterToJson(
        ReadChaptersInformations$Query$Chapter instance) =>
    <String, dynamic>{
      'name': instance.name,
      'notions': instance.notions?.map((e) => e?.toJson())?.toList(),
      'flashcards': instance.flashcards?.map((e) => e?.toJson())?.toList(),
      'exams': instance.exams?.map((e) => e?.toJson())?.toList(),
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

ReadCourseComments$Query$Course$Comment
    _$ReadCourseComments$Query$Course$CommentFromJson(
        Map<String, dynamic> json) {
  return ReadCourseComments$Query$Course$Comment()
    ..id = json['id'] as String
    ..score = json['score'] as int
    ..created_at = json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String)
    ..content = json['content'] as String
    ..user = json['user'] == null
        ? null
        : ReadCourseComments$Query$Comment$User.fromJson(
            json['user'] as Map<String, dynamic>)
    ..children = (json['children'] as List)
        ?.map((e) => e == null
            ? null
            : ReadCourseComments$Query$Comment$Comment.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$ReadCourseComments$Query$Course$CommentToJson(
        ReadCourseComments$Query$Course$Comment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'score': instance.score,
      'created_at': instance.created_at?.toIso8601String(),
      'content': instance.content,
      'user': instance.user?.toJson(),
      'children': instance.children?.map((e) => e?.toJson())?.toList(),
    };

ReadCourseComments$Query$Course _$ReadCourseComments$Query$CourseFromJson(
    Map<String, dynamic> json) {
  return ReadCourseComments$Query$Course()
    ..comments = (json['comments'] as List)
        ?.map((e) => e == null
            ? null
            : ReadCourseComments$Query$Course$Comment.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$ReadCourseComments$Query$CourseToJson(
        ReadCourseComments$Query$Course instance) =>
    <String, dynamic>{
      'comments': instance.comments?.map((e) => e?.toJson())?.toList(),
    };

ReadCourseComments$Query _$ReadCourseComments$QueryFromJson(
    Map<String, dynamic> json) {
  return ReadCourseComments$Query()
    ..readCourse = json['readCourse'] == null
        ? null
        : ReadCourseComments$Query$Course.fromJson(
            json['readCourse'] as Map<String, dynamic>);
}

Map<String, dynamic> _$ReadCourseComments$QueryToJson(
        ReadCourseComments$Query instance) =>
    <String, dynamic>{
      'readCourse': instance.readCourse?.toJson(),
    };

ReadCourseComments$Query$Comment$User
    _$ReadCourseComments$Query$Comment$UserFromJson(Map<String, dynamic> json) {
  return ReadCourseComments$Query$Comment$User()
    ..id = json['id'] as String
    ..username = json['username'] as String;
}

Map<String, dynamic> _$ReadCourseComments$Query$Comment$UserToJson(
        ReadCourseComments$Query$Comment$User instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
    };

ReadCourseComments$Query$Comment$Comment$User
    _$ReadCourseComments$Query$Comment$Comment$UserFromJson(
        Map<String, dynamic> json) {
  return ReadCourseComments$Query$Comment$Comment$User()
    ..id = json['id'] as String
    ..username = json['username'] as String;
}

Map<String, dynamic> _$ReadCourseComments$Query$Comment$Comment$UserToJson(
        ReadCourseComments$Query$Comment$Comment$User instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
    };

ReadCourseComments$Query$Comment$Comment$Vote$User
    _$ReadCourseComments$Query$Comment$Comment$Vote$UserFromJson(
        Map<String, dynamic> json) {
  return ReadCourseComments$Query$Comment$Comment$Vote$User()
    ..id = json['id'] as String;
}

Map<String, dynamic> _$ReadCourseComments$Query$Comment$Comment$Vote$UserToJson(
        ReadCourseComments$Query$Comment$Comment$Vote$User instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

ReadCourseComments$Query$Comment$Comment$Vote
    _$ReadCourseComments$Query$Comment$Comment$VoteFromJson(
        Map<String, dynamic> json) {
  return ReadCourseComments$Query$Comment$Comment$Vote()
    ..value = _$enumDecodeNullable(
        _$ReadCourseComments$Query$Comment$Comment$Vote$VoteValueEnumMap,
        json['value'],
        unknownValue: ReadCourseComments$Query$Comment$Comment$Vote$VoteValue
            .ARTEMIS_UNKNOWN)
    ..user = json['user'] == null
        ? null
        : ReadCourseComments$Query$Comment$Comment$Vote$User.fromJson(
            json['user'] as Map<String, dynamic>);
}

Map<String, dynamic> _$ReadCourseComments$Query$Comment$Comment$VoteToJson(
        ReadCourseComments$Query$Comment$Comment$Vote instance) =>
    <String, dynamic>{
      'value': _$ReadCourseComments$Query$Comment$Comment$Vote$VoteValueEnumMap[
          instance.value],
      'user': instance.user?.toJson(),
    };

const _$ReadCourseComments$Query$Comment$Comment$Vote$VoteValueEnumMap = {
  ReadCourseComments$Query$Comment$Comment$Vote$VoteValue.down: 'down',
  ReadCourseComments$Query$Comment$Comment$Vote$VoteValue.up: 'up',
  ReadCourseComments$Query$Comment$Comment$Vote$VoteValue.ARTEMIS_UNKNOWN:
      'ARTEMIS_UNKNOWN',
};

ReadCourseComments$Query$Comment$Comment
    _$ReadCourseComments$Query$Comment$CommentFromJson(
        Map<String, dynamic> json) {
  return ReadCourseComments$Query$Comment$Comment()
    ..id = json['id'] as String
    ..score = json['score'] as int
    ..created_at = json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String)
    ..content = json['content'] as String
    ..user = json['user'] == null
        ? null
        : ReadCourseComments$Query$Comment$Comment$User.fromJson(
            json['user'] as Map<String, dynamic>)
    ..vote = json['vote'] == null
        ? null
        : ReadCourseComments$Query$Comment$Comment$Vote.fromJson(
            json['vote'] as Map<String, dynamic>);
}

Map<String, dynamic> _$ReadCourseComments$Query$Comment$CommentToJson(
        ReadCourseComments$Query$Comment$Comment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'score': instance.score,
      'created_at': instance.created_at?.toIso8601String(),
      'content': instance.content,
      'user': instance.user?.toJson(),
      'vote': instance.vote?.toJson(),
    };

ReadCourseCommentsArguments _$ReadCourseCommentsArgumentsFromJson(
    Map<String, dynamic> json) {
  return ReadCourseCommentsArguments(
    id: json['id'] as String,
  );
}

Map<String, dynamic> _$ReadCourseCommentsArgumentsToJson(
        ReadCourseCommentsArguments instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

ReadCourse$Query$Course$Interaction
    _$ReadCourse$Query$Course$InteractionFromJson(Map<String, dynamic> json) {
  return ReadCourse$Query$Course$Interaction()
    ..comprehension = _$enumDecodeNullable(
        _$ReadCourse$Query$Course$Interaction$InteractionComprehensionEnumMap,
        json['comprehension'],
        unknownValue:
            ReadCourse$Query$Course$Interaction$InteractionComprehension
                .ARTEMIS_UNKNOWN);
}

Map<String, dynamic> _$ReadCourse$Query$Course$InteractionToJson(
        ReadCourse$Query$Course$Interaction instance) =>
    <String, dynamic>{
      'comprehension':
          _$ReadCourse$Query$Course$Interaction$InteractionComprehensionEnumMap[
              instance.comprehension],
    };

const _$ReadCourse$Query$Course$Interaction$InteractionComprehensionEnumMap = {
  ReadCourse$Query$Course$Interaction$InteractionComprehension.blur: 'blur',
  ReadCourse$Query$Course$Interaction$InteractionComprehension.clear: 'clear',
  ReadCourse$Query$Course$Interaction$InteractionComprehension.ARTEMIS_UNKNOWN:
      'ARTEMIS_UNKNOWN',
};

ReadCourse$Query$Course _$ReadCourse$Query$CourseFromJson(
    Map<String, dynamic> json) {
  return ReadCourse$Query$Course()
    ..content = json['content'] as List
    ..interaction = json['interaction'] == null
        ? null
        : ReadCourse$Query$Course$Interaction.fromJson(
            json['interaction'] as Map<String, dynamic>);
}

Map<String, dynamic> _$ReadCourse$Query$CourseToJson(
        ReadCourse$Query$Course instance) =>
    <String, dynamic>{
      'content': instance.content,
      'interaction': instance.interaction?.toJson(),
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

CreateComment$Mutation$Comment _$CreateComment$Mutation$CommentFromJson(
    Map<String, dynamic> json) {
  return CreateComment$Mutation$Comment()
    ..id = json['id'] as String
    ..score = json['score'] as int
    ..created_at = json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String)
    ..content = json['content'] as String
    ..user = json['user'] == null
        ? null
        : CreateComment$Mutation$Comment$User.fromJson(
            json['user'] as Map<String, dynamic>)
    ..children = (json['children'] as List)
        ?.map((e) => e == null
            ? null
            : CreateComment$Mutation$Comment$Comment.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$CreateComment$Mutation$CommentToJson(
        CreateComment$Mutation$Comment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'score': instance.score,
      'created_at': instance.created_at?.toIso8601String(),
      'content': instance.content,
      'user': instance.user?.toJson(),
      'children': instance.children?.map((e) => e?.toJson())?.toList(),
    };

CreateComment$Mutation _$CreateComment$MutationFromJson(
    Map<String, dynamic> json) {
  return CreateComment$Mutation()
    ..createComment = json['createComment'] == null
        ? null
        : CreateComment$Mutation$Comment.fromJson(
            json['createComment'] as Map<String, dynamic>);
}

Map<String, dynamic> _$CreateComment$MutationToJson(
        CreateComment$Mutation instance) =>
    <String, dynamic>{
      'createComment': instance.createComment?.toJson(),
    };

CreateComment$CreateComment _$CreateComment$CreateCommentFromJson(
    Map<String, dynamic> json) {
  return CreateComment$CreateComment(
    commentable_id: json['commentable_id'] as String,
    commentable_type: _$enumDecodeNullable(
        _$CreateComment$CreateComment$CommentableTypeEnumMap,
        json['commentable_type'],
        unknownValue:
            CreateComment$CreateComment$CommentableType.ARTEMIS_UNKNOWN),
    content: json['content'] as String,
    parent_id: json['parent_id'] as String,
  );
}

Map<String, dynamic> _$CreateComment$CreateCommentToJson(
        CreateComment$CreateComment instance) =>
    <String, dynamic>{
      'commentable_id': instance.commentable_id,
      'commentable_type': _$CreateComment$CreateComment$CommentableTypeEnumMap[
          instance.commentable_type],
      'content': instance.content,
      'parent_id': instance.parent_id,
    };

const _$CreateComment$CreateComment$CommentableTypeEnumMap = {
  CreateComment$CreateComment$CommentableType.course: 'course',
  CreateComment$CreateComment$CommentableType.exam: 'exam',
  CreateComment$CreateComment$CommentableType.exercise: 'exercise',
  CreateComment$CreateComment$CommentableType.flashcard: 'flashcard',
  CreateComment$CreateComment$CommentableType.ARTEMIS_UNKNOWN:
      'ARTEMIS_UNKNOWN',
};

CreateComment$Mutation$Comment$User
    _$CreateComment$Mutation$Comment$UserFromJson(Map<String, dynamic> json) {
  return CreateComment$Mutation$Comment$User()
    ..id = json['id'] as String
    ..username = json['username'] as String;
}

Map<String, dynamic> _$CreateComment$Mutation$Comment$UserToJson(
        CreateComment$Mutation$Comment$User instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
    };

CreateComment$Mutation$Comment$Comment$User
    _$CreateComment$Mutation$Comment$Comment$UserFromJson(
        Map<String, dynamic> json) {
  return CreateComment$Mutation$Comment$Comment$User()
    ..id = json['id'] as String
    ..username = json['username'] as String;
}

Map<String, dynamic> _$CreateComment$Mutation$Comment$Comment$UserToJson(
        CreateComment$Mutation$Comment$Comment$User instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
    };

CreateComment$Mutation$Comment$Comment$Vote$User
    _$CreateComment$Mutation$Comment$Comment$Vote$UserFromJson(
        Map<String, dynamic> json) {
  return CreateComment$Mutation$Comment$Comment$Vote$User()
    ..id = json['id'] as String;
}

Map<String, dynamic> _$CreateComment$Mutation$Comment$Comment$Vote$UserToJson(
        CreateComment$Mutation$Comment$Comment$Vote$User instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

CreateComment$Mutation$Comment$Comment$Vote
    _$CreateComment$Mutation$Comment$Comment$VoteFromJson(
        Map<String, dynamic> json) {
  return CreateComment$Mutation$Comment$Comment$Vote()
    ..value = _$enumDecodeNullable(
        _$CreateComment$Mutation$Comment$Comment$Vote$VoteValueEnumMap,
        json['value'],
        unknownValue: CreateComment$Mutation$Comment$Comment$Vote$VoteValue
            .ARTEMIS_UNKNOWN)
    ..user = json['user'] == null
        ? null
        : CreateComment$Mutation$Comment$Comment$Vote$User.fromJson(
            json['user'] as Map<String, dynamic>);
}

Map<String, dynamic> _$CreateComment$Mutation$Comment$Comment$VoteToJson(
        CreateComment$Mutation$Comment$Comment$Vote instance) =>
    <String, dynamic>{
      'value': _$CreateComment$Mutation$Comment$Comment$Vote$VoteValueEnumMap[
          instance.value],
      'user': instance.user?.toJson(),
    };

const _$CreateComment$Mutation$Comment$Comment$Vote$VoteValueEnumMap = {
  CreateComment$Mutation$Comment$Comment$Vote$VoteValue.down: 'down',
  CreateComment$Mutation$Comment$Comment$Vote$VoteValue.up: 'up',
  CreateComment$Mutation$Comment$Comment$Vote$VoteValue.ARTEMIS_UNKNOWN:
      'ARTEMIS_UNKNOWN',
};

CreateComment$Mutation$Comment$Comment
    _$CreateComment$Mutation$Comment$CommentFromJson(
        Map<String, dynamic> json) {
  return CreateComment$Mutation$Comment$Comment()
    ..id = json['id'] as String
    ..score = json['score'] as int
    ..created_at = json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String)
    ..content = json['content'] as String
    ..user = json['user'] == null
        ? null
        : CreateComment$Mutation$Comment$Comment$User.fromJson(
            json['user'] as Map<String, dynamic>)
    ..vote = json['vote'] == null
        ? null
        : CreateComment$Mutation$Comment$Comment$Vote.fromJson(
            json['vote'] as Map<String, dynamic>);
}

Map<String, dynamic> _$CreateComment$Mutation$Comment$CommentToJson(
        CreateComment$Mutation$Comment$Comment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'score': instance.score,
      'created_at': instance.created_at?.toIso8601String(),
      'content': instance.content,
      'user': instance.user?.toJson(),
      'vote': instance.vote?.toJson(),
    };

CreateCommentArguments _$CreateCommentArgumentsFromJson(
    Map<String, dynamic> json) {
  return CreateCommentArguments(
    input: json['input'] == null
        ? null
        : CreateComment$CreateComment.fromJson(
            json['input'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CreateCommentArgumentsToJson(
        CreateCommentArguments instance) =>
    <String, dynamic>{
      'input': instance.input?.toJson(),
    };

DeleteComment$Mutation$Comment _$DeleteComment$Mutation$CommentFromJson(
    Map<String, dynamic> json) {
  return DeleteComment$Mutation$Comment()
    ..id = json['id'] as String
    ..score = json['score'] as int
    ..created_at = json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String)
    ..content = json['content'] as String
    ..user = json['user'] == null
        ? null
        : DeleteComment$Mutation$Comment$User.fromJson(
            json['user'] as Map<String, dynamic>)
    ..children = (json['children'] as List)
        ?.map((e) => e == null
            ? null
            : DeleteComment$Mutation$Comment$Comment.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$DeleteComment$Mutation$CommentToJson(
        DeleteComment$Mutation$Comment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'score': instance.score,
      'created_at': instance.created_at?.toIso8601String(),
      'content': instance.content,
      'user': instance.user?.toJson(),
      'children': instance.children?.map((e) => e?.toJson())?.toList(),
    };

DeleteComment$Mutation _$DeleteComment$MutationFromJson(
    Map<String, dynamic> json) {
  return DeleteComment$Mutation()
    ..deleteComment = json['deleteComment'] == null
        ? null
        : DeleteComment$Mutation$Comment.fromJson(
            json['deleteComment'] as Map<String, dynamic>);
}

Map<String, dynamic> _$DeleteComment$MutationToJson(
        DeleteComment$Mutation instance) =>
    <String, dynamic>{
      'deleteComment': instance.deleteComment?.toJson(),
    };

DeleteComment$Mutation$Comment$User
    _$DeleteComment$Mutation$Comment$UserFromJson(Map<String, dynamic> json) {
  return DeleteComment$Mutation$Comment$User()
    ..id = json['id'] as String
    ..username = json['username'] as String;
}

Map<String, dynamic> _$DeleteComment$Mutation$Comment$UserToJson(
        DeleteComment$Mutation$Comment$User instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
    };

DeleteComment$Mutation$Comment$Comment$User
    _$DeleteComment$Mutation$Comment$Comment$UserFromJson(
        Map<String, dynamic> json) {
  return DeleteComment$Mutation$Comment$Comment$User()
    ..id = json['id'] as String
    ..username = json['username'] as String;
}

Map<String, dynamic> _$DeleteComment$Mutation$Comment$Comment$UserToJson(
        DeleteComment$Mutation$Comment$Comment$User instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
    };

DeleteComment$Mutation$Comment$Comment$Vote$User
    _$DeleteComment$Mutation$Comment$Comment$Vote$UserFromJson(
        Map<String, dynamic> json) {
  return DeleteComment$Mutation$Comment$Comment$Vote$User()
    ..id = json['id'] as String;
}

Map<String, dynamic> _$DeleteComment$Mutation$Comment$Comment$Vote$UserToJson(
        DeleteComment$Mutation$Comment$Comment$Vote$User instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

DeleteComment$Mutation$Comment$Comment$Vote
    _$DeleteComment$Mutation$Comment$Comment$VoteFromJson(
        Map<String, dynamic> json) {
  return DeleteComment$Mutation$Comment$Comment$Vote()
    ..value = _$enumDecodeNullable(
        _$DeleteComment$Mutation$Comment$Comment$Vote$VoteValueEnumMap,
        json['value'],
        unknownValue: DeleteComment$Mutation$Comment$Comment$Vote$VoteValue
            .ARTEMIS_UNKNOWN)
    ..user = json['user'] == null
        ? null
        : DeleteComment$Mutation$Comment$Comment$Vote$User.fromJson(
            json['user'] as Map<String, dynamic>);
}

Map<String, dynamic> _$DeleteComment$Mutation$Comment$Comment$VoteToJson(
        DeleteComment$Mutation$Comment$Comment$Vote instance) =>
    <String, dynamic>{
      'value': _$DeleteComment$Mutation$Comment$Comment$Vote$VoteValueEnumMap[
          instance.value],
      'user': instance.user?.toJson(),
    };

const _$DeleteComment$Mutation$Comment$Comment$Vote$VoteValueEnumMap = {
  DeleteComment$Mutation$Comment$Comment$Vote$VoteValue.down: 'down',
  DeleteComment$Mutation$Comment$Comment$Vote$VoteValue.up: 'up',
  DeleteComment$Mutation$Comment$Comment$Vote$VoteValue.ARTEMIS_UNKNOWN:
      'ARTEMIS_UNKNOWN',
};

DeleteComment$Mutation$Comment$Comment
    _$DeleteComment$Mutation$Comment$CommentFromJson(
        Map<String, dynamic> json) {
  return DeleteComment$Mutation$Comment$Comment()
    ..id = json['id'] as String
    ..score = json['score'] as int
    ..created_at = json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String)
    ..content = json['content'] as String
    ..user = json['user'] == null
        ? null
        : DeleteComment$Mutation$Comment$Comment$User.fromJson(
            json['user'] as Map<String, dynamic>)
    ..vote = json['vote'] == null
        ? null
        : DeleteComment$Mutation$Comment$Comment$Vote.fromJson(
            json['vote'] as Map<String, dynamic>);
}

Map<String, dynamic> _$DeleteComment$Mutation$Comment$CommentToJson(
        DeleteComment$Mutation$Comment$Comment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'score': instance.score,
      'created_at': instance.created_at?.toIso8601String(),
      'content': instance.content,
      'user': instance.user?.toJson(),
      'vote': instance.vote?.toJson(),
    };

DeleteCommentArguments _$DeleteCommentArgumentsFromJson(
    Map<String, dynamic> json) {
  return DeleteCommentArguments(
    id: json['id'] as String,
  );
}

Map<String, dynamic> _$DeleteCommentArgumentsToJson(
        DeleteCommentArguments instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

ListDisciplines$Query$Discipline _$ListDisciplines$Query$DisciplineFromJson(
    Map<String, dynamic> json) {
  return ListDisciplines$Query$Discipline()
    ..id = json['id'] as String
    ..name = json['name'] as String
    ..slug = json['slug'] as String;
}

Map<String, dynamic> _$ListDisciplines$Query$DisciplineToJson(
        ListDisciplines$Query$Discipline instance) =>
    <String, dynamic>{
      'id': instance.id,
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

ReadExam$Query$Exam$Interaction _$ReadExam$Query$Exam$InteractionFromJson(
    Map<String, dynamic> json) {
  return ReadExam$Query$Exam$Interaction()
    ..comprehension = _$enumDecodeNullable(
        _$ReadExam$Query$Exam$Interaction$InteractionComprehensionEnumMap,
        json['comprehension'],
        unknownValue: ReadExam$Query$Exam$Interaction$InteractionComprehension
            .ARTEMIS_UNKNOWN)
    ..score = json['score'] as int
    ..total = json['total'] as int
    ..watchtime = json['watchtime'] as int;
}

Map<String, dynamic> _$ReadExam$Query$Exam$InteractionToJson(
        ReadExam$Query$Exam$Interaction instance) =>
    <String, dynamic>{
      'comprehension':
          _$ReadExam$Query$Exam$Interaction$InteractionComprehensionEnumMap[
              instance.comprehension],
      'score': instance.score,
      'total': instance.total,
      'watchtime': instance.watchtime,
    };

const _$ReadExam$Query$Exam$Interaction$InteractionComprehensionEnumMap = {
  ReadExam$Query$Exam$Interaction$InteractionComprehension.blur: 'blur',
  ReadExam$Query$Exam$Interaction$InteractionComprehension.clear: 'clear',
  ReadExam$Query$Exam$Interaction$InteractionComprehension.ARTEMIS_UNKNOWN:
      'ARTEMIS_UNKNOWN',
};

ReadExam$Query$Exam _$ReadExam$Query$ExamFromJson(Map<String, dynamic> json) {
  return ReadExam$Query$Exam()
    ..name = json['name'] as String
    ..content = json['content'] as List
    ..duration = json['duration'] as int
    ..interaction = json['interaction'] == null
        ? null
        : ReadExam$Query$Exam$Interaction.fromJson(
            json['interaction'] as Map<String, dynamic>);
}

Map<String, dynamic> _$ReadExam$Query$ExamToJson(
        ReadExam$Query$Exam instance) =>
    <String, dynamic>{
      'name': instance.name,
      'content': instance.content,
      'duration': instance.duration,
      'interaction': instance.interaction?.toJson(),
    };

ReadExam$Query _$ReadExam$QueryFromJson(Map<String, dynamic> json) {
  return ReadExam$Query()
    ..readExam = json['readExam'] == null
        ? null
        : ReadExam$Query$Exam.fromJson(
            json['readExam'] as Map<String, dynamic>);
}

Map<String, dynamic> _$ReadExam$QueryToJson(ReadExam$Query instance) =>
    <String, dynamic>{
      'readExam': instance.readExam?.toJson(),
    };

ReadExamArguments _$ReadExamArgumentsFromJson(Map<String, dynamic> json) {
  return ReadExamArguments(
    id: json['id'] as String,
  );
}

Map<String, dynamic> _$ReadExamArgumentsToJson(ReadExamArguments instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

LoginWithFacebook$Mutation$JWT _$LoginWithFacebook$Mutation$JWTFromJson(
    Map<String, dynamic> json) {
  return LoginWithFacebook$Mutation$JWT()..token = json['token'] as String;
}

Map<String, dynamic> _$LoginWithFacebook$Mutation$JWTToJson(
        LoginWithFacebook$Mutation$JWT instance) =>
    <String, dynamic>{
      'token': instance.token,
    };

LoginWithFacebook$Mutation _$LoginWithFacebook$MutationFromJson(
    Map<String, dynamic> json) {
  return LoginWithFacebook$Mutation()
    ..loginWithFacebook = json['loginWithFacebook'] == null
        ? null
        : LoginWithFacebook$Mutation$JWT.fromJson(
            json['loginWithFacebook'] as Map<String, dynamic>);
}

Map<String, dynamic> _$LoginWithFacebook$MutationToJson(
        LoginWithFacebook$Mutation instance) =>
    <String, dynamic>{
      'loginWithFacebook': instance.loginWithFacebook?.toJson(),
    };

LoginWithFacebookArguments _$LoginWithFacebookArgumentsFromJson(
    Map<String, dynamic> json) {
  return LoginWithFacebookArguments(
    accessToken: json['accessToken'] as String,
  );
}

Map<String, dynamic> _$LoginWithFacebookArgumentsToJson(
        LoginWithFacebookArguments instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
    };

ReadFlashcard$Query$Flashcard$FlashcardContent
    _$ReadFlashcard$Query$Flashcard$FlashcardContentFromJson(
        Map<String, dynamic> json) {
  return ReadFlashcard$Query$Flashcard$FlashcardContent()
    ..front = json['front'] as List
    ..back = json['back'] as List;
}

Map<String, dynamic> _$ReadFlashcard$Query$Flashcard$FlashcardContentToJson(
        ReadFlashcard$Query$Flashcard$FlashcardContent instance) =>
    <String, dynamic>{
      'front': instance.front,
      'back': instance.back,
    };

ReadFlashcard$Query$Flashcard$Interaction
    _$ReadFlashcard$Query$Flashcard$InteractionFromJson(
        Map<String, dynamic> json) {
  return ReadFlashcard$Query$Flashcard$Interaction()
    ..comprehension = _$enumDecodeNullable(
        _$ReadFlashcard$Query$Interaction$InteractionComprehensionEnumMap,
        json['comprehension'],
        unknownValue: ReadFlashcard$Query$Interaction$InteractionComprehension
            .ARTEMIS_UNKNOWN)
    ..interactable_id = json['interactable_id'] as int
    ..interactable_type = _$enumDecodeNullable(
        _$ReadFlashcard$Query$Interaction$InteractionTypeEnumMap,
        json['interactable_type'],
        unknownValue:
            ReadFlashcard$Query$Interaction$InteractionType.ARTEMIS_UNKNOWN)
    ..score = json['score'] as int
    ..total = json['total'] as int
    ..user_id = json['user_id'] as int
    ..watchtime = json['watchtime'] as int;
}

Map<String, dynamic> _$ReadFlashcard$Query$Flashcard$InteractionToJson(
        ReadFlashcard$Query$Flashcard$Interaction instance) =>
    <String, dynamic>{
      'comprehension':
          _$ReadFlashcard$Query$Interaction$InteractionComprehensionEnumMap[
              instance.comprehension],
      'interactable_id': instance.interactable_id,
      'interactable_type':
          _$ReadFlashcard$Query$Interaction$InteractionTypeEnumMap[
              instance.interactable_type],
      'score': instance.score,
      'total': instance.total,
      'user_id': instance.user_id,
      'watchtime': instance.watchtime,
    };

const _$ReadFlashcard$Query$Interaction$InteractionComprehensionEnumMap = {
  ReadFlashcard$Query$Interaction$InteractionComprehension.blur: 'blur',
  ReadFlashcard$Query$Interaction$InteractionComprehension.clear: 'clear',
  ReadFlashcard$Query$Interaction$InteractionComprehension.ARTEMIS_UNKNOWN:
      'ARTEMIS_UNKNOWN',
};

const _$ReadFlashcard$Query$Interaction$InteractionTypeEnumMap = {
  ReadFlashcard$Query$Interaction$InteractionType.course: 'course',
  ReadFlashcard$Query$Interaction$InteractionType.exam: 'exam',
  ReadFlashcard$Query$Interaction$InteractionType.exercise: 'exercise',
  ReadFlashcard$Query$Interaction$InteractionType.flashcard: 'flashcard',
  ReadFlashcard$Query$Interaction$InteractionType.subject: 'subject',
  ReadFlashcard$Query$Interaction$InteractionType.ARTEMIS_UNKNOWN:
      'ARTEMIS_UNKNOWN',
};

ReadFlashcard$Query$Flashcard _$ReadFlashcard$Query$FlashcardFromJson(
    Map<String, dynamic> json) {
  return ReadFlashcard$Query$Flashcard()
    ..content = (json['content'] as List)
        ?.map((e) => e == null
            ? null
            : ReadFlashcard$Query$Flashcard$FlashcardContent.fromJson(
                e as Map<String, dynamic>))
        ?.toList()
    ..interaction = json['interaction'] == null
        ? null
        : ReadFlashcard$Query$Flashcard$Interaction.fromJson(
            json['interaction'] as Map<String, dynamic>);
}

Map<String, dynamic> _$ReadFlashcard$Query$FlashcardToJson(
        ReadFlashcard$Query$Flashcard instance) =>
    <String, dynamic>{
      'content': instance.content?.map((e) => e?.toJson())?.toList(),
      'interaction': instance.interaction?.toJson(),
    };

ReadFlashcard$Query _$ReadFlashcard$QueryFromJson(Map<String, dynamic> json) {
  return ReadFlashcard$Query()
    ..readFlashcard = json['readFlashcard'] == null
        ? null
        : ReadFlashcard$Query$Flashcard.fromJson(
            json['readFlashcard'] as Map<String, dynamic>);
}

Map<String, dynamic> _$ReadFlashcard$QueryToJson(
        ReadFlashcard$Query instance) =>
    <String, dynamic>{
      'readFlashcard': instance.readFlashcard?.toJson(),
    };

ReadFlashcardArguments _$ReadFlashcardArgumentsFromJson(
    Map<String, dynamic> json) {
  return ReadFlashcardArguments(
    id: json['id'] as String,
  );
}

Map<String, dynamic> _$ReadFlashcardArgumentsToJson(
        ReadFlashcardArguments instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

LoginWithGoogle$Mutation$JWT _$LoginWithGoogle$Mutation$JWTFromJson(
    Map<String, dynamic> json) {
  return LoginWithGoogle$Mutation$JWT()..token = json['token'] as String;
}

Map<String, dynamic> _$LoginWithGoogle$Mutation$JWTToJson(
        LoginWithGoogle$Mutation$JWT instance) =>
    <String, dynamic>{
      'token': instance.token,
    };

LoginWithGoogle$Mutation _$LoginWithGoogle$MutationFromJson(
    Map<String, dynamic> json) {
  return LoginWithGoogle$Mutation()
    ..loginWithGoogle = json['loginWithGoogle'] == null
        ? null
        : LoginWithGoogle$Mutation$JWT.fromJson(
            json['loginWithGoogle'] as Map<String, dynamic>);
}

Map<String, dynamic> _$LoginWithGoogle$MutationToJson(
        LoginWithGoogle$Mutation instance) =>
    <String, dynamic>{
      'loginWithGoogle': instance.loginWithGoogle?.toJson(),
    };

LoginWithGoogleArguments _$LoginWithGoogleArgumentsFromJson(
    Map<String, dynamic> json) {
  return LoginWithGoogleArguments(
    accessToken: json['accessToken'] as String,
  );
}

Map<String, dynamic> _$LoginWithGoogleArgumentsToJson(
        LoginWithGoogleArguments instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
    };

ListGrades$Query$Grade _$ListGrades$Query$GradeFromJson(
    Map<String, dynamic> json) {
  return ListGrades$Query$Grade()
    ..id = json['id'] as String
    ..name = json['name'] as String
    ..slug = json['slug'] as String;
}

Map<String, dynamic> _$ListGrades$Query$GradeToJson(
        ListGrades$Query$Grade instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
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

Interact$Mutation _$Interact$MutationFromJson(Map<String, dynamic> json) {
  return Interact$Mutation()..interact = json['interact'] as bool;
}

Map<String, dynamic> _$Interact$MutationToJson(Interact$Mutation instance) =>
    <String, dynamic>{
      'interact': instance.interact,
    };

Interact$CreateInteraction _$Interact$CreateInteractionFromJson(
    Map<String, dynamic> json) {
  return Interact$CreateInteraction(
    comprehension: _$enumDecodeNullable(
        _$Interact$CreateInteraction$InteractionComprehensionEnumMap,
        json['comprehension'],
        unknownValue: Interact$CreateInteraction$InteractionComprehension
            .ARTEMIS_UNKNOWN),
    interactable_id: json['interactable_id'] as String,
    interactable_type: _$enumDecodeNullable(
        _$Interact$CreateInteraction$InteractionTypeEnumMap,
        json['interactable_type'],
        unknownValue:
            Interact$CreateInteraction$InteractionType.ARTEMIS_UNKNOWN),
    score: json['score'] as int,
    total: json['total'] as int,
    watchtime: json['watchtime'] as int,
  );
}

Map<String, dynamic> _$Interact$CreateInteractionToJson(
        Interact$CreateInteraction instance) =>
    <String, dynamic>{
      'comprehension':
          _$Interact$CreateInteraction$InteractionComprehensionEnumMap[
              instance.comprehension],
      'interactable_id': instance.interactable_id,
      'interactable_type': _$Interact$CreateInteraction$InteractionTypeEnumMap[
          instance.interactable_type],
      'score': instance.score,
      'total': instance.total,
      'watchtime': instance.watchtime,
    };

const _$Interact$CreateInteraction$InteractionComprehensionEnumMap = {
  Interact$CreateInteraction$InteractionComprehension.blur: 'blur',
  Interact$CreateInteraction$InteractionComprehension.clear: 'clear',
  Interact$CreateInteraction$InteractionComprehension.ARTEMIS_UNKNOWN:
      'ARTEMIS_UNKNOWN',
};

const _$Interact$CreateInteraction$InteractionTypeEnumMap = {
  Interact$CreateInteraction$InteractionType.course: 'course',
  Interact$CreateInteraction$InteractionType.exam: 'exam',
  Interact$CreateInteraction$InteractionType.exercise: 'exercise',
  Interact$CreateInteraction$InteractionType.flashcard: 'flashcard',
  Interact$CreateInteraction$InteractionType.subject: 'subject',
  Interact$CreateInteraction$InteractionType.ARTEMIS_UNKNOWN: 'ARTEMIS_UNKNOWN',
};

InteractArguments _$InteractArgumentsFromJson(Map<String, dynamic> json) {
  return InteractArguments(
    input: json['input'] == null
        ? null
        : Interact$CreateInteraction.fromJson(
            json['input'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$InteractArgumentsToJson(InteractArguments instance) =>
    <String, dynamic>{
      'input': instance.input?.toJson(),
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

ReadSubject$Query$Subject$Exercise$Interaction
    _$ReadSubject$Query$Subject$Exercise$InteractionFromJson(
        Map<String, dynamic> json) {
  return ReadSubject$Query$Subject$Exercise$Interaction()
    ..score = json['score'] as int
    ..total = json['total'] as int;
}

Map<String, dynamic> _$ReadSubject$Query$Subject$Exercise$InteractionToJson(
        ReadSubject$Query$Subject$Exercise$Interaction instance) =>
    <String, dynamic>{
      'score': instance.score,
      'total': instance.total,
    };

ReadSubject$Query$Subject$Exercise _$ReadSubject$Query$Subject$ExerciseFromJson(
    Map<String, dynamic> json) {
  return ReadSubject$Query$Subject$Exercise()
    ..content = json['content'] as List
    ..interaction = json['interaction'] == null
        ? null
        : ReadSubject$Query$Subject$Exercise$Interaction.fromJson(
            json['interaction'] as Map<String, dynamic>);
}

Map<String, dynamic> _$ReadSubject$Query$Subject$ExerciseToJson(
        ReadSubject$Query$Subject$Exercise instance) =>
    <String, dynamic>{
      'content': instance.content,
      'interaction': instance.interaction?.toJson(),
    };

ReadSubject$Query$Subject _$ReadSubject$Query$SubjectFromJson(
    Map<String, dynamic> json) {
  return ReadSubject$Query$Subject()
    ..exercises = (json['exercises'] as List)
        ?.map((e) => e == null
            ? null
            : ReadSubject$Query$Subject$Exercise.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$ReadSubject$Query$SubjectToJson(
        ReadSubject$Query$Subject instance) =>
    <String, dynamic>{
      'exercises': instance.exercises?.map((e) => e?.toJson())?.toList(),
    };

ReadSubject$Query _$ReadSubject$QueryFromJson(Map<String, dynamic> json) {
  return ReadSubject$Query()
    ..readSubject = json['readSubject'] == null
        ? null
        : ReadSubject$Query$Subject.fromJson(
            json['readSubject'] as Map<String, dynamic>);
}

Map<String, dynamic> _$ReadSubject$QueryToJson(ReadSubject$Query instance) =>
    <String, dynamic>{
      'readSubject': instance.readSubject?.toJson(),
    };

ReadSubjectArguments _$ReadSubjectArgumentsFromJson(Map<String, dynamic> json) {
  return ReadSubjectArguments(
    id: json['id'] as String,
  );
}

Map<String, dynamic> _$ReadSubjectArgumentsToJson(
        ReadSubjectArguments instance) =>
    <String, dynamic>{
      'id': instance.id,
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

ListTrainings$Query$Training$Grade _$ListTrainings$Query$Training$GradeFromJson(
    Map<String, dynamic> json) {
  return ListTrainings$Query$Training$Grade()..name = json['name'] as String;
}

Map<String, dynamic> _$ListTrainings$Query$Training$GradeToJson(
        ListTrainings$Query$Training$Grade instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

ListTrainings$Query$Training _$ListTrainings$Query$TrainingFromJson(
    Map<String, dynamic> json) {
  return ListTrainings$Query$Training()
    ..id = json['id'] as String
    ..name = json['name'] as String
    ..available = json['available'] as bool
    ..owned = json['owned'] as bool
    ..duration = json['duration'] as int
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
      'available': instance.available,
      'owned': instance.owned,
      'duration': instance.duration,
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

UpdateComment$Mutation$Comment _$UpdateComment$Mutation$CommentFromJson(
    Map<String, dynamic> json) {
  return UpdateComment$Mutation$Comment()
    ..id = json['id'] as String
    ..score = json['score'] as int
    ..created_at = json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String)
    ..content = json['content'] as String
    ..user = json['user'] == null
        ? null
        : UpdateComment$Mutation$Comment$User.fromJson(
            json['user'] as Map<String, dynamic>)
    ..children = (json['children'] as List)
        ?.map((e) => e == null
            ? null
            : UpdateComment$Mutation$Comment$Comment.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$UpdateComment$Mutation$CommentToJson(
        UpdateComment$Mutation$Comment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'score': instance.score,
      'created_at': instance.created_at?.toIso8601String(),
      'content': instance.content,
      'user': instance.user?.toJson(),
      'children': instance.children?.map((e) => e?.toJson())?.toList(),
    };

UpdateComment$Mutation _$UpdateComment$MutationFromJson(
    Map<String, dynamic> json) {
  return UpdateComment$Mutation()
    ..updateComment = json['updateComment'] == null
        ? null
        : UpdateComment$Mutation$Comment.fromJson(
            json['updateComment'] as Map<String, dynamic>);
}

Map<String, dynamic> _$UpdateComment$MutationToJson(
        UpdateComment$Mutation instance) =>
    <String, dynamic>{
      'updateComment': instance.updateComment?.toJson(),
    };

UpdateComment$UpdateComment _$UpdateComment$UpdateCommentFromJson(
    Map<String, dynamic> json) {
  return UpdateComment$UpdateComment(
    content: json['content'] as String,
    id: json['id'] as String,
  );
}

Map<String, dynamic> _$UpdateComment$UpdateCommentToJson(
        UpdateComment$UpdateComment instance) =>
    <String, dynamic>{
      'content': instance.content,
      'id': instance.id,
    };

UpdateComment$Mutation$Comment$User
    _$UpdateComment$Mutation$Comment$UserFromJson(Map<String, dynamic> json) {
  return UpdateComment$Mutation$Comment$User()
    ..id = json['id'] as String
    ..username = json['username'] as String;
}

Map<String, dynamic> _$UpdateComment$Mutation$Comment$UserToJson(
        UpdateComment$Mutation$Comment$User instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
    };

UpdateComment$Mutation$Comment$Comment$User
    _$UpdateComment$Mutation$Comment$Comment$UserFromJson(
        Map<String, dynamic> json) {
  return UpdateComment$Mutation$Comment$Comment$User()
    ..id = json['id'] as String
    ..username = json['username'] as String;
}

Map<String, dynamic> _$UpdateComment$Mutation$Comment$Comment$UserToJson(
        UpdateComment$Mutation$Comment$Comment$User instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
    };

UpdateComment$Mutation$Comment$Comment$Vote$User
    _$UpdateComment$Mutation$Comment$Comment$Vote$UserFromJson(
        Map<String, dynamic> json) {
  return UpdateComment$Mutation$Comment$Comment$Vote$User()
    ..id = json['id'] as String;
}

Map<String, dynamic> _$UpdateComment$Mutation$Comment$Comment$Vote$UserToJson(
        UpdateComment$Mutation$Comment$Comment$Vote$User instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

UpdateComment$Mutation$Comment$Comment$Vote
    _$UpdateComment$Mutation$Comment$Comment$VoteFromJson(
        Map<String, dynamic> json) {
  return UpdateComment$Mutation$Comment$Comment$Vote()
    ..value = _$enumDecodeNullable(
        _$UpdateComment$Mutation$Comment$Comment$Vote$VoteValueEnumMap,
        json['value'],
        unknownValue: UpdateComment$Mutation$Comment$Comment$Vote$VoteValue
            .ARTEMIS_UNKNOWN)
    ..user = json['user'] == null
        ? null
        : UpdateComment$Mutation$Comment$Comment$Vote$User.fromJson(
            json['user'] as Map<String, dynamic>);
}

Map<String, dynamic> _$UpdateComment$Mutation$Comment$Comment$VoteToJson(
        UpdateComment$Mutation$Comment$Comment$Vote instance) =>
    <String, dynamic>{
      'value': _$UpdateComment$Mutation$Comment$Comment$Vote$VoteValueEnumMap[
          instance.value],
      'user': instance.user?.toJson(),
    };

const _$UpdateComment$Mutation$Comment$Comment$Vote$VoteValueEnumMap = {
  UpdateComment$Mutation$Comment$Comment$Vote$VoteValue.down: 'down',
  UpdateComment$Mutation$Comment$Comment$Vote$VoteValue.up: 'up',
  UpdateComment$Mutation$Comment$Comment$Vote$VoteValue.ARTEMIS_UNKNOWN:
      'ARTEMIS_UNKNOWN',
};

UpdateComment$Mutation$Comment$Comment
    _$UpdateComment$Mutation$Comment$CommentFromJson(
        Map<String, dynamic> json) {
  return UpdateComment$Mutation$Comment$Comment()
    ..id = json['id'] as String
    ..score = json['score'] as int
    ..created_at = json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String)
    ..content = json['content'] as String
    ..user = json['user'] == null
        ? null
        : UpdateComment$Mutation$Comment$Comment$User.fromJson(
            json['user'] as Map<String, dynamic>)
    ..vote = json['vote'] == null
        ? null
        : UpdateComment$Mutation$Comment$Comment$Vote.fromJson(
            json['vote'] as Map<String, dynamic>);
}

Map<String, dynamic> _$UpdateComment$Mutation$Comment$CommentToJson(
        UpdateComment$Mutation$Comment$Comment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'score': instance.score,
      'created_at': instance.created_at?.toIso8601String(),
      'content': instance.content,
      'user': instance.user?.toJson(),
      'vote': instance.vote?.toJson(),
    };

UpdateCommentArguments _$UpdateCommentArgumentsFromJson(
    Map<String, dynamic> json) {
  return UpdateCommentArguments(
    input: json['input'] == null
        ? null
        : UpdateComment$UpdateComment.fromJson(
            json['input'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$UpdateCommentArgumentsToJson(
        UpdateCommentArguments instance) =>
    <String, dynamic>{
      'input': instance.input?.toJson(),
    };

UpdateMe$Mutation$User _$UpdateMe$Mutation$UserFromJson(
    Map<String, dynamic> json) {
  return UpdateMe$Mutation$User()
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
            : UpdateMe$Mutation$User$Training.fromJson(
                e as Map<String, dynamic>))
        ?.toList()
    ..grade = json['grade'] == null
        ? null
        : UpdateMe$Mutation$User$Grade.fromJson(
            json['grade'] as Map<String, dynamic>);
}

Map<String, dynamic> _$UpdateMe$Mutation$UserToJson(
        UpdateMe$Mutation$User instance) =>
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

UpdateMe$Mutation _$UpdateMe$MutationFromJson(Map<String, dynamic> json) {
  return UpdateMe$Mutation()
    ..updateMe = json['updateMe'] == null
        ? null
        : UpdateMe$Mutation$User.fromJson(
            json['updateMe'] as Map<String, dynamic>);
}

Map<String, dynamic> _$UpdateMe$MutationToJson(UpdateMe$Mutation instance) =>
    <String, dynamic>{
      'updateMe': instance.updateMe?.toJson(),
    };

UpdateMe$UpdateMe _$UpdateMe$UpdateMeFromJson(Map<String, dynamic> json) {
  return UpdateMe$UpdateMe(
    email: json['email'] as String,
    firstname: json['firstname'] as String,
    grade_id: json['grade_id'] as String,
    lastname: json['lastname'] as String,
    password: json['password'] as String,
    username: json['username'] as String,
  );
}

Map<String, dynamic> _$UpdateMe$UpdateMeToJson(UpdateMe$UpdateMe instance) =>
    <String, dynamic>{
      'email': instance.email,
      'firstname': instance.firstname,
      'grade_id': instance.grade_id,
      'lastname': instance.lastname,
      'password': instance.password,
      'username': instance.username,
    };

UpdateMe$Mutation$User$Training _$UpdateMe$Mutation$User$TrainingFromJson(
    Map<String, dynamic> json) {
  return UpdateMe$Mutation$User$Training()..id = json['id'] as String;
}

Map<String, dynamic> _$UpdateMe$Mutation$User$TrainingToJson(
        UpdateMe$Mutation$User$Training instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

UpdateMe$Mutation$User$Grade$Discipline
    _$UpdateMe$Mutation$User$Grade$DisciplineFromJson(
        Map<String, dynamic> json) {
  return UpdateMe$Mutation$User$Grade$Discipline()
    ..id = json['id'] as String
    ..name = json['name'] as String
    ..slug = json['slug'] as String;
}

Map<String, dynamic> _$UpdateMe$Mutation$User$Grade$DisciplineToJson(
        UpdateMe$Mutation$User$Grade$Discipline instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
    };

UpdateMe$Mutation$User$Grade _$UpdateMe$Mutation$User$GradeFromJson(
    Map<String, dynamic> json) {
  return UpdateMe$Mutation$User$Grade()
    ..id = json['id'] as String
    ..name = json['name'] as String
    ..slug = json['slug'] as String
    ..disciplines = (json['disciplines'] as List)
        ?.map((e) => e == null
            ? null
            : UpdateMe$Mutation$User$Grade$Discipline.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$UpdateMe$Mutation$User$GradeToJson(
        UpdateMe$Mutation$User$Grade instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'disciplines': instance.disciplines?.map((e) => e?.toJson())?.toList(),
    };

UpdateMeArguments _$UpdateMeArgumentsFromJson(Map<String, dynamic> json) {
  return UpdateMeArguments(
    input: json['input'] == null
        ? null
        : UpdateMe$UpdateMe.fromJson(json['input'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$UpdateMeArgumentsToJson(UpdateMeArguments instance) =>
    <String, dynamic>{
      'input': instance.input?.toJson(),
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
    ..name = json['name'] as String
    ..slug = json['slug'] as String;
}

Map<String, dynamic> _$Me$Query$User$Grade$DisciplineToJson(
        Me$Query$User$Grade$Discipline instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
    };

Me$Query$User$Grade _$Me$Query$User$GradeFromJson(Map<String, dynamic> json) {
  return Me$Query$User$Grade()
    ..id = json['id'] as String
    ..name = json['name'] as String
    ..slug = json['slug'] as String
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
      'slug': instance.slug,
      'disciplines': instance.disciplines?.map((e) => e?.toJson())?.toList(),
    };

LoadGauge$Query$Theme$Chapter$Notion$Course$Interaction
    _$LoadGauge$Query$Theme$Chapter$Notion$Course$InteractionFromJson(
        Map<String, dynamic> json) {
  return LoadGauge$Query$Theme$Chapter$Notion$Course$Interaction()
    ..comprehension = _$enumDecodeNullable(
        _$LoadGauge$Query$Theme$Chapter$Notion$Course$Interaction$InteractionComprehensionEnumMap,
        json['comprehension'],
        unknownValue:
            LoadGauge$Query$Theme$Chapter$Notion$Course$Interaction$InteractionComprehension
                .ARTEMIS_UNKNOWN);
}

Map<String, dynamic>
    _$LoadGauge$Query$Theme$Chapter$Notion$Course$InteractionToJson(
            LoadGauge$Query$Theme$Chapter$Notion$Course$Interaction instance) =>
        <String, dynamic>{
          'comprehension':
              _$LoadGauge$Query$Theme$Chapter$Notion$Course$Interaction$InteractionComprehensionEnumMap[
                  instance.comprehension],
        };

const _$LoadGauge$Query$Theme$Chapter$Notion$Course$Interaction$InteractionComprehensionEnumMap =
    {
  LoadGauge$Query$Theme$Chapter$Notion$Course$Interaction$InteractionComprehension
      .blur: 'blur',
  LoadGauge$Query$Theme$Chapter$Notion$Course$Interaction$InteractionComprehension
      .clear: 'clear',
  LoadGauge$Query$Theme$Chapter$Notion$Course$Interaction$InteractionComprehension
      .ARTEMIS_UNKNOWN: 'ARTEMIS_UNKNOWN',
};

LoadGauge$Query$Theme$Chapter$Notion$Course
    _$LoadGauge$Query$Theme$Chapter$Notion$CourseFromJson(
        Map<String, dynamic> json) {
  return LoadGauge$Query$Theme$Chapter$Notion$Course()
    ..interaction = json['interaction'] == null
        ? null
        : LoadGauge$Query$Theme$Chapter$Notion$Course$Interaction.fromJson(
            json['interaction'] as Map<String, dynamic>);
}

Map<String, dynamic> _$LoadGauge$Query$Theme$Chapter$Notion$CourseToJson(
        LoadGauge$Query$Theme$Chapter$Notion$Course instance) =>
    <String, dynamic>{
      'interaction': instance.interaction?.toJson(),
    };

LoadGauge$Query$Theme$Chapter$Notion$Subject$Exercise$Interaction
    _$LoadGauge$Query$Theme$Chapter$Notion$Subject$Exercise$InteractionFromJson(
        Map<String, dynamic> json) {
  return LoadGauge$Query$Theme$Chapter$Notion$Subject$Exercise$Interaction()
    ..score = json['score'] as int;
}

Map<String, dynamic>
    _$LoadGauge$Query$Theme$Chapter$Notion$Subject$Exercise$InteractionToJson(
            LoadGauge$Query$Theme$Chapter$Notion$Subject$Exercise$Interaction
                instance) =>
        <String, dynamic>{
          'score': instance.score,
        };

LoadGauge$Query$Theme$Chapter$Notion$Subject$Exercise
    _$LoadGauge$Query$Theme$Chapter$Notion$Subject$ExerciseFromJson(
        Map<String, dynamic> json) {
  return LoadGauge$Query$Theme$Chapter$Notion$Subject$Exercise()
    ..interaction = json['interaction'] == null
        ? null
        : LoadGauge$Query$Theme$Chapter$Notion$Subject$Exercise$Interaction
            .fromJson(json['interaction'] as Map<String, dynamic>);
}

Map<String, dynamic>
    _$LoadGauge$Query$Theme$Chapter$Notion$Subject$ExerciseToJson(
            LoadGauge$Query$Theme$Chapter$Notion$Subject$Exercise instance) =>
        <String, dynamic>{
          'interaction': instance.interaction?.toJson(),
        };

LoadGauge$Query$Theme$Chapter$Notion$Subject
    _$LoadGauge$Query$Theme$Chapter$Notion$SubjectFromJson(
        Map<String, dynamic> json) {
  return LoadGauge$Query$Theme$Chapter$Notion$Subject()
    ..exercises = (json['exercises'] as List)
        ?.map((e) => e == null
            ? null
            : LoadGauge$Query$Theme$Chapter$Notion$Subject$Exercise.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$LoadGauge$Query$Theme$Chapter$Notion$SubjectToJson(
        LoadGauge$Query$Theme$Chapter$Notion$Subject instance) =>
    <String, dynamic>{
      'exercises': instance.exercises?.map((e) => e?.toJson())?.toList(),
    };

LoadGauge$Query$Theme$Chapter$Notion
    _$LoadGauge$Query$Theme$Chapter$NotionFromJson(Map<String, dynamic> json) {
  return LoadGauge$Query$Theme$Chapter$Notion()
    ..courses = (json['courses'] as List)
        ?.map((e) => e == null
            ? null
            : LoadGauge$Query$Theme$Chapter$Notion$Course.fromJson(
                e as Map<String, dynamic>))
        ?.toList()
    ..subjects = (json['subjects'] as List)
        ?.map((e) => e == null
            ? null
            : LoadGauge$Query$Theme$Chapter$Notion$Subject.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$LoadGauge$Query$Theme$Chapter$NotionToJson(
        LoadGauge$Query$Theme$Chapter$Notion instance) =>
    <String, dynamic>{
      'courses': instance.courses?.map((e) => e?.toJson())?.toList(),
      'subjects': instance.subjects?.map((e) => e?.toJson())?.toList(),
    };

LoadGauge$Query$Theme$Chapter$Flashcard$Interaction
    _$LoadGauge$Query$Theme$Chapter$Flashcard$InteractionFromJson(
        Map<String, dynamic> json) {
  return LoadGauge$Query$Theme$Chapter$Flashcard$Interaction()
    ..comprehension = _$enumDecodeNullable(
        _$LoadGauge$Query$Theme$Chapter$Flashcard$Interaction$InteractionComprehensionEnumMap,
        json['comprehension'],
        unknownValue:
            LoadGauge$Query$Theme$Chapter$Flashcard$Interaction$InteractionComprehension
                .ARTEMIS_UNKNOWN);
}

Map<String, dynamic>
    _$LoadGauge$Query$Theme$Chapter$Flashcard$InteractionToJson(
            LoadGauge$Query$Theme$Chapter$Flashcard$Interaction instance) =>
        <String, dynamic>{
          'comprehension':
              _$LoadGauge$Query$Theme$Chapter$Flashcard$Interaction$InteractionComprehensionEnumMap[
                  instance.comprehension],
        };

const _$LoadGauge$Query$Theme$Chapter$Flashcard$Interaction$InteractionComprehensionEnumMap =
    {
  LoadGauge$Query$Theme$Chapter$Flashcard$Interaction$InteractionComprehension
      .blur: 'blur',
  LoadGauge$Query$Theme$Chapter$Flashcard$Interaction$InteractionComprehension
      .clear: 'clear',
  LoadGauge$Query$Theme$Chapter$Flashcard$Interaction$InteractionComprehension
      .ARTEMIS_UNKNOWN: 'ARTEMIS_UNKNOWN',
};

LoadGauge$Query$Theme$Chapter$Flashcard
    _$LoadGauge$Query$Theme$Chapter$FlashcardFromJson(
        Map<String, dynamic> json) {
  return LoadGauge$Query$Theme$Chapter$Flashcard()
    ..interaction = json['interaction'] == null
        ? null
        : LoadGauge$Query$Theme$Chapter$Flashcard$Interaction.fromJson(
            json['interaction'] as Map<String, dynamic>);
}

Map<String, dynamic> _$LoadGauge$Query$Theme$Chapter$FlashcardToJson(
        LoadGauge$Query$Theme$Chapter$Flashcard instance) =>
    <String, dynamic>{
      'interaction': instance.interaction?.toJson(),
    };

LoadGauge$Query$Theme$Chapter$Exam$Interaction
    _$LoadGauge$Query$Theme$Chapter$Exam$InteractionFromJson(
        Map<String, dynamic> json) {
  return LoadGauge$Query$Theme$Chapter$Exam$Interaction()
    ..score = json['score'] as int
    ..total = json['total'] as int;
}

Map<String, dynamic> _$LoadGauge$Query$Theme$Chapter$Exam$InteractionToJson(
        LoadGauge$Query$Theme$Chapter$Exam$Interaction instance) =>
    <String, dynamic>{
      'score': instance.score,
      'total': instance.total,
    };

LoadGauge$Query$Theme$Chapter$Exam _$LoadGauge$Query$Theme$Chapter$ExamFromJson(
    Map<String, dynamic> json) {
  return LoadGauge$Query$Theme$Chapter$Exam()
    ..interaction = json['interaction'] == null
        ? null
        : LoadGauge$Query$Theme$Chapter$Exam$Interaction.fromJson(
            json['interaction'] as Map<String, dynamic>);
}

Map<String, dynamic> _$LoadGauge$Query$Theme$Chapter$ExamToJson(
        LoadGauge$Query$Theme$Chapter$Exam instance) =>
    <String, dynamic>{
      'interaction': instance.interaction?.toJson(),
    };

LoadGauge$Query$Theme$Chapter _$LoadGauge$Query$Theme$ChapterFromJson(
    Map<String, dynamic> json) {
  return LoadGauge$Query$Theme$Chapter()
    ..id = json['id'] as String
    ..notions = (json['notions'] as List)
        ?.map((e) => e == null
            ? null
            : LoadGauge$Query$Theme$Chapter$Notion.fromJson(
                e as Map<String, dynamic>))
        ?.toList()
    ..flashcards = (json['flashcards'] as List)
        ?.map((e) => e == null
            ? null
            : LoadGauge$Query$Theme$Chapter$Flashcard.fromJson(
                e as Map<String, dynamic>))
        ?.toList()
    ..exams = (json['exams'] as List)
        ?.map((e) => e == null
            ? null
            : LoadGauge$Query$Theme$Chapter$Exam.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$LoadGauge$Query$Theme$ChapterToJson(
        LoadGauge$Query$Theme$Chapter instance) =>
    <String, dynamic>{
      'id': instance.id,
      'notions': instance.notions?.map((e) => e?.toJson())?.toList(),
      'flashcards': instance.flashcards?.map((e) => e?.toJson())?.toList(),
      'exams': instance.exams?.map((e) => e?.toJson())?.toList(),
    };

LoadGauge$Query$Theme _$LoadGauge$Query$ThemeFromJson(
    Map<String, dynamic> json) {
  return LoadGauge$Query$Theme()
    ..chapters = (json['chapters'] as List)
        ?.map((e) => e == null
            ? null
            : LoadGauge$Query$Theme$Chapter.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$LoadGauge$Query$ThemeToJson(
        LoadGauge$Query$Theme instance) =>
    <String, dynamic>{
      'chapters': instance.chapters?.map((e) => e?.toJson())?.toList(),
    };

LoadGauge$Query _$LoadGauge$QueryFromJson(Map<String, dynamic> json) {
  return LoadGauge$Query()
    ..listThemes = (json['listThemes'] as List)
        ?.map((e) => e == null
            ? null
            : LoadGauge$Query$Theme.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$LoadGauge$QueryToJson(LoadGauge$Query instance) =>
    <String, dynamic>{
      'listThemes': instance.listThemes?.map((e) => e?.toJson())?.toList(),
    };

LoadGaugeArguments _$LoadGaugeArgumentsFromJson(Map<String, dynamic> json) {
  return LoadGaugeArguments(
    gradeId: json['gradeId'] as String,
    disciplineId: json['disciplineId'] as String,
  );
}

Map<String, dynamic> _$LoadGaugeArgumentsToJson(LoadGaugeArguments instance) =>
    <String, dynamic>{
      'gradeId': instance.gradeId,
      'disciplineId': instance.disciplineId,
    };
