import 'package:flutter/widgets.dart';

class MtxIcon extends StatelessWidget {
  /// The icon name
  final String icon;

  final double height;

  /// The on tap callback.
  final void Function() onTap;

  const MtxIcon({@required this.icon, this.onTap, this.height = 30});

  @override
  Widget build(BuildContext context) {
    Widget image = Image.asset('assets/icons/$icon.png', height: height);

    return onTap != null
        ? GestureDetector(
            onTap: onTap,
            child: image,
          )
        : image;
  }
}
