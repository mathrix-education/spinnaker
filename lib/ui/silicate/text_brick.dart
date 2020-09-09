import 'package:catex/catex.dart';
import 'package:flutter/widgets.dart';

class TextBrick  extends StatelessWidget {

  final Map<String, dynamic> brick;

  const TextBrick({Key key, this.brick}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(brick['text']);
  }
}
