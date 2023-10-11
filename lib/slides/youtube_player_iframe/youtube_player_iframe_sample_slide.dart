import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_packages_a_z/slides/sample_slide.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class YoutubePlayerIframeSampleSlide extends SampleSlide {
  YoutubePlayerIframeSampleSlide()
      : super(
          route: '/youtube-player-iframe-sample',
          sampleCodes: const <Widget>[
            FlutterDeckCodeHighlight(
              code: '''
YoutubePlayer(
  controller: YoutubePlayerController.fromVideoId(
    params: const YoutubePlayerParams(
      showFullscreenButton: true,
    ),
    videoId: 'L9cP9OTUstA',
  ),
);''',
            ),
          ],
          sampleWidget: YoutubePlayer(
            controller: YoutubePlayerController.fromVideoId(
              params: const YoutubePlayerParams(
                showFullscreenButton: true,
              ),
              videoId: 'L9cP9OTUstA',
            ),
          ),
          title: 'youtube_player_iframe',
        );
}
