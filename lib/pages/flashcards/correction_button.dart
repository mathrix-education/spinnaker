import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mathrix_education_app/ui/variables/colors.dart';

class CorrectionButton extends StatelessWidget {
  /// The inner text.
  final String text;

  /// The inner material icon.
  final IconData icon;

  /// The onTap callback.
  final GestureTapCallback onTap;

  const CorrectionButton({this.text, this.icon, this.onTap});

  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      borderSide: BorderSide(color: green),
      onPressed: onTap,
      child: SizedBox(
        height: 48,
        width: 120,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: green, size: 30),
            SizedBox(width: 12),
            Text(
              text,
              style: TextStyle(
                // TODO button style generic
                color: green,
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
