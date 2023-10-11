import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_packages_a_z/slides/sample_slide.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrFlutterSampleSlide extends SampleSlide {
  QrFlutterSampleSlide()
      : super(
          route: '/qr-flutter-sample',
          sampleCodes: const <Widget>[
            FlutterDeckCodeHighlight(
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
            ),
          ],
          sampleWidget: Builder(
            builder: (BuildContext context) => QrImageView(
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
            ),
          ),
          title: 'qr_flutter',
        );
}
