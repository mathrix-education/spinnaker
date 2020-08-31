import 'package:flutter/cupertino.dart';
import 'package:mathrix_education_app/core/graphql/queries.graphql.dart';
import 'package:mathrix_education_app/ui/silicate/text_brick.dart';

Widget courseBuilder({dynamic data}) {
  List<dynamic> content = ReadCourse$Query
      .fromJson(data)
      .readCourse
      .content;
  return Column(children: content.map((e) => TextBrick(text: 'HOHO')).toList());
}
