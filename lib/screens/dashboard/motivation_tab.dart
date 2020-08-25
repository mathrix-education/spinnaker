import 'package:flutter/material.dart';

class MotivationTab extends StatefulWidget {
  MotivationTab({Key key}) : super(key: key);

  @override
  _MotivationTabState createState() => _MotivationTabState();
}

class _MotivationTabState extends State<MotivationTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Motivation Inside'),
      ),
    );
  }
}
