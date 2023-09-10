import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_packages_a_z/constants.dart';
import 'package:flutter_packages_a_z/widgets/bullet_point.dart';
import 'package:flutter_packages_a_z/widgets/package_badge.dart';

class YoutubePlayerIframeSlide extends FlutterDeckSplitSlide {
  const YoutubePlayerIframeSlide({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            header:
                FlutterDeckHeaderConfiguration(title: 'youtube_player_iframe'),
            route: '/youtube-player-iframe',
            steps: 6,
          ),
        );
  @override
  Widget left(BuildContext context) => Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const PackageBadge(
            author: 'sarbagyastha.com.np',
            likes: 450,
            name: 'youtube_player_iframe',
            supportedPlatforms: <SupportedPlatform>{
              SupportedPlatform.android,
              SupportedPlatform.ios,
              SupportedPlatform.web,
            },
            version: '4.0.4',
          ),
          const SizedBox(height: 32),
          Text(
            '''Flutter plugin for playing or streaming YouTube videos inline using the official iFrame Player API. The package exposes almost all the API provided by iFrame Player API. So, it's 100% customizable.''',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ],
      );

  @override
  Widget right(BuildContext context) => FlutterDeckSlideStepsBuilder(
        builder: (_, int stepNumber) => Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            AnimatedOpacity(
              opacity: stepNumber >= 2 ? 1 : 0,
              duration: stepAnimationDuration,
              child: const BulletPoint(text: 'Compatible with web'),
            ),
            AnimatedOpacity(
              opacity: stepNumber >= 3 ? 1 : 0,
              duration: stepAnimationDuration,
              child: const BulletPoint(text: 'No need for an API key'),
            ),
            AnimatedOpacity(
              opacity: stepNumber >= 4 ? 1 : 0,
              duration: stepAnimationDuration,
              child: const BulletPoint(text: 'Supports custom controls'),
            ),
            AnimatedOpacity(
              opacity: stepNumber >= 5 ? 1 : 0,
              duration: stepAnimationDuration,
              child: const BulletPoint(
                text: 'Uses webview_flutter under the hood',
              ),
            ),
            const SizedBox(height: 32),
            AnimatedOpacity(
              opacity: stepNumber >= 6 ? 1 : 0,
              duration: stepAnimationDuration,
              child: const Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  FlutterDeckCodeHighlight(
                    code: r'$ flutter pub add youtube_player_iframe',
                    language: 'bash',
                    textStyle: TextStyle(fontSize: 20),
                  ),
                  SizedBox(height: 16),
                  FlutterDeckCodeHighlight(
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
                    textStyle: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
}
