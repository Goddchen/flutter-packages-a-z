import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_packages_a_z/slides/overview_slide.dart';
import 'package:flutter_packages_a_z/widgets/package_badge.dart';

class MasonSlide extends OverviewSlide {
  MasonSlide()
      : super(
          bulletPoints: <String>[
            'Mainly used via the package "mason_cli"',
            'Generate any kind of files',
            'Register hooks/scripts to be executed',
            'Huge repository with community bricks (brickhub.dev)',
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
            ),
            FlutterDeckCodeHighlight(
              code: r'$ mason init',
              language: 'bash',
            ),
            FlutterDeckCodeHighlight(
              code: r'$ mason add hello',
              language: 'bash',
            ),
            FlutterDeckCodeHighlight(
              code: r'$ mason make hello',
              language: 'bash',
            ),
            FlutterDeckCodeHighlight(
              code: r'$ mason search bloc',
              language: 'bash',
            ),
            FlutterDeckCodeHighlight(
              code: r'$ mason list',
              language: 'bash',
            ),
            FlutterDeckCodeHighlight(
              code: r'$ mason upgrade',
              language: 'bash',
            ),
          ],
          title: 'mason',
        );
}
