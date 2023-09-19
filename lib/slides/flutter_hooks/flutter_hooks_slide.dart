import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_packages_a_z/constants.dart';
import 'package:flutter_packages_a_z/widgets/bullet_point.dart';
import 'package:flutter_packages_a_z/widgets/package_badge.dart';

class FlutterHooksSlide extends FlutterDeckSplitSlide {
  const FlutterHooksSlide({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            header: FlutterDeckHeaderConfiguration(title: 'flutter_hooks'),
            route: '/flutter-hooks',
            steps: 5,
          ),
        );

  @override
  Widget left(BuildContext context) => Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const PackageBadge(
            author: 'dash-overflow.net',
            likes: 1831,
            name: 'flutter_hooks',
            supportedPlatforms: <SupportedPlatform>{
              SupportedPlatform.android,
              SupportedPlatform.ios,
              SupportedPlatform.linux,
              SupportedPlatform.macos,
              SupportedPlatform.web,
              SupportedPlatform.windows,
            },
            version: '0.20.1',
          ),
          const SizedBox(height: 32),
          Text(
            '''A Flutter implementation of React hooks. Hooks are a new kind of object that manage the life-cycle of a Widget. They exist for one reason: increase the code-sharing between widgets by removing duplicates.''',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ],
      );

  @override
  Widget right(BuildContext context) => FlutterDeckSlideStepsBuilder(
        builder: (BuildContext context, int stepNumber) => Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            AnimatedOpacity(
              opacity: stepNumber >= 2 ? 1 : 0,
              duration: stepAnimationDuration,
              child: const BulletPoint(
                text: 'Easily auto-dispose disposable objects',
              ),
            ),
            AnimatedOpacity(
              opacity: stepNumber >= 3 ? 1 : 0,
              duration: stepAnimationDuration,
              child: const BulletPoint(
                text: 'Hooks available for most commonly used things',
              ),
            ),
            AnimatedOpacity(
              opacity: stepNumber >= 4 ? 1 : 0,
              duration: stepAnimationDuration,
              child: const BulletPoint(
                text: 'Automatically rebuilds widget when needed',
              ),
            ),
            const SizedBox(height: 32),
            AnimatedOpacity(
              opacity: stepNumber >= 5 ? 1 : 0,
              duration: stepAnimationDuration,
              child: const Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  FlutterDeckCodeHighlight(
                    code: r'$ flutter pub add flutter_hooks',
                    language: 'bash',
                    textStyle: TextStyle(fontSize: 24),
                  ),
                  SizedBox(height: 16),
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
                    textStyle: TextStyle(fontSize: 24),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
}
