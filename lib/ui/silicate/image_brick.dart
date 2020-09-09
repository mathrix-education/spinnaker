import 'package:flutter/widgets.dart';

class ImageBrick extends StatelessWidget {
  final Map<String, dynamic> brick;

  const ImageBrick({this.brick});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Column(
      children: [
        Image.network(brick['src']),
        brick['displayAlt'] ? Text(brick['alt']) : SizedBox.shrink(),
      ],
    );
  }
}
