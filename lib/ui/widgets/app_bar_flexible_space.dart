import 'package:flutter/cupertino.dart';

class AppBarFlexibleSpace extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0.1, 0.90],
              colors: <Color>[Color(0xFF229A87), Color(0xFF77CABA)])),
    );
  }
}
