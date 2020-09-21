import 'package:flutter/widgets.dart';
import 'package:mathrix_education_app/ui/silicate/image_brick.dart';
import 'package:mathrix_education_app/ui/silicate/pdf_viewer_brick.dart';
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

    Widget widget;

    switch (kind) {
      case 'text':
        widget = TextBrick(brick: brickData);
        break;
      case 'title':
        widget = TitleBrick(brick: brickData);
        break;
      case 'container':
        widget = ContainerBrick(brick: brickData);
        break;
      case 'video':
        widget = VideoBrick(brick: brickData);
        break;
      case 'image':
        widget = ImageBrick(brick: brickData);
        break;
      case 'pdf-viewer':
        widget = PdfViewerBrick(brick: brickData);
    }

    return widget != null ? Container(padding: EdgeInsets.symmetric(vertical: 8), child: widget) : SizedBox.shrink();

    // return (bricksMap[kind])()(brick: brickData); // TODO
  }

  static Map<String, dynamic> bricksMap = {
    'text': TextBrick,
  };
}
