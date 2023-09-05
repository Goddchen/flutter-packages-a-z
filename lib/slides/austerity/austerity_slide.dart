import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_packages_a_z/constants.dart';
import 'package:flutter_packages_a_z/widgets/bullet_point.dart';
import 'package:flutter_packages_a_z/widgets/package_badge.dart';

class AusteritySlide extends FlutterDeckSplitSlide {
  const AusteritySlide({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            header: FlutterDeckHeaderConfiguration(title: 'austerity'),
            route: '/austerity',
            steps: 5,
          ),
        );

  @override
  Widget left(BuildContext context) => Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const PackageBadge(
            author: 'christianfindlay.com',
            likes: 14,
            name: 'austerity',
            version: '1.1.0',
          ),
          const SizedBox(height: 32),
          Text(
            '''You lack discipline! It's ok, though.\nThis is like having discipline.\nThis package attempts to use every Dart and Flutter code rule available that doesn't cause major headaches, is not incompatible with other rules, and turns the error severity up to error.''',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ],
      );

  @override
  Widget right(BuildContext context) => FlutterDeckSlideStepsBuilder(
        builder: (
          BuildContext context,
          int stepNumber,
        ) =>
            Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            AnimatedOpacity(
              opacity: stepNumber >= 2 ? 1 : 0,
              duration: stepAnimationDuration,
              child: const BulletPoint(text: 'Enable all rules'),
            ),
            AnimatedOpacity(
              opacity: stepNumber >= 3 ? 1 : 0,
              duration: stepAnimationDuration,
              child: const BulletPoint(text: 'Set all rule levels to "error"'),
            ),
            AnimatedOpacity(
              opacity: stepNumber >= 4 ? 1 : 0,
              duration: stepAnimationDuration,
              child: const BulletPoint(text: 'Disable conflicting rules'),
            ),
            const SizedBox(height: 32),
            AnimatedOpacity(
              opacity: stepNumber >= 5 ? 1 : 0,
              duration: stepAnimationDuration,
              child: const Column(
                children: <Widget>[
                  FlutterDeckCodeHighlight(
                    code: r'$ flutter pub add austerity',
                    language: 'bash',
                    textStyle: TextStyle(fontSize: 24),
                  ),
                  SizedBox(height: 16),
                  FlutterDeckCodeHighlight(
                    code: 'include: package:austerity/analysis_options.yaml',
                    fileName: 'analysis_options.yaml',
                    language: 'yaml',
                    textStyle: TextStyle(fontSize: 24),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
}
