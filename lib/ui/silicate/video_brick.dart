import 'package:flutter/widgets.dart';
import 'package:mathrix_education_app/core/misc/vimeo/vimeoplayer.dart';
import 'package:mathrix_education_app/ui/widgets/mtx_rounded_widget.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoBrick extends StatelessWidget {
  final Map<String, dynamic> brick;

  const VideoBrick({Key key, this.brick}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (brick['type']) {
      case 'youtube':
        return MtxRoundedWidget(
          child: YoutubePlayer(
            controller: YoutubePlayerController(
              initialVideoId: brick['videoId'],
              flags: YoutubePlayerFlags(
                autoPlay: false,
              ),
            ),
          ),
        );
      case 'vimeo':
        print(brick['videoId']);
        return MtxRoundedWidget(
          child: VimeoPlayer(id: '277316465'),
        );
    }
  }
}
