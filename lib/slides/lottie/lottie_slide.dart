import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_packages_a_z/constants.dart';
import 'package:flutter_packages_a_z/widgets/bullet_point.dart';
import 'package:flutter_packages_a_z/widgets/package_badge.dart';

class LottieSlide extends FlutterDeckSplitSlide {
  const LottieSlide({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            header: FlutterDeckHeaderConfiguration(title: 'lottie'),
            route: '/lottie',
            steps: 6,
          ),
        );

  @override
  Widget left(BuildContext context) => Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const PackageBadge(
            author: 'xaha.dev',
            likes: 3081,
            name: 'lottie',
            supportedPlatforms: <SupportedPlatform>{
              SupportedPlatform.android,
              SupportedPlatform.ios,
              SupportedPlatform.linux,
              SupportedPlatform.macos,
              SupportedPlatform.web,
              SupportedPlatform.windows,
            },
            version: '2.6.0',
          ),
          const SizedBox(height: 32),
          Text(
            '''Lottie is a mobile library for Android and iOS that parses Adobe After Effects animations exported as json with Bodymovin and renders them natively on mobile!''',
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
              child: const BulletPoint(text: 'Display Lottie animation files'),
            ),
            AnimatedOpacity(
              opacity: stepNumber >= 3 ? 1 : 0,
              duration: stepAnimationDuration,
              child: const BulletPoint(
                text: 'Pure Dart implemenation of lottie-android',
              ),
            ),
            AnimatedOpacity(
              opacity: stepNumber >= 4 ? 1 : 0,
              duration: stepAnimationDuration,
              child: const BulletPoint(
                text: 'Load from assets, file, memory or network',
              ),
            ),
            AnimatedOpacity(
              opacity: stepNumber >= 5 ? 1 : 0,
              duration: stepAnimationDuration,
              child: const BulletPoint(
                text: 'Lots of configuration and customization options',
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
                    code: r'$ flutter pub add lottie',
                    language: 'bash',
                    textStyle: TextStyle(fontSize: 20),
                  ),
                  SizedBox(height: 16),
                  FlutterDeckCodeHighlight(
                    code: '''
// Load a Lottie file from your assets
Lottie.asset('assets/LottieLogo1.json'),

// Load a Lottie file from a remote url
Lottie.network(
    'https://raw.githubusercontent.com/xvrh/lottie-flutter/master/example/assets/Mobilo/A.json'),

// Load an animation and its images from a zip file
Lottie.asset('assets/lottiefiles/angel.zip'),''',
                    textStyle: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
}
