import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_packages_a_z/slides/overview_slide.dart';
import 'package:flutter_packages_a_z/widgets/package_badge.dart';

class FlutterToastSlide extends OverviewSlide {
  FlutterToastSlide()
      : super(
          bulletPoints: <String>[
            "If you don't like snackbars",
            'Claims to support "ALL" platforms when used with BuildContext',
            'Customization options as well as fully custom widget',
            'Some parameters have to be declared for multiple platforms',
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
          samples: <Widget>[
            const FlutterDeckCodeHighlight(
              code: '''
Fluttertoast.showToast(
  msg: "This is Center Short Toast",
  toastLength: Toast.LENGTH_SHORT,
  gravity: ToastGravity.CENTER,
  timeInSecForIosWeb: 1,
  backgroundColor: Colors.red,
  textColor: Colors.white,
  fontSize: 16.0
);''',
            ),
          ],
          title: 'fluttertoast',
        );
}
