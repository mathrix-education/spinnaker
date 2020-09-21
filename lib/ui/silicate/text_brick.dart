import 'package:flutter_tex/flutter_tex.dart';

TeXViewWidget textBrick(Map<String, dynamic> brick) {
  String convertedText = '';
  bool odd = true;

  for (String letter in brick['text'].split('')) {
    if (letter == '\$') {
      convertedText += (odd ? '\\(' : '\\)');
      odd = !odd;
    } else {
      convertedText += letter;
    }
  }

  return TeXViewDocument(convertedText);
}
