import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mathrix_education_app/ui/layouts/mtx_app_bar.dart';

class StandardPageNoTopbar extends StatelessWidget {
  final Widget body;

  const StandardPageNoTopbar({@required this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: key,
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
          child: body,
        )
    );
  }
}
