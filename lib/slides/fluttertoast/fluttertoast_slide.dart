import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_packages_a_z/slides/overview_slide.dart';
import 'package:flutter_packages_a_z/widgets/bullet_point.dart';
import 'package:flutter_packages_a_z/widgets/package_badge.dart';

class FlutterToastSlide extends OverviewSlide {
  FlutterToastSlide({super.key})
      : super(
          bulletPoints: <BulletPoint>[
            const BulletPoint(text: "If you don't like snackbars"),
            const BulletPoint(
              text:
                  '''Claims to support "ALL" platforms when used with BuildContext''',
            ),
            const BulletPoint(
              text: 'Customization options as well as fully custom widget',
            ),
            const BulletPoint(
              text:
                  'Some parameters have to be declared for multiple platforms',
            ),
          ],
          packageAuthor: 'karthikponnam.dev',
          packageDescription: '''Toast Library for Flutter''',
          packageLikes: 3142,
          packageName: 'fluttertoast',
          packageSupportedPlatforms: <SupportedPlatform>{
            SupportedPlatform.android,
            SupportedPlatform.ios,
            SupportedPlatform.web,
          },
          packageVersion: '8.2.2',
          route: '/flutter-toast',
          samples: <FlutterDeckCodeHighlight>[
            const FlutterDeckCodeHighlight(
              code:
                  '''
Fluttertoast.showToast(
  msg: "This is Center Short Toast",
  toastLength: Toast.LENGTH_SHORT,
  gravity: ToastGravity.CENTER,
  timeInSecForIosWeb: 1,
  backgroundColor: Colors.red,
  textColor: Colors.white,
  fontSize: 16.0
);''',
              textStyle: TextStyle(fontSize: 24),
            ),
          ],
          title: 'fluttertoast',
        );
}
