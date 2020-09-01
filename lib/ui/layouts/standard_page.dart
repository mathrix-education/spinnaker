import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mathrix_education_app/ui/layouts/mathrix_app_bar.dart';

class StandardPage extends StatelessWidget {
  /// The page body.
  final Widget body;

  /// The page title.
  final String title;

  final Widget bottomNavigationBar;

  const StandardPage({Key key, @required this.body, @required this.title, this.bottomNavigationBar}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: title,
      ),
      body: body,
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
