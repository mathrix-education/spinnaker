import 'package:catex/catex.dart';
import 'package:flutter/widgets.dart';

class TextBrick extends StatelessWidget {
  final Map<String, dynamic> brick;

  const TextBrick({Key key, this.brick}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> fluzer = [];

    String text = "";

    bool even = true;

    for (String letter in brick['text'].split('')) {
      if (letter == '\$') {
        fluzer.add(even ? Text(text) : CaTeX(text));
        even = !even;
        print(text);
        text = '';
      } else {
        text += letter;
      }
    }

    return Wrap(children: fluzer);
  }
}
