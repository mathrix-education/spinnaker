import 'package:flutter_tex/flutter_tex.dart';
import 'package:mathrix_education_app/ui/variables/colors.dart';

TeXViewWidget titleBrick(Map<String, dynamic> brick) {
  String text = brick['title'];
  switch (brick['heading']) {
    case 'h1':
      return TeXViewDocument(text, style: TeXViewStyle(fontStyle: TeXViewFontStyle(fontSize: 24), contentColor: green));
    case 'h2':
      return TeXViewDocument(text, style: TeXViewStyle(fontStyle: TeXViewFontStyle(fontSize: 20), contentColor: green));
    case 'h3':
      return TeXViewDocument(text, style: TeXViewStyle(fontStyle: TeXViewFontStyle(fontSize: 18), contentColor: green));
    case 'h4':
      return TeXViewDocument(text, style: TeXViewStyle(fontStyle: TeXViewFontStyle(fontSize: 16), contentColor: green));
    default:
      return TeXViewDocument('');
  }
}
