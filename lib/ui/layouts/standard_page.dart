import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mathrix_education_app/ui/layouts/mtx_app_bar.dart';

class StandardPage extends StatelessWidget {
  /// The page body.
  final Widget body;

  /// The page title.
  final String title;

  final Widget bottomNavigationBar;

  const StandardPage({@required this.body, @required this.title, this.bottomNavigationBar});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: key,
      appBar: MtxAppBar(
      title: title,
    ),
      body: body,
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
