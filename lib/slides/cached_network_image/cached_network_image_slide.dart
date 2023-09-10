import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_packages_a_z/constants.dart';
import 'package:flutter_packages_a_z/widgets/bullet_point.dart';
import 'package:flutter_packages_a_z/widgets/package_badge.dart';

class CachedNetworkImageSlide extends FlutterDeckSplitSlide {
  const CachedNetworkImageSlide({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            header:
                FlutterDeckHeaderConfiguration(title: 'cached_network_image'),
            route: '/cached_network_image',
            steps: 8,
          ),
        );

  @override
  Widget left(BuildContext context) => Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const PackageBadge(
            author: 'baseflow.com',
            likes: 4972,
            name: 'cached_network_image',
            supportedPlatforms: <SupportedPlatform>{
              SupportedPlatform.android,
              SupportedPlatform.ios,
              SupportedPlatform.linux,
              SupportedPlatform.macos,
              SupportedPlatform.web,
              SupportedPlatform.windows,
            },
            version: '3.2.3',
          ),
          const SizedBox(height: 32),
          Text(
            '''A flutter library to show images from the internet and keep them in the cache directory.''',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ],
      );

  @override
  Widget right(BuildContext context) => FlutterDeckSlideStepsBuilder(
        builder: (BuildContext context, int stepNumber) => Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            AnimatedOpacity(
              opacity: stepNumber >= 2 ? 1 : 0,
              duration: stepAnimationDuration,
              child: const BulletPoint(text: 'Cache images'),
            ),
            AnimatedOpacity(
              opacity: stepNumber >= 3 ? 1 : 0,
              duration: stepAnimationDuration,
              child: const BulletPoint(text: 'Custom placeholder widgets'),
            ),
            AnimatedOpacity(
              opacity: stepNumber >= 4 ? 1 : 0,
              duration: stepAnimationDuration,
              child: const BulletPoint(text: 'Custom error widgets'),
            ),
            AnimatedOpacity(
              opacity: stepNumber >= 5 ? 1 : 0,
              duration: stepAnimationDuration,
              child: const BulletPoint(text: 'Custom progress indicators'),
            ),
            AnimatedOpacity(
              opacity: stepNumber >= 6 ? 1 : 0,
              duration: stepAnimationDuration,
              child: const BulletPoint(text: 'Cache settings configurable'),
            ),
            AnimatedOpacity(
              opacity: stepNumber >= 7 ? 1 : 0,
              duration: stepAnimationDuration,
              child: const BulletPoint(
                text: 'Uses flutter_cache_manager internally',
              ),
            ),
            const SizedBox(height: 32),
            AnimatedOpacity(
              opacity: stepNumber >= 8 ? 1 : 0,
              duration: stepAnimationDuration,
              child: const Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  FlutterDeckCodeHighlight(
                    code: r'$ flutter pub add cached_network_image',
                    language: 'bash',
                    textStyle: TextStyle(fontSize: 24),
                  ),
                  SizedBox(height: 16),
                  FlutterDeckCodeHighlight(
                    code: '''
CachedNetworkImage(
  imageUrl: "http://via.placeholder.com/350x150",
  placeholder: (context, url) => CircularProgressIndicator(),
  errorWidget: (context, url, error) => Icon(Icons.error),
);''',
                    textStyle: TextStyle(fontSize: 24),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
}
