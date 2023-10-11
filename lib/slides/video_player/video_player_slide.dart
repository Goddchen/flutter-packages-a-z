import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_packages_a_z/slides/overview_slide.dart';
import 'package:flutter_packages_a_z/widgets/package_badge.dart';

class VideoPlayerSlide extends OverviewSlide {
  VideoPlayerSlide()
      : super(
          bulletPoints: const <String>[
            'Wide support for many video codecs',
            'Maintained by Flutter team',
          ],
          packageAuthor: 'flutter.dev',
          packageDescription:
              '''A Flutter plugin for iOS, Android and Web for playing back video on a Widget surface.''',
          packageLikes: 2592,
          packageName: 'video_player',
          packageSupportedPlatforms: <SupportedPlatform>{
            SupportedPlatform.android,
            SupportedPlatform.ios,
            SupportedPlatform.web,
          },
          packageVersion: '2.7.2',
          route: '/video-player',
          samples: const <Widget>[
            FlutterDeckCodeHighlight(
              code: r'$ flutter pub add video_player',
              language: 'bash',
            ),
            FlutterDeckCodeHighlight(
              code: '''
_controller = VideoPlayerController.networkUrl(Uri.parse(
  'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'))
..initialize().then((_) {
  // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
  setState(() {});
});''',
            ),
            FlutterDeckCodeHighlight(
              code: '''
VideoPlayer(_controller);''',
            ),
            SizedBox(height: 16),
            FlutterDeckCodeHighlight(
              code: '''
_controller.value.isPlaying
  ? _controller.pause()
  : _controller.play();''',
            ),
          ],
          title: 'video_player',
        );
}
