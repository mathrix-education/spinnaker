import 'package:flutter/material.dart';
import 'discipline_tab.dart';
import 'motivation_tab.dart';
import 'trainings_tab.dart';

class Dashboard extends StatefulWidget {
  Dashboard({Key key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final List<Widget> pages = [
    DisciplineTab(
      key: PageStorageKey('discipline-tab'),
    ),
    MotivationTab(
      key: PageStorageKey('motivation-tab'),
    ),
    TrainingsTab(
      key: PageStorageKey('discipline-tab'),
    )
  ];

  /// The page storage bucket.
  final PageStorageBucket bucket = PageStorageBucket();

  /// The selected tab index.
  int _selectedIndex = 0;

  Widget _bottomNavigationBar(int selectedIndex) => BottomNavigationBar(
    onTap: (int index) => setState(() => _selectedIndex = index),
    currentIndex: selectedIndex,
    items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        title: Text('Matières'),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.whatshot),
        title: Text('Motivation'),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.school),
        title: Text('Formation'),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _bottomNavigationBar(_selectedIndex),
      body: PageStorage(
        child: pages[_selectedIndex],
        bucket: bucket,
      ),
    );
  }
}
