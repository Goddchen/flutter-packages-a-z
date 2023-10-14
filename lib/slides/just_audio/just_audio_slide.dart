import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_packages_a_z/slides/overview_slide.dart';
import 'package:flutter_packages_a_z/widgets/package_badge.dart';

class JustAudioSlide extends OverviewSlide {
  JustAudioSlide()
      : super(
          bulletPoints: const <String>[
            'Easy to use for basic use cases',
            'Play, pause, stop, seek, volume, speed, playlists, clips, ...',
            'Multiple parallel players',
            'Streaming (DASH, HLS)',
          ],
          packageAuthor: 'ryanheise.com',
          packageDescription:
              '''just_audio is a feature-rich audio player for Android, iOS, macOS, web, Linux and Windows.''',
          packageLikes: 2954,
          packageName: 'just_audio',
          packageSupportedPlatforms: <SupportedPlatform>{
            SupportedPlatform.android,
            SupportedPlatform.ios,
            SupportedPlatform.linux,
            SupportedPlatform.macos,
            SupportedPlatform.web,
            SupportedPlatform.windows,
          },
          packageVersion: '0.9.34',
          route: '/just-audio',
          samples: const <Widget>[
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
            ),
          ],
          title: 'just_audio',
        );
}
