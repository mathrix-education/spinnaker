import 'package:flutter/material.dart';
import 'package:mathrix_education_app/core/graphql/queries.dart';
import 'package:mathrix_education_app/pages/dashboard/youtube_dialog.dart';
import 'package:mathrix_education_app/ui/texts/title_green.dart';
import 'package:mathrix_education_app/ui/widgets/mathrix_card.dart';
import 'package:mathrix_education_app/ui/widgets/query_container.dart';

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

        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: TitleGreen(text: category.name),
              ),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (_, index) {
                  String videoId = posts[index].video_id;
                  return Padding(
                    padding: EdgeInsets.only(bottom: 8.0),
                    child: MathrixCard(
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
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
                                child: Text(
                                  posts[index].title,
                                  style: Theme.of(context).textTheme.headline4,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (_) => YoutubeDialog(videoId: videoId),
                        );
                      },
                    ),
                  );
                },
                itemCount: posts.length,
              ),
            ],
          ),
        );
      },
    );
  }
}
