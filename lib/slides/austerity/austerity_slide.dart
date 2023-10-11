import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_packages_a_z/slides/overview_slide.dart';
import 'package:flutter_packages_a_z/widgets/package_badge.dart';

class AusteritySlide extends OverviewSlide {
  AusteritySlide()
      : super(
          bulletPoints: const <String>[
            'Enable all rules',
            'Set all rule levels to "error"',
            'Disable conflicting rules',
          ],
          packageAuthor: 'christianfindlay.com',
          packageDescription:
              '''You lack discipline! It's ok, though.\nThis is like having discipline.\nThis package attempts to use every Dart and Flutter code rule available that doesn't cause major headaches, is not incompatible with other rules, and turns the error severity up to error.''',
          packageLikes: 14,
          packageName: 'austerity',
          packageSupportedPlatforms: <SupportedPlatform>{
            SupportedPlatform.android,
            SupportedPlatform.ios,
            SupportedPlatform.linux,
            SupportedPlatform.macos,
            SupportedPlatform.web,
            SupportedPlatform.windows,
          },
          packageVersion: '1.1.0',
          route: '/austerity',
          samples: const <FlutterDeckCodeHighlight>[
            FlutterDeckCodeHighlight(
              code: r'$ flutter pub add austerity',
              language: 'bash',
            ),
            FlutterDeckCodeHighlight(
              code: 'include: package:austerity/analysis_options.yaml',
              fileName: 'analysis_options.yaml',
              language: 'yaml',
            ),
          ],
          title: 'austerity',
        );
}
