import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BulletListItem extends StatelessWidget {
  /// The title.
  final Widget item;

  const BulletListItem({this.item});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 10,
          width: 10,
          decoration: const BoxDecoration(
            color: Colors.black,
            shape: BoxShape.circle,
          ),
        ),
        SizedBox(width: 8),
        Flexible(child: item),
      ],
    );
  }
}
