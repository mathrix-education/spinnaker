import 'package:flutter/widgets.dart';

class MtxIcon extends StatelessWidget {
  /// The icon name
  final String icon;

  /// The on tap callback.
  final void Function() onTap;

  const MtxIcon({this.icon, this.onTap});

  @override
  Widget build(BuildContext context) {
    Widget image = Image.asset('assets/icons/$icon.png', height: 30);

    return onTap != null
        ? GestureDetector(
            onTap: onTap,
            child: image,
          )
        : image;
  }
}
