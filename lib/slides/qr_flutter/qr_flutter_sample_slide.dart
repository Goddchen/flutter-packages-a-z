import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrFlutterSampleSlide extends FlutterDeckSplitSlide {
  const QrFlutterSampleSlide({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            header: FlutterDeckHeaderConfiguration(title: 'qr_flutter'),
            route: '/qr-flutter-sample',
          ),
        );

  @override
  Widget left(BuildContext context) => const FlutterDeckCodeHighlight(
        code: '''
QrImageView(
  backgroundColor: Theme.of(context).colorScheme.primary,
  data: 'https://pub.dev/packages/qr_flutter',
  dataModuleStyle: QrDataModuleStyle(
    color: Theme.of(context).colorScheme.onPrimary,
    dataModuleShape: QrDataModuleShape.square,
  ),
  eyeStyle: QrEyeStyle(
    color: Theme.of(context).colorScheme.onPrimary,
    eyeShape: QrEyeShape.square,
  ),
);''',
        textStyle: TextStyle(fontSize: 20),
      );

  @override
  Widget right(BuildContext context) => QrImageView(
        backgroundColor: Theme.of(context).colorScheme.primary,
        data: 'https://pub.dev/packages/qr_flutter',
        dataModuleStyle: QrDataModuleStyle(
          color: Theme.of(context).colorScheme.onPrimary,
          dataModuleShape: QrDataModuleShape.square,
        ),
        eyeStyle: QrEyeStyle(
          color: Theme.of(context).colorScheme.onPrimary,
          eyeShape: QrEyeShape.square,
        ),
      );
}
