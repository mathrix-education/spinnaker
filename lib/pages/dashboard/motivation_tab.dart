import 'package:flutter/material.dart';
import 'package:mathrix_education_app/core/graphql/queries.dart';
import 'package:mathrix_education_app/pages/dashboard/youtube_dialog.dart';
import 'package:mathrix_education_app/ui/layouts/list_with_title.dart';
import 'package:mathrix_education_app/ui/texts/headline_4.dart';
import 'package:mathrix_education_app/ui/texts/title_green.dart';
import 'package:mathrix_education_app/ui/widgets/mathrix_card.dart';
import 'package:mathrix_education_app/ui/widgets/query_container.dart';
import 'package:mathrix_education_app/ui/widgets/standard_rounded_widget.dart';

class MotivationTab extends StatefulWidget {
  MotivationTab({Key key}) : super(key: key);

  @override
  _MotivationTabState createState() => _MotivationTabState();
}

class _MotivationTabState extends State<MotivationTab> {
  @override
  Widget build(BuildContext context) {
    return QueryContainer(
      document: ListCategoriesQuery().document,
      builder: ({dynamic data}) {
        ListCategories$Query$Category category = ListCategories$Query.fromJson(data).listCategories[0];
        List<ListCategories$Query$Category$Post> posts = category.posts;

        return CardListWithTitle<ListCategories$Query$Category$Post>(
          title: TitleGreen(text: category.name),
          itemList: category.posts,
          builder: (ListCategories$Query$Category$Post post) {
            String videoId = post.video_id;
            return Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  StandardRoundedWidget(
                    child: SizedBox(
                      height: 76,
                      width: 135,
                      child: FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Image.network(
                          'https://img.youtube.com/vi/$videoId/hqdefault.jpg',
                          height: 100.0,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 16.0),
                      child: Headline4(text: post.title),
                    ),
                  ),
                ],
              ),
            );
          },
          onItemTap: (item) {
            showDialog(
              context: context,
              builder: (_) => YoutubeDialog(videoId: item.video_id),
            );
          },
        );
      },
    );
  }
}
