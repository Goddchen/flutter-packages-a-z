import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class YoutubePlayerIframeSampleSlide extends FlutterDeckSplitSlide {
  const YoutubePlayerIframeSampleSlide({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            header:
                FlutterDeckHeaderConfiguration(title: 'youtube_player_iframe'),
            route: '/youtube-player-iframe-sample',
          ),
        );

  @override
  Widget left(BuildContext context) => const FlutterDeckCodeHighlight(
        code: '''
YoutubePlayer(
  controller: YoutubePlayerController.fromVideoId(
    params: const YoutubePlayerParams(
      showFullscreenButton: true,
    ),
    videoId: 'L9cP9OTUstA',
  ),
);''',
        textStyle: TextStyle(fontSize: 20),
      );

  @override
  Widget right(BuildContext context) => YoutubePlayer(
        controller: YoutubePlayerController.fromVideoId(
          params: const YoutubePlayerParams(
            showFullscreenButton: true,
          ),
          videoId: 'L9cP9OTUstA',
        ),
      );
}
