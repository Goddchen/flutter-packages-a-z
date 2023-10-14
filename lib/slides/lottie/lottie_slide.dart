import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_packages_a_z/slides/overview_slide.dart';
import 'package:flutter_packages_a_z/widgets/package_badge.dart';

class LottieSlide extends OverviewSlide {
  LottieSlide()
      : super(
          bulletPoints: const <String>[
            'Display Lottie animation files',
            'Pure Dart implemenation of lottie-android',
            'Load from assets, file, memory or network',
            'Lots of configuration and customization options',
          ],
          packageAuthor: 'xaha.dev',
          packageDescription:
              '''Lottie is a mobile library for Android and iOS that parses Adobe After Effects animations exported as json with Bodymovin and renders them natively on mobile!''',
          packageLikes: 3081,
          packageName: 'lottie',
          packageSupportedPlatforms: <SupportedPlatform>{
            SupportedPlatform.android,
            SupportedPlatform.ios,
            SupportedPlatform.linux,
            SupportedPlatform.macos,
            SupportedPlatform.web,
            SupportedPlatform.windows,
          },
          packageVersion: '2.6.0',
          route: '/lottie',
          samples: const <Widget>[
            FlutterDeckCodeHighlight(
              code: '''
// Load a Lottie file from your assets
Lottie.asset('assets/LottieLogo1.json'),

// Load a Lottie file from a remote url
Lottie.network(
    'https://raw.githubusercontent.com/xvrh/lottie-flutter/master/example/assets/Mobilo/A.json'),

// Load an animation and its images from a zip file
Lottie.asset('assets/lottiefiles/angel.zip'),''',
            ),
          ],
          title: 'lottie',
        );
}
