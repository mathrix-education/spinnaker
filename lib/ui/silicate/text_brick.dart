import 'package:catex/catex.dart';
import 'package:flutter/widgets.dart';

class TextBrick extends StatelessWidget {
  final String text;

  const TextBrick({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(text);

    List<dynamic> castedText = this.text.split(new RegExp(r'\$[^$]*\$'));
    print(castedText);

    return CaTeX(r'\epsilon = \frac 2 {3 + 2}');
  }
}
