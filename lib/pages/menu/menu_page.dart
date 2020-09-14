import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mathrix_education_app/core/graphql/queries.dart';
import 'package:mathrix_education_app/pages/menu/exam_prepare_tab.dart';
import 'package:mathrix_education_app/ui/layouts/loading_body.dart';
import 'package:mathrix_education_app/ui/layouts/standard_page.dart';
import 'package:mathrix_education_app/ui/widgets/mtx_navigation_bar_item.dart';
import 'course_tab.dart';

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
      MtxNavigationBarItem(
        selected: _pageIndex == 0,
        text: 'Cours et exercises',
      ),
      MtxNavigationBarItem(
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
        body: Query(
            options: QueryOptions(
              documentNode: ReadChaptersInformationsQuery().document,
              variables: {'id': widget.chapterId},
            ),
            builder: (
              QueryResult result, {
              Future<QueryResult> Function() refetch,
              FetchMore fetchMore,
            }) {
              if (result.hasException) {}

              if (result.loading) {
                return LoadingBody();
              }

              ReadChaptersInformations$Query$Chapter chapter =
                  ReadChaptersInformations$Query.fromJson(result.data).readChapter;

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
          onTap: (index) {
            bottomTapped(index);
          },
          items: buildBottomNavBarItems(),
        ));
  }

  void bottomTapped(int index) {
    setState(() {
      _pageIndex = index;
      _controller.animateToPage(index, duration: Duration(milliseconds: 300), curve: Curves.ease);
    });
  }
}
