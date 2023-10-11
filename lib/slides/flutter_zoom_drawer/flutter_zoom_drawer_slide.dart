import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_packages_a_z/slides/overview_slide.dart';
import 'package:flutter_packages_a_z/widgets/package_badge.dart';

class FlutterZoomDrawerSlide extends OverviewSlide {
  FlutterZoomDrawerSlide()
      : super(
          bulletPoints: const <String>[
            'Drawer with animations',
            'Very customizable',
          ],
          packageAuthor: 'medyas.ml',
          packageDescription:
              '''A Flutter package with custom implementation of the Side Menu (Drawer)''',
          packageLikes: 896,
          packageName: 'flutter_zoom_drawer',
          packageSupportedPlatforms: <SupportedPlatform>{
            SupportedPlatform.android,
            SupportedPlatform.ios,
            SupportedPlatform.macos,
            SupportedPlatform.windows,
          },
          packageVersion: '3.1.1',
          route: '/flutter-zoom-drawer',
          samples: const <Widget>[
            FlutterDeckCodeHighlight(
              code: r'$ flutter pub add flutter_zoom_drawer',
              language: 'bash',
            ),
            FlutterDeckCodeHighlightTheme(
              data: FlutterDeckCodeHighlightThemeData(
                textStyle: TextStyle(fontSize: 18),
              ),
              child: FlutterDeckCodeHighlight(
                code: '''
ZoomDrawer(
  controller: ZoomDrawerController,
  style: DrawerStyle.defaultStyle,
  menuScreen: MenuScreen(),
  mainScreen: MainScreen(),
  borderRadius: 24.0,
  showShadow: true,
  angle: -12.0,
  drawerShadowsBackgroundColor: Colors.grey[300],
  slideWidth: MediaQuery.of(context).size.width*.65,
  openCurve: Curves.fastOutSlowIn,
  closeCurve: Curves.bounceIn,
);''',
              ),
            ),
            FlutterDeckCodeHighlight(
              code: '''
final _drawerController = ZoomDrawerController();

_drawerController.open();
_drawerController.close();
_drawerController.toggle();
_drawerController.isOpen();
_drawerController.stateNotifier;''',
            ),
          ],
          title: 'flutter_zoom_drawer',
        );
}
