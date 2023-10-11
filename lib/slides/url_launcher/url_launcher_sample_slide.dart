import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_packages_a_z/slides/sample_slide.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLauncherSampleSlide extends SampleSlide {
  UrlLauncherSampleSlide()
      : super(
          route: '/url-launcher-sample',
          sampleCodes: const <Widget>[
            FlutterDeckCodeHighlightTheme(
              data: FlutterDeckCodeHighlightThemeData(
                textStyle: TextStyle(fontSize: 12),
              ),
              child: FlutterDeckCodeHighlight(
                code: '''
            Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () => launchUrl(
                    Uri.parse('https://flutter-packages-a-z.web.app/'),
                    mode: LaunchMode.externalApplication,
                  ),
                  child: const Text('Open external'),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () => launchUrl(
                    Uri.parse('https://flutter-packages-a-z.web.app/'),
                    mode: LaunchMode.inAppWebView,
                  ),
                  child: const Text('Open in WebView'),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () => launchUrl(
                    Uri.parse('https://flutter-packages-a-z.web.app/'),
                    mode: LaunchMode.externalNonBrowserApplication,
                  ),
                  child: const Text('Open by OS'),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () => launchUrl(
                    Uri(
                      scheme: 'mailto',
                      path: 'goddchen@gmail.com',
                      queryParameters: <String, String>{
              'subject': 'Test subject',
              'body': 'Test body',
                      },
                    ),
                  ),
                  child: const Text('Open mail'),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () => launchUrl(
                    Uri(scheme: 'tel', path: '1234567890'),
                  ),
                  child: const Text('Open phone'),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () => launchUrl(
                    Uri(scheme: 'sms', path: '1234567890'),
                  ),
                  child: const Text('Open SMS'),
                ),
              ],
            );''',
              ),
            ),
          ],
          sampleWidget: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ElevatedButton(
                onPressed: () => launchUrl(
                  Uri.parse('https://flutter-packages-a-z.web.app/'),
                  mode: LaunchMode.externalApplication,
                ),
                child: const Text('Open external'),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () => launchUrl(
                  Uri.parse('https://flutter-packages-a-z.web.app/'),
                  mode: LaunchMode.inAppWebView,
                ),
                child: const Text('Open in WebView'),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () => launchUrl(
                  Uri.parse('https://flutter-packages-a-z.web.app/'),
                  mode: LaunchMode.externalNonBrowserApplication,
                ),
                child: const Text('Open by OS'),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () => launchUrl(
                  Uri(
                    scheme: 'mailto',
                    path: 'goddchen@gmail.com',
                    queryParameters: <String, String>{
                      'subject': 'Test subject',
                      'body': 'Test body',
                    },
                  ),
                ),
                child: const Text('Open mail'),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () => launchUrl(
                  Uri(scheme: 'tel', path: '1234567890'),
                ),
                child: const Text('Open phone'),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () => launchUrl(
                  Uri(scheme: 'sms', path: '1234567890'),
                ),
                child: const Text('Open SMS'),
              ),
            ],
          ),
          title: 'url_launcher',
        );
}
