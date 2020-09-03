import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MathrixCard extends StatelessWidget {
  /// The card content.
  final Widget child;

  /// The onTap callback.
  final GestureTapCallback onTap;

  final EdgeInsets padding;

  final defaultPadding = EdgeInsets.symmetric(horizontal: 8.0);

  MathrixCard({Key key, this.child, this.onTap, this.padding}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? defaultPadding,
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: InkWell(
          child: child,
          borderRadius: BorderRadius.circular(8.0),
          onTap: () => onTap(),
        ),
      ),
    );
  }
}
