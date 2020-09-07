import 'package:flutter/widgets.dart';

class MtxIcon extends StatelessWidget {
  final String icon;

  final void Function() onTap;

  const MtxIcon({this.icon, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (onTap != null) {
          onTap();
        }
      },
      child: Image(
        image: AssetImage('assets/icons/$icon.png'),
        height: 30,
      ),
    );
  }
}
