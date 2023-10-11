import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_packages_a_z/constants.dart';
import 'package:flutter_packages_a_z/widgets/bullet_point.dart';
import 'package:flutter_packages_a_z/widgets/package_badge.dart';
import 'package:fpdart/fpdart.dart';

class OverviewSlide extends FlutterDeckSlideWidget {
  OverviewSlide({
    required this.bulletPoints,
    required this.packageAuthor,
    required this.packageDescription,
    required this.packageLikes,
    required this.packageName,
    required this.packageSupportedPlatforms,
    required this.packageVersion,
    required String route,
    required this.samples,
    required String title,
  }) : super(
          configuration: FlutterDeckSlideConfiguration(
            header: FlutterDeckHeaderConfiguration(title: title),
            route: route,
            steps: bulletPoints.length + 2,
          ),
        );
  final Iterable<String> bulletPoints;
  final String packageAuthor;
  final String packageDescription;
  final int packageLikes;
  final String packageName;
  final Set<SupportedPlatform> packageSupportedPlatforms;
  final String packageVersion;
  final Iterable<Widget> samples;

  @override
  FlutterDeckSlide build(BuildContext context) => FlutterDeckSlide.split(
        leftBuilder: (BuildContext context) => Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            PackageBadge(
              author: packageAuthor,
              likes: packageLikes,
              name: packageName,
              supportedPlatforms: packageSupportedPlatforms,
              version: packageVersion,
            ),
            const SizedBox(height: 32),
            Text(
              packageDescription,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
        rightBuilder: (BuildContext context) => FlutterDeckSlideStepsBuilder(
          builder: (BuildContext context, int stepNumber) => Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ...bulletPoints.mapWithIndex(
                (String bulletPoint, int index) => AnimatedOpacity(
                  opacity: stepNumber >= index + 2 ? 1 : 0,
                  duration: stepAnimationDuration,
                  child: BulletPoint(text: bulletPoint),
                ),
              ),
              const SizedBox(height: 32),
              AnimatedOpacity(
                opacity: stepNumber >= bulletPoints.length + 2 ? 1 : 0,
                duration: stepAnimationDuration,
                child: FlutterDeckCodeHighlightTheme(
                  data: const FlutterDeckCodeHighlightThemeData(
                    textStyle: TextStyle(fontSize: 24),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      FlutterDeckCodeHighlight(
                        code: '\$ flutter pub add $packageName',
                      ),
                      const SizedBox(height: 16),
                      ...samples.expand(
                        (Widget element) => <Widget>[
                          element,
                          const SizedBox(height: 16),
                        ],
                      )..dropRight(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
