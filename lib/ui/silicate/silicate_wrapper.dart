import 'package:flutter/widgets.dart';
import 'package:mathrix_education_app/ui/silicate/text_brick.dart';
import 'package:mathrix_education_app/ui/silicate/title_brick.dart';
import 'package:mathrix_education_app/ui/silicate/video_brick.dart';

import 'container_brick.dart';

class SilicateWrapper extends StatelessWidget {
  final List<dynamic> wall;

  const SilicateWrapper({Key key, this.wall}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: wall.map((brick) => brickResolver(brick)).toList(),
    );
  }

  static Widget brickResolver(Map<String, dynamic> brickData) {
    String kind = brickData['kind'];

    if (kind == null) {
      return SizedBox.shrink();
    }

    switch (kind) {
      case 'text':
        return TextBrick(brick: brickData);
      case 'title':
        return TitleBrick(brick: brickData);
      case 'container':
        return ContainerBrick(brick: brickData);
      case 'video':
        return VideoBrick(brick: brickData);
    }

    return SizedBox.shrink();

    // return (bricksMap[kind])()(brick: brickData); // TODO
  }

  static Map<String, dynamic> bricksMap = {
    'text': TextBrick,
  };
}
