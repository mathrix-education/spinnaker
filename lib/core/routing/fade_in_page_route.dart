import 'package:flutter/material.dart';

///Custom FadeIn route transition.
class FadeInPageRoute<T> extends MaterialPageRoute<T> {
  FadeInPageRoute({
    WidgetBuilder builder,
  }) : super(builder: builder);

  @override
  Widget buildTransitions(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return new FadeTransition(opacity: animation, child: child);
  }
}
