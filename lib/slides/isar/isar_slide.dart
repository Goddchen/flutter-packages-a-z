import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_packages_a_z/slides/overview_slide.dart';
import 'package:flutter_packages_a_z/widgets/package_badge.dart';

class IsarSlide extends OverviewSlide {
  IsarSlide()
      : super(
          bulletPoints: <String>[
            'Feature rich database',
            'Transactions',
            'Synchronous and asynchronous',
            'Full-text search',
            'Compile time type-safe',
            'Web only supported in <=2.5.0 and >=4.0.0 (memory only for now)',
          ],
          packageAuthor: 'isar.dev',
          packageDescription: 'Crazy fast NoSQL database that is a joy to use.',
          packageLikes: 1714,
          packageName: 'isar',
          packageSupportedPlatforms: <SupportedPlatform>{
            SupportedPlatform.android,
            SupportedPlatform.ios,
            SupportedPlatform.linux,
            SupportedPlatform.macos,
            SupportedPlatform.web,
            SupportedPlatform.windows,
          },
          packageVersion: '4.0.0-dev.14',
          route: '/isar',
          samples: const <Widget>[
            FlutterDeckCodeHighlight(
              code: r'$ flutter pub add isar_flutter_libs',
              language: 'bash',
            ),
            FlutterDeckCodeHighlight(
              code: r'$ flutter pub add dev:build_runner',
              language: 'bash',
            ),
            FlutterDeckCodeHighlight(code: 'await Isar.initialize();'),
            FlutterDeckCodeHighlight(
              code: '''
@collection
class Test {
  Test({
    required this.id,
    required this.text,
  });

  int id;
  String text;
}''',
            ),
            FlutterDeckCodeHighlight(
              code: '''
final dir = await getApplicationDocumentsDirectory();
final isar = await Isar.open(
  [TestSchema],
  directory: dir.path,
);''',
            ),
            FlutterDeckCodeHighlight(
              code: '''
final emails = isar.tests.where()
  .textContains('1', caseSensitive: false)
  .sortByStatusDesc()
  .limit(10)
  .findAll();''',
            ),
          ],
          title: 'isar',
        );
}
