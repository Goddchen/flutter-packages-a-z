import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_packages_a_z/slides/overview_slide.dart';
import 'package:flutter_packages_a_z/widgets/package_badge.dart';

class DioSlide extends OverviewSlide {
  DioSlide()
      : super(
          bulletPoints: const <String>[
            'HTTP package',
            'Lot of configuration options',
            'A lot of addon packages available',
            'Interceptors',
            'Form handling',
            'Transformers',
            'Certificate handling',
          ],
          packageAuthor: 'flutter.cn',
          packageDescription:
              '''A powerful HTTP networking package for Dart/Flutter, supports Global configuration, Interceptors, FormData, Request cancellation, File uploading/downloading, Timeout, Custom adapters, Transformers, etc.''',
          packageLikes: 5974,
          packageName: 'dio',
          packageSupportedPlatforms: <SupportedPlatform>{
            SupportedPlatform.android,
            SupportedPlatform.ios,
            SupportedPlatform.linux,
            SupportedPlatform.macos,
            SupportedPlatform.web,
            SupportedPlatform.windows,
          },
          packageVersion: '5.3.2',
          route: '/dio',
          samples: const <Widget>[
            FlutterDeckCodeHighlight(
              code: '''
final dio = Dio();

void getHttp() async {
  final response = await dio.get('https://dart.dev');
  print(response);
}''',
            ),
          ],
          title: 'dio',
        );
}
