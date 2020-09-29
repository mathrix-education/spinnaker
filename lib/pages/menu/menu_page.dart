import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mathrix_education_app/core/graphql/queries.dart';
import 'package:mathrix_education_app/pages/menu/exam_prepare_tab.dart';
import 'package:mathrix_education_app/ui/layouts/standard_page.dart';
import 'package:mathrix_education_app/ui/widgets/query_container.dart';
import 'package:mathrix_education_app/ui/widgets/skeletons.dart';

import 'course_tab.dart';
import 'navigation_bar_item.dart';

class MenuPage extends StatefulWidget {
  final String chapterName;
  final String chapterId;

  const MenuPage({Key key, this.chapterName, this.chapterId}) : super(key: key);

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
      NavigationBarItem(
        selected: _pageIndex == 0,
        text: 'Cours et exercises',
      ),
      NavigationBarItem(
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
    return StandardPage(
        title: widget.chapterName,
        body: QueryContainer(
            loadingSkeleton: Skeletons(),
            query: ReadChaptersInformationsQuery(),
            variables: ReadChaptersInformationsArguments(id: widget.chapterId),
            fetchPolicy: FetchPolicy.cacheAndNetwork,
            builder: (ReadChaptersInformations$Query data) {
              ReadChaptersInformations$Query$Chapter chapter = data.readChapter;
              List<ReadChaptersInformations$Query$Chapter$Notion> notions = chapter.notions;

              List<ReadChaptersInformations$Query$Chapter$Notion$Course> summaries = chapter.notions.firstWhere(
                  (e) => e.type == ReadChaptersInformations$Query$Chapter$Notion$NotionType.summary, orElse: () {
                ReadChaptersInformations$Query$Chapter$Notion empty =
                    new ReadChaptersInformations$Query$Chapter$Notion();
                empty.courses = [];
                return empty;
              }).courses;

              return PageView(
                  controller: _controller,
                  children: [
                    CourseTab(notions: notions),
                    ExamPrepareTab(
                      flashcards: chapter.flashcards,
                      summaries: summaries,
                      exams: chapter.exams,
                    ),
                  ],
                  onPageChanged: (index) {
                    setState(() {
                      _pageIndex = index;
                    });
                  });
            }),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _pageIndex,
          onTap: bottomTapped,
          items: buildBottomNavBarItems(),
        ));
  }

  /// Callback when the bottom page is tapped.
  void bottomTapped(int index) {
    setState(() {
      _pageIndex = index;
      _controller.animateToPage(index, duration: Duration(milliseconds: 300), curve: Curves.ease);
    });
  }
}
