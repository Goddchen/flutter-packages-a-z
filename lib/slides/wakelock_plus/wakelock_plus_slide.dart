import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_packages_a_z/slides/overview_slide.dart';
import 'package:flutter_packages_a_z/widgets/bullet_point.dart';
import 'package:flutter_packages_a_z/widgets/package_badge.dart';

class WakelockPlusSlide extends OverviewSlide {
  WakelockPlusSlide({super.key})
      : super(
          bulletPoints: <BulletPoint>[
            const BulletPoint(text: 'Keep the screen on'),
            const BulletPoint(text: 'No permissions required'),
            const BulletPoint(
              text: 'Uses screen wakelock, not CPU/partial wakelock',
            ),
          ],
          packageAuthor: 'fluttercommunity.dev',
          packageDescription:
              '''A continuation of the original wakelock Flutter Plugin written by creativecreatorormaybenot that allows you to keep the device screen awake, i.e. prevent the screen from sleeping.''',
          packageLikes: 97,
          packageName: 'wakelock_plus',
          packageSupportedPlatforms: <SupportedPlatform>{
            SupportedPlatform.android,
            SupportedPlatform.ios,
            SupportedPlatform.linux,
            SupportedPlatform.macos,
            SupportedPlatform.web,
            SupportedPlatform.windows,
          },
          packageVersion: '1.1.1',
          route: '/wakelock-plus',
          samples: const <FlutterDeckCodeHighlight>[
            FlutterDeckCodeHighlight(
              code: '''WakelockPlus.enable();''',
              textStyle: TextStyle(fontSize: 24),
            ),
            FlutterDeckCodeHighlight(
              code: '''WakelockPlus.disable();''',
              textStyle: TextStyle(fontSize: 24),
            ),
            FlutterDeckCodeHighlight(
              code: '''
WakelockPlus.toggle(enable: true);
WakelockPlus.toggle(enable: false);''',
              textStyle: TextStyle(fontSize: 24),
            ),
            FlutterDeckCodeHighlight(
              code: '''bool wakelockEnabled = await WakelockPlus.enabled;''',
              textStyle: TextStyle(fontSize: 24),
            ),
          ],
          title: 'wakelock_plus',
        );
}
