import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_packages_a_z/slides/overview_slide.dart';
import 'package:flutter_packages_a_z/widgets/package_badge.dart';

class YoutubePlayerIframeSlide extends OverviewSlide {
  YoutubePlayerIframeSlide()
      : super(
          bulletPoints: const <String>[
            'Compatible with web',
            'No need for an API key',
            'Supports custom controls',
            'Uses webview_flutter under the hood',
          ],
          packageAuthor: 'sarbagyastha.com.np',
          packageDescription:
              '''Flutter plugin for playing or streaming YouTube videos inline using the official iFrame Player API. The package exposes almost all the API provided by iFrame Player API. So, it's 100% customizable.''',
          packageLikes: 450,
          packageName: 'youtube_player_iframe',
          packageSupportedPlatforms: <SupportedPlatform>{
            SupportedPlatform.android,
            SupportedPlatform.ios,
            SupportedPlatform.web,
          },
          packageVersion: '4.0.4',
          route: '/youtube-player-iframe',
          samples: const <Widget>[
            FlutterDeckCodeHighlight(
              code: r'$ flutter pub add youtube_player_iframe',
              language: 'bash',
            ),
            FlutterDeckCodeHighlightTheme(
              data: FlutterDeckCodeHighlightThemeData(
                textStyle: TextStyle(fontSize: 18),
              ),
              child: FlutterDeckCodeHighlight(
                code: '''
final _controller = YoutubePlayerController(
  params: YoutubePlayerParams(
    mute: false,
    showControls: true,
    showFullscreenButton: true,
  ),
);

_controller.loadVideoById(...); // Auto Play
_controller.cueVideoById(...); // Manual Play
_controller.loadPlaylist(...); // Auto Play with playlist
_controller.cuePlaylist(...); // Manual Play with playlist

// If the requirement is just to play a single video.
final _controller = YoutubePlayerController.fromVideoId(
  videoId: '<video-id>',
  autoPlay: false,
  params: const YoutubePlayerParams(showFullscreenButton: true),
);''',
              ),
            ),
          ],
          title: 'youtube_player_iframe',
        );
}
