import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_packages_a_z/slides/overview_slide.dart';
import 'package:flutter_packages_a_z/widgets/package_badge.dart';

class FlutterHooksSlide extends OverviewSlide {
  FlutterHooksSlide()
      : super(
          bulletPoints: const <String>[
            'Easily auto-dispose disposable objects',
            'Hooks available for most commonly used things',
            'Automatically rebuilds widget when needed',
          ],
          packageAuthor: 'dash-overflow.net',
          packageDescription:
              '''A Flutter implementation of React hooks. Hooks are a new kind of object that manage the life-cycle of a Widget. They exist for one reason: increase the code-sharing between widgets by removing duplicates.''',
          packageLikes: 1831,
          packageName: 'flutter_hooks',
          packageSupportedPlatforms: <SupportedPlatform>{
            SupportedPlatform.android,
            SupportedPlatform.ios,
            SupportedPlatform.linux,
            SupportedPlatform.macos,
            SupportedPlatform.web,
            SupportedPlatform.windows,
          },
          packageVersion: '0.20.1',
          route: '/flutter-hooks',
          samples: const <Widget>[
            FlutterDeckCodeHighlight(
              code: r'$ flutter pub add flutter_hooks',
              language: 'bash',
            ),
            FlutterDeckCodeHighlight(
              code: '''
class Example extends HookWidget {
  const Example({Key? key, required this.duration})
      : super(key: key);

  final Duration duration;

  @override
  Widget build(BuildContext context) {
    final controller = useAnimationController(duration: duration);
    return Container();
  }
}''',
            ),
          ],
          title: 'flutter_hooks',
        );
}
