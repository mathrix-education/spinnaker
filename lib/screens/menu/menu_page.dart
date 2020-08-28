import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mathrix_education_app/core/graphql/queries.dart';
import 'package:mathrix_education_app/screens/menu/exam_prepare_tab.dart';
import 'package:mathrix_education_app/ui/layouts/mathrix_app_bar.dart';
import 'package:mathrix_education_app/ui/widgets/CustomNavigationBarITem.dart';

import 'course_tab.dart';

class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  int _pageIndex = 0;

  PageController _controller = PageController(
    initialPage: 0,
    keepPage: true,
  );

  List<BottomNavigationBarItem> buildBottomNavBarItems() {
    return [
      MathrixNavigationBarItem(
        selected: _pageIndex == 0,
        text: 'Cours et exercises',
      ),
      MathrixNavigationBarItem(
        selected: _pageIndex == 1,
        text: 'Préparation à l\'evaluation',
      ),
    ];
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          textTitle: 'Menu :D',
        ),
        body: Query(
            options: QueryOptions(
              documentNode: ReadChaptersInformationsQuery().document,
              variables: {'id': "30"},
            ),
            builder: (
              QueryResult result, {
              Future<QueryResult> Function() refetch,
              FetchMore fetchMore,
            }) {
              if (result.hasException) {}

              ReadChaptersInformations$Query$Chapter chapter =
                  ReadChaptersInformations$Query.fromJson(result.data)
                      .readChapter;

              List<ReadChaptersInformations$Query$Chapter$Notion> notions =
                  chapter.notions;

              return PageView(
                controller: _controller,
                children: [
                  CourseTab(notions: notions),
                  ExamPrepareTab(),
                ],
              );
            }),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _pageIndex,
          onTap: (index) {
            bottomTapped(index);
          },
          items: buildBottomNavBarItems(),
        ));
  }

  void bottomTapped(int index) {
    setState(() {
      _pageIndex = index;
      _controller.animateToPage(index,
          duration: Duration(milliseconds: 300), curve: Curves.ease);
    });
  }
}
