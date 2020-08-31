import 'package:flutter/material.dart';

class TrainingsTab extends StatefulWidget {
  TrainingsTab({Key key}) : super(key: key);

  @override
  _TrainingsTabState createState() => _TrainingsTabState();
}

class _TrainingsTabState extends State<TrainingsTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trainings Inside'),
      ),
    );
  }
}
