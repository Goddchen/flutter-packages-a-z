import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_packages_a_z/slides/overview_slide.dart';
import 'package:flutter_packages_a_z/widgets/package_badge.dart';

class FpDartSlide extends OverviewSlide {
  FpDartSlide()
      : super(
          bulletPoints: const <String>[
            'Provides functional programming types',
            'Option - replacement for null aware code',
            'Either - replacement for throwing and catching exceptions',
            'Task / TaskEither - running asynchronous code',
          ],
          packageAuthor: 'sandromaglione.com',
          packageDescription:
              '''Differently from many other functional programming packages, fpdart aims to introduce functional programming to every developer. For this reason, every type and method is commented and documented directly in the code.''',
          packageLikes: 482,
          packageName: 'fpdart',
          packageSupportedPlatforms: <SupportedPlatform>{
            SupportedPlatform.android,
            SupportedPlatform.ios,
            SupportedPlatform.linux,
            SupportedPlatform.macos,
            SupportedPlatform.web,
            SupportedPlatform.windows,
          },
          packageVersion: '1.1.0',
          route: '/fpart',
          samples: const <Widget>[
            FlutterDeckCodeHighlight(
              code: r'$ flutter pub add fpdart',
              language: 'bash',
            ),
            FlutterDeckCodeHighlight(
              code: '''
int value = optionOf(10).map((int value) => value * 2).getOrElse(() => -1);''',
            ),
            FlutterDeckCodeHighlight(
              code: r'''
await TaskEither<Object, String>.tryCatch(
  () async => 'Test',
  (Object error, StackTrace stackTrace) => error,
)
    .match(
      (Object error) => print('Error: $error'),
      (String result) => print('Result: $result'),
    )
    .run();''',
            ),
          ],
          title: 'fpdart',
        );
}
