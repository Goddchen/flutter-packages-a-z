import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_packages_a_z/constants.dart';
import 'package:flutter_packages_a_z/widgets/bullet_point.dart';
import 'package:flutter_packages_a_z/widgets/package_badge.dart';

class JustAudioSlide extends FlutterDeckSplitSlide {
  const JustAudioSlide({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            header: FlutterDeckHeaderConfiguration(title: 'just_audio'),
            route: '/just-audio',
            steps: 6,
          ),
        );

  @override
  Widget left(BuildContext context) => Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const PackageBadge(
            author: 'ryanheise.com',
            likes: 2954,
            name: 'just_audio',
            version: '0.9.34',
          ),
          const SizedBox(height: 32),
          Text(
            '''just_audio is a feature-rich audio player for Android, iOS, macOS, web, Linux and Windows.''',
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
              child: const BulletPoint(text: 'Easy to use for basic use cases'),
            ),
            AnimatedOpacity(
              opacity: stepNumber >= 3 ? 1 : 0,
              duration: stepAnimationDuration,
              child: const BulletPoint(
                text:
                    '''Play, pause, stop, seek, volume, speed, playlists, clips, ...''',
              ),
            ),
            AnimatedOpacity(
              opacity: stepNumber >= 4 ? 1 : 0,
              duration: stepAnimationDuration,
              child: const BulletPoint(text: 'Multiple parallel players'),
            ),
            AnimatedOpacity(
              opacity: stepNumber >= 5 ? 1 : 0,
              duration: stepAnimationDuration,
              child: const BulletPoint(text: 'Streaming (DASH, HLS)'),
            ),
            const SizedBox(height: 32),
            AnimatedOpacity(
              opacity: stepNumber >= 6 ? 1 : 0,
              duration: stepAnimationDuration,
              child: const Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  FlutterDeckCodeHighlight(
                    code: r'$ flutter pub add just_audio',
                    language: 'bash',
                    textStyle: TextStyle(fontSize: 24),
                  ),
                  SizedBox(height: 16),
                  FlutterDeckCodeHighlight(
                    code: '''
final player = AudioPlayer();
final duration = await player.setUrl('https://foo.com/bar.mp3');
await player.play();
await player.pause();
await player.seek(Duration(second: 10));
await player.setSpeed(2.0);
await player.setVolume(0.5);
await player.stop();''',
                    textStyle: TextStyle(fontSize: 24),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
}
