import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_packages_a_z/constants.dart';
import 'package:flutter_packages_a_z/widgets/bullet_point.dart';
import 'package:flutter_packages_a_z/widgets/package_badge.dart';

class SharePlusSlide extends FlutterDeckSplitSlide {
  const SharePlusSlide({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            header: FlutterDeckHeaderConfiguration(title: 'share_plus'),
            route: '/share-plus',
            steps: 4,
          ),
        );

  @override
  Widget left(BuildContext context) => Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const PackageBadge(
            author: 'fluttercommunity.dev',
            likes: 2462,
            name: 'share_plus',
            supportedPlatforms: <SupportedPlatform>{
              SupportedPlatform.android,
              SupportedPlatform.ios,
              SupportedPlatform.linux,
              SupportedPlatform.macos,
              SupportedPlatform.web,
              SupportedPlatform.windows,
            },
            version: '7.1.0,',
          ),
          const SizedBox(height: 32),
          Text(
            '''A Flutter plugin to share content from your Flutter app via the platform's share dialog.''',
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
              child: const BulletPoint(
                text:
                    '''Wraps ACTION_SEND, UIActivityViewController, Web Share API''',
              ),
            ),
            AnimatedOpacity(
              opacity: stepNumber >= 3 ? 1 : 0,
              duration: stepAnimationDuration,
              child: const BulletPoint(
                text:
                    """Let's you use the native sharing functionality of the operationg system""",
              ),
            ),
            const SizedBox(height: 32),
            AnimatedOpacity(
              opacity: stepNumber >= 4 ? 1 : 0,
              duration: stepAnimationDuration,
              child: const Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  FlutterDeckCodeHighlight(
                    code: r'$ flutter pub add share_plus',
                    language: 'bash',
                    textStyle: TextStyle(fontSize: 24),
                  ),
                  SizedBox(height: 16),
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
                    textStyle: TextStyle(fontSize: 24),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
}
