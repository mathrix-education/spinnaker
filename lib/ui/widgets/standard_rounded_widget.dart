import 'package:flutter/cupertino.dart';

class StandardRoundedWidget extends StatelessWidget {
  final Widget child;

  const StandardRoundedWidget({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: child,
    );
  }
}
