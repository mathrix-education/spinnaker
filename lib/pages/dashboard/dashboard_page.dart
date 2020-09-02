import 'package:flutter/material.dart';
import 'package:mathrix_education_app/core/store/session.state.dart';
import 'package:mathrix_education_app/pages/dashboard/settings_dialog.dart';
import 'package:mathrix_education_app/ui/texts/headline_4.dart';
import 'package:mathrix_education_app/ui/variables/text_styles.dart';
import 'package:mathrix_education_app/ui/widgets/app_bar_flexible_space.dart';
import 'package:provider/provider.dart';
import 'discipline_tab.dart';
import 'motivation_tab.dart';
import 'trainings_tab.dart';

class DashboardPage extends StatefulWidget {
  DashboardPage({Key key}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
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
            icon: Icon(Icons.library_books),
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
              Headline4(
                text: 'Bienvenue $name',
                color: Colors.white,
              ),
              Text(grade, style: tinyBold),
            ],
          );
        }),
        actions: [
          IconButton(
            icon: Icon(
              Icons.menu,
              size: 40.0,
            ),
            onPressed: () {
              showDialog(
                context: context,
                builder: (_) => SettingsDialog(),
              );
            },
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
