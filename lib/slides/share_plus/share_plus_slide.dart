import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_packages_a_z/slides/overview_slide.dart';
import 'package:flutter_packages_a_z/widgets/package_badge.dart';

class SharePlusSlide extends OverviewSlide {
  SharePlusSlide()
      : super(
          bulletPoints: const <String>[
            'Wraps ACTION_SEND, UIActivityViewController, Web Share API',
            """Let's you use the native sharing functionality of the operationg system""",
          ],
          packageAuthor: 'fluttercommunity.dev',
          packageDescription:
              '''A Flutter plugin to share content from your Flutter app via the platform's share dialog.''',
          packageLikes: 2462,
          packageName: 'share_plus',
          packageSupportedPlatforms: <SupportedPlatform>{
            SupportedPlatform.android,
            SupportedPlatform.ios,
            SupportedPlatform.linux,
            SupportedPlatform.macos,
            SupportedPlatform.web,
            SupportedPlatform.windows,
          },
          packageVersion: '7.1.0',
          route: '/share-plus',
          samples: const <Widget>[
            FlutterDeckCodeHighlight(
              code: r'''
Share.share('check out my website https://example.com');

Share.share('check out my website https://example.com', subject: 'Look what I made!');

final result = await Share.shareWithResult('check out my website https://example.com');
if (result.status == ShareResultStatus.success) {
    print('Thank you for sharing my website!');
}

final result = await Share.shareXFiles(['${directory.path}/image.jpg'], text: 'Great picture');
if (result.status == ShareResultStatus.success) {
    print('Thank you for sharing the picture!');
}''',
            ),
          ],
          title: 'share_plus',
        );
}
