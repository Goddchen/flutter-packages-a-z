import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_packages_a_z/slides/overview_slide.dart';
import 'package:flutter_packages_a_z/widgets/package_badge.dart';

class PackageInfoPlusSlide extends OverviewSlide {
  PackageInfoPlusSlide()
      : super(
          bulletPoints: <String>[
            "Get information about the app's package",
            '''Name, version, build number, package name, installer store, signature''',
            'Maintained by Flutter community',
          ],
          packageAuthor: 'fluttercommunity.dev',
          packageDescription:
              '''This Flutter plugin provides an API for querying information about an application package.''',
          packageLikes: 1743,
          packageName: 'package_info_plus',
          packageSupportedPlatforms: <SupportedPlatform>{
            SupportedPlatform.android,
            SupportedPlatform.ios,
            SupportedPlatform.linux,
            SupportedPlatform.macos,
            SupportedPlatform.web,
            SupportedPlatform.windows,
          },
          packageVersion: '4.2.0',
          route: '/package-info-plus',
          samples: const <Widget>[
            FlutterDeckCodeHighlight(
              code: '''
import 'package:package_info_plus/package_info_plus.dart';

...

// Be sure to add this line if `PackageInfo.fromPlatform()` is called before runApp()
WidgetsFlutterBinding.ensureInitialized();

...

PackageInfo packageInfo = await PackageInfo.fromPlatform();

String appName = packageInfo.appName;
String packageName = packageInfo.packageName;
String version = packageInfo.version;
String buildNumber = packageInfo.buildNumber;''',
            ),
          ],
          title: 'package_info_plus',
        );
}
