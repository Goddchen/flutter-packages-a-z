import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_packages_a_z/slides/overview_slide.dart';
import 'package:flutter_packages_a_z/widgets/package_badge.dart';

class QrFlutterSlide extends OverviewSlide {
  QrFlutterSlide()
      : super(
          bulletPoints: const <String>[
            'Built on "qr" package',
            'Supports QR code version 1 - 40',
            'Lot of customizable options',
            'Supports image overlays',
            'Export to image data',
          ],
          packageAuthor: 'theyakka.com',
          packageDescription:
              '''QR.Flutter is a Flutter library for simple and fast QR code rendering via a Widget or custom painter.''',
          packageLikes: 1667,
          packageName: 'qr_flutter',
          packageSupportedPlatforms: <SupportedPlatform>{
            SupportedPlatform.android,
            SupportedPlatform.ios,
            SupportedPlatform.linux,
            SupportedPlatform.macos,
            SupportedPlatform.web,
            SupportedPlatform.windows,
          },
          packageVersion: '4.1.0',
          route: '/qr_flutter',
          samples: const <Widget>[
            FlutterDeckCodeHighlight(
              code: '''
QrImageView(
  data: '1234567890',
  size: 200.0,
);''',
            ),
          ],
          title: 'qr_flutter',
        );
}
