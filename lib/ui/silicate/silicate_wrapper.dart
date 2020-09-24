import 'package:flutter/widgets.dart';
import 'package:flutter_tex/flutter_tex.dart';
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
    return TeXView(
      child: TeXViewColumn(
        children: wall.map((brick) => brickResolver(brick)).toList(),
      ),
    );
  }

  static TeXViewWidget brickResolver(Map<String, dynamic> brickData) {
    String kind = brickData['kind'];
    TeXViewWidget teXViewWidget;
    switch (kind) {
      case 'text':
        teXViewWidget = textBrick(brickData);
        break;
      case 'title':
        teXViewWidget = titleBrick(brickData);
        break;
      case 'container':
        teXViewWidget = containerBrick(brickData);
        break;
      default:
        teXViewWidget = TeXViewDocument('default');
      // case 'video':
      //   widget = VideoBrick(brick: brickData);
      //   break;
      // case 'image':
      //   widget = ImageBrick(brick: brickData);
      //   break;
      // case 'pdf-viewer':
      //   widget = PdfViewerBrick(brick: brickData);
    }

    return teXViewWidget;

    // return widget != null ? Container(padding: EdgeInsets.symmetric(vertical: 8), child: widget) : SizedBox.shrink();
  }
}
