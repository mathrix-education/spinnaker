import 'package:catex/catex.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_tex/flutter_tex.dart';
import 'package:flutter_tex/src/models/tex_view_widget_meta.dart';

class TextBrick extends TeXViewWidget {
  final Map<String, dynamic> brick;

  const TextBrick({Key key, this.brick}) ;

  @override
  Widget build(BuildContext context) {
    // return Text(brick['text']);
    String text = brick['text'];
    return TeXView(
      child: TeXViewDocument(r"""\( E_n = - R_H \left( {\frac{1}{{n^2 }}} \right) = \frac{{ - 2.178 \times 10^{ - 18} }}{{n^2 }}joule \)""",
          style: TeXViewStyle(
            margin: TeXViewMargin.all(10),
            elevation: 10,
            backgroundColor: Colors.white,
          )),
    );
  }

  @override
  TeXViewWidgetMeta meta() {
    // TODO: implement meta
    throw UnimplementedError();
  }

  @override
  Map toJson() {
    // TODO: implement toJson
    throw UnimplementedError();
  }
}
