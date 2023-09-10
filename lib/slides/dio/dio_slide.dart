import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_packages_a_z/constants.dart';
import 'package:flutter_packages_a_z/widgets/bullet_point.dart';
import 'package:flutter_packages_a_z/widgets/package_badge.dart';

class DioSlide extends FlutterDeckSplitSlide {
  const DioSlide({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            header: FlutterDeckHeaderConfiguration(title: 'dio'),
            route: '/dio',
            steps: 9,
          ),
        );

  @override
  Widget left(BuildContext context) => Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const PackageBadge(
            author: 'flutter.cn',
            likes: 5974,
            name: 'dio',
            supportedPlatforms: <SupportedPlatform>{
              SupportedPlatform.android,
              SupportedPlatform.ios,
              SupportedPlatform.linux,
              SupportedPlatform.macos,
              SupportedPlatform.web,
              SupportedPlatform.windows,
            },
            version: '5.3.2',
          ),
          const SizedBox(height: 16),
          Text(
            '''A powerful HTTP networking package for Dart/Flutter, supports Global configuration, Interceptors, FormData, Request cancellation, File uploading/downloading, Timeout, Custom adapters, Transformers, etc.''',
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
              child: const BulletPoint(text: 'HTTP package'),
            ),
            AnimatedOpacity(
              opacity: stepNumber >= 3 ? 1 : 0,
              duration: stepAnimationDuration,
              child: const BulletPoint(text: 'Lot of configuration options'),
            ),
            AnimatedOpacity(
              opacity: stepNumber >= 4 ? 1 : 0,
              duration: stepAnimationDuration,
              child: const BulletPoint(
                text: 'A lot of addon packages available',
              ),
            ),
            AnimatedOpacity(
              opacity: stepNumber >= 5 ? 1 : 0,
              duration: stepAnimationDuration,
              child: const BulletPoint(text: 'Interceptors'),
            ),
            AnimatedOpacity(
              opacity: stepNumber >= 6 ? 1 : 0,
              duration: stepAnimationDuration,
              child: const BulletPoint(text: 'Form handling'),
            ),
            AnimatedOpacity(
              opacity: stepNumber >= 7 ? 1 : 0,
              duration: stepAnimationDuration,
              child: const BulletPoint(text: 'Transformers'),
            ),
            AnimatedOpacity(
              opacity: stepNumber >= 8 ? 1 : 0,
              duration: stepAnimationDuration,
              child: const BulletPoint(text: 'Certificate handling'),
            ),
            const SizedBox(height: 32),
            AnimatedOpacity(
              opacity: stepNumber >= 9 ? 1 : 0,
              duration: stepAnimationDuration,
              child: const Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  FlutterDeckCodeHighlight(
                    code: r'$ flutter pub add dio',
                    language: 'bash',
                    textStyle: TextStyle(fontSize: 24),
                  ),
                  SizedBox(height: 16),
                  FlutterDeckCodeHighlight(
                    code: '''
final dio = Dio();

void getHttp() async {
  final response = await dio.get('https://dart.dev');
  print(response);
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
