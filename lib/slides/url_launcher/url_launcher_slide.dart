import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_packages_a_z/slides/overview_slide.dart';
import 'package:flutter_packages_a_z/widgets/package_badge.dart';

class UrlLauncherSlide extends OverviewSlide {
  UrlLauncherSlide()
      : super(
          bulletPoints: const <String>[
            'Maintained by Flutter team',
            'Easily launcher most common types of URLs',
            'http, https, mailto, tel, sms, file',
          ],
          packageAuthor: 'flutter.dev',
          packageDescription: '''A Flutter plugin for launching a URL.''',
          packageLikes: 6440,
          packageName: 'url_launcher',
          packageSupportedPlatforms: <SupportedPlatform>{
            SupportedPlatform.android,
            SupportedPlatform.ios,
            SupportedPlatform.linux,
            SupportedPlatform.macos,
            SupportedPlatform.web,
            SupportedPlatform.windows,
          },
          packageVersion: '6.1.14',
          route: '/url-launcher',
          samples: const <Widget>[
            FlutterDeckCodeHighlight(
              code: r'''
if (!await launchUrl(_url)) {
  throw Exception('Could not launch $_url');
}''',
            ),
            FlutterDeckCodeHighlight(
              code: r'''
if (!await canLaunchUrl(_url)) {
  throw Exception('Could not launch $_url');
}''',
            ),
          ],
          title: 'url_launcher',
        );
}
