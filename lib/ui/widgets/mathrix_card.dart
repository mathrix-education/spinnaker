import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MathrixCard extends StatelessWidget {
  /// The card content.
  final Widget child;
  final GestureTapCallback onTap;

  MathrixCard({Key key, this.child, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: InkWell(
        child: child,
        borderRadius: BorderRadius.circular(8.0),
        onTap: () {
          onTap();
        },
      ),
    );
  }
}
