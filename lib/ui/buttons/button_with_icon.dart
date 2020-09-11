import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mathrix_education_app/ui/widgets/mtx_icon.dart';

class ButtonWithIcon extends StatelessWidget {
  final String text;
  final String icon;
  final Color textColor;
  final Color color;
  final double width;
  final VoidCallback onTap;

  const ButtonWithIcon(
      {Key key,
      this.text,
      this.icon,
      this.textColor,
      this.color,
      this.width = 120,
      this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      width: width,
      child: FlatButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
        color: color,
        onPressed: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MtxIcon(icon: icon),
            SizedBox(width: 12),
            Text(
              text,
              style: TextStyle(
                // TODO button style generic
                color: textColor,
                fontSize: 14,
                fontFamily: 'Poppins',
              ),
            )
          ],
        ),
      ),
    );
  }
}
