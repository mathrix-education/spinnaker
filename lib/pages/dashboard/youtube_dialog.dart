import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YoutubeDialog extends StatelessWidget {
  /// The video id.
  final String videoId;

  YoutubeDialog({@required this.videoId});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.all(0),
      child: YoutubePlayerBuilder(
          player: YoutubePlayer(
            controller: YoutubePlayerController(
              initialVideoId: videoId,
              flags: YoutubePlayerFlags(
                autoPlay: true,
              ),
            ),
          ),
          builder: (context, player) {
            return Container(
              child: player,
            );
          }),
    );
  }
}
