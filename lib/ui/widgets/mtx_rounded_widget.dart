
import 'package:flutter/widgets.dart';

class MtxRoundedWidget extends StatelessWidget {
  final Widget child;

  const MtxRoundedWidget({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: child,
    );
  }
}
