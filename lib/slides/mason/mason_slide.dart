import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_packages_a_z/slides/overview_slide.dart';
import 'package:flutter_packages_a_z/widgets/bullet_point.dart';
import 'package:flutter_packages_a_z/widgets/package_badge.dart';

class MasonSlide extends OverviewSlide {
  MasonSlide({super.key})
      : super(
          bulletPoints: <BulletPoint>[
            const BulletPoint(text: 'Mainly used via the package "mason_cli"'),
            const BulletPoint(text: 'Generate any kind of files'),
            const BulletPoint(text: 'Register hooks/scripts to be executed'),
            const BulletPoint(
              text: 'Huge repository with community bricks (brickhub.dev)',
            ),
          ],
          packageAuthor: 'brickhub.dev',
          packageDescription: '''
A template generator which helps teams generate files quickly and consistently.

package:mason contains the core generator that powers package:mason_cli and can be used to build custom code generation tools.''',
          packageLikes: 645,
          packageName: 'mason',
          packageSupportedPlatforms: <SupportedPlatform>{
            SupportedPlatform.android,
            SupportedPlatform.ios,
            SupportedPlatform.linux,
            SupportedPlatform.macos,
            SupportedPlatform.web,
            SupportedPlatform.windows,
          },
          packageVersion: '0.1.0-dev.51',
          route: '/mason',
          samples: const <FlutterDeckCodeHighlight>[
            FlutterDeckCodeHighlight(
              code: r'$ dart pub global activate mason_cli',
              language: 'bash',
              textStyle: TextStyle(fontSize: 24),
            ),
            FlutterDeckCodeHighlight(
              code: r'$ mason init',
              language: 'bash',
              textStyle: TextStyle(fontSize: 24),
            ),
            FlutterDeckCodeHighlight(
              code: r'$ mason add hello',
              language: 'bash',
              textStyle: TextStyle(fontSize: 24),
            ),
            FlutterDeckCodeHighlight(
              code: r'$ mason make hello',
              language: 'bash',
              textStyle: TextStyle(fontSize: 24),
            ),
            FlutterDeckCodeHighlight(
              code: r'$ mason search bloc',
              language: 'bash',
              textStyle: TextStyle(fontSize: 24),
            ),
            FlutterDeckCodeHighlight(
              code: r'$ mason list',
              language: 'bash',
              textStyle: TextStyle(fontSize: 24),
            ),
            FlutterDeckCodeHighlight(
              code: r'$ mason upgrade',
              language: 'bash',
              textStyle: TextStyle(fontSize: 24),
            ),
          ],
          title: 'mason',
        );
}
