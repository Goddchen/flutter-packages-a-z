import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_packages_a_z/slides/sample_slide.dart';
import 'package:share_plus/share_plus.dart';

class SharePlusSampleSlide extends SampleSlide {
  SharePlusSampleSlide()
      : super(
          route: '/share-plus-sample',
          sampleCodes: const <Widget>[
            FlutterDeckCodeHighlightTheme(
              data: FlutterDeckCodeHighlightThemeData(
                textStyle: TextStyle(fontSize: 18),
              ),
              child: FlutterDeckCodeHighlight(
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
              ),
            ),
          ],
          sampleWidget: Builder(
            builder: (BuildContext context) => Column(
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
            ),
          ),
          title: 'share_plus',
        );
}
