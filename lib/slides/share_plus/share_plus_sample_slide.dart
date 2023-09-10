import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:share_plus/share_plus.dart';

class SharePlusSampleSlide extends FlutterDeckSplitSlide {
  const SharePlusSampleSlide({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            header: FlutterDeckHeaderConfiguration(title: 'share_plus'),
            route: '/share-plus-sample',
          ),
        );

  @override
  Widget left(BuildContext context) => const FlutterDeckCodeHighlight(
        code: r'''
ElevatedButton(
  onPressed: () => Share.share('Share a string'),
  child: const Text('Share a string'),
),
const SizedBox(height: 16),
ElevatedButton(
  onPressed: () => Share.share(
    'Share a string',
    subject: 'Test subject',
  ),
  child: const Text('Share a string with subject'),
),
const SizedBox(height: 16),
ElevatedButton(
  onPressed: () async {
    final ShareResult shareResult =
        await Share.shareWithResult('Share with result');
    if (context.mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Share result: $shareResult')),
      );
    }
  },
  child: const Text('Share with result'),
),
const SizedBox(height: 16),
ElevatedButton(
  onPressed: () {
    Share.shareXFiles(
      <XFile>[
        XFile.fromData(
          Uint8List.fromList(utf8.encode('Test file')),
          mimeType: 'text/plain',
          name: 'test-file.txt',
        ),
      ],
    );
  },
  child: const Text('Share files'),
),''',
        textStyle: TextStyle(fontSize: 20),
      );

  @override
  Widget right(BuildContext context) => Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ElevatedButton(
            onPressed: () => Share.share('Share a string'),
            child: const Text('Share a string'),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () => Share.share(
              'Share a string',
              subject: 'Test subject',
            ),
            child: const Text('Share a string with subject'),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () async {
              final ShareResult shareResult =
                  await Share.shareWithResult('Share with result');
              if (context.mounted) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Share result: ${shareResult.status}'),
                  ),
                );
              }
            },
            child: const Text('Share with result'),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              Share.shareXFiles(
                <XFile>[
                  XFile.fromData(
                    Uint8List.fromList(utf8.encode('Test file')),
                    mimeType: 'text/plain',
                    name: 'test-file.txt',
                  ),
                ],
              );
            },
            child: const Text('Share files'),
          ),
        ],
      );
}
