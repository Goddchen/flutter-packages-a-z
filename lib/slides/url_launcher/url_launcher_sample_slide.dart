import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLauncherSampleSlide extends FlutterDeckSplitSlide {
  const UrlLauncherSampleSlide({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            header: FlutterDeckHeaderConfiguration(title: 'url_launcher'),
            route: '/url-launcher-sample',
          ),
        );

  @override
  Widget left(BuildContext context) => const FlutterDeckCodeHighlight(
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
        textStyle: TextStyle(fontSize: 16),
      );

  @override
  Widget right(BuildContext context) => Column(
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
      );
}
