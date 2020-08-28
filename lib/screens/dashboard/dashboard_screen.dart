import 'package:flutter/material.dart';
import 'package:mathrix_education_app/core/store/session.state.dart';
import 'package:mathrix_education_app/ui/variables/text_styles.dart';
import 'package:mathrix_education_app/ui/widgets/app_bar_flexible_space.dart';
import 'package:provider/provider.dart';
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
      appBar: AppBar(
        title: Consumer<AppState>(builder: (context, appState, child) {
          String name = appState.user?.username ?? '';
          String grade = appState.user?.grade?.name ?? '';
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Bienvenue $name',
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    .apply(color: Colors.white),
              ),
              Text(grade, style: tinyBold),
            ],
          );
        }),
        actions: [
          Icon(
            Icons.menu,
            size: 40.0,
          ),
        ],
        flexibleSpace: AppBarFlexibleSpace(),
      ),
      body: PageStorage(
        bucket: bucket,
        child: pages[_selectedIndex],
      ),
    );
  }
}
