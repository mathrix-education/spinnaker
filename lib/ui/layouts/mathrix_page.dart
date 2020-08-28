import 'package:flutter/cupertino.dart';

class MathrixPage extends StatelessWidget {
  final Widget body;

  MathrixPage({Key key, this.body}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: body,
    );
  }
}
