import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_packages_a_z/slides/overview_slide.dart';
import 'package:flutter_packages_a_z/widgets/package_badge.dart';

class FlutterNativeSplashSlide extends OverviewSlide {
  FlutterNativeSplashSlide()
      : super(
          bulletPoints: <String>[
            'Generate nice splash screens from resources',
            'Nice default settings, highly configurable',
          ],
          packageAuthor: 'jonhanson.net',
          packageDescription:
              '''When your app is opened, there is a brief time while the native app loads Flutter. By default, during this time, the native app displays a white splash screen. This package automatically generates iOS, Android, and Web-native code for customizing this native splash screen background color and splash image. Supports dark mode, full screen, and platform-specific options.''',
          packageLikes: 6611,
          packageName: 'flutter_native_splash',
          packageSupportedPlatforms: <SupportedPlatform>{
            SupportedPlatform.android,
            SupportedPlatform.ios,
            SupportedPlatform.web,
          },
          packageVersion: '2.3.4',
          route: '/flutter-native-splash',
          samples: const <Widget>[
            FlutterDeckCodeHighlight(
              code: '''
flutter_native_splash:
  color: "#ffffff"
  image: assets/logo-production.png
  branding: assets/branding-production.png
  color_dark: "#121212"
  image_dark: assets/logo-production.png
  branding_dark: assets/branding-production.png

  android_12:
    image: assets/logo-production.png
    icon_background_color: "#ffffff"
    image_dark: assets/logo-production.png
    icon_background_color_dark: "#121212"

  web: false''',
              fileName: 'pubspec.yaml',
              language: 'yaml',
            ),
            FlutterDeckCodeHighlight(
              code: r'$ dart run flutter_native_splash:create',
              language: 'bash',
            ),
          ],
          title: 'flutter_native_splash',
        );
}
