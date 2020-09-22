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
        fluzer.add(_renderText(even: even, text: text));
        even = !even;
        text = '';
      } else if (letter == ' ') {
        fluzer.add(_renderText(even: even, text: '$text '));
        text = '';
      } else {
        text += letter;
      }
    }

    return Wrap(children: fluzer);
  }

  ///
  _renderText({bool even, String text}) {
    Widget renderedText;
    if (even) {
      renderedText = Text(text);
    } else {
      try {
        renderedText = CaTeX(text);
      } catch (e) {
        renderedText = Text(text);
      }
    }
    return renderedText;
  }
}
