import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_packages_a_z/constants.dart';
import 'package:flutter_packages_a_z/widgets/bullet_point.dart';
import 'package:flutter_packages_a_z/widgets/package_badge.dart';

class FlutterZoomDrawerSlide extends FlutterDeckSplitSlide {
  const FlutterZoomDrawerSlide({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            header:
                FlutterDeckHeaderConfiguration(title: 'flutter_zoom_drawer'),
            route: '/flutter-zoom-drawer',
            steps: 4,
          ),
        );

  @override
  Widget left(BuildContext context) => Column(
        children: <Widget>[
          const PackageBadge(
            author: 'medyas.ml',
            likes: 896,
            name: 'flutter_zoom_drawer',
            supportedPlatforms: <SupportedPlatform>{
              SupportedPlatform.android,
              SupportedPlatform.ios,
              SupportedPlatform.macos,
              SupportedPlatform.windows,
            },
            version: '3.1.1',
          ),
          const SizedBox(height: 32),
          Text(
            '''A Flutter package with custom implementation of the Side Menu (Drawer)''',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ],
      );

  @override
  Widget right(BuildContext context) => FlutterDeckSlideStepsBuilder(
        builder: (BuildContext context, int stepNumber) => Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            AnimatedOpacity(
              opacity: stepNumber >= 2 ? 1 : 0,
              duration: stepAnimationDuration,
              child: const BulletPoint(text: 'Drawer with animations'),
            ),
            AnimatedOpacity(
              opacity: stepNumber >= 3 ? 1 : 0,
              duration: stepAnimationDuration,
              child: const BulletPoint(text: 'Very customizable'),
            ),
            const SizedBox(height: 32),
            AnimatedOpacity(
              opacity: stepNumber >= 4 ? 1 : 0,
              duration: stepAnimationDuration,
              child: const Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  FlutterDeckCodeHighlight(
                    code: r'$ flutter pub add flutter_zoom_drawer',
                    language: 'bash',
                    textStyle: TextStyle(fontSize: 24),
                  ),
                  SizedBox(height: 16),
                  FlutterDeckCodeHighlight(
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
                    textStyle: TextStyle(fontSize: 24),
                  ),
                  SizedBox(height: 16),
                  FlutterDeckCodeHighlight(
                    code: '''
final _drawerController = ZoomDrawerController();

_drawerController.open();
_drawerController.close();
_drawerController.toggle();
_drawerController.isOpen();
_drawerController.stateNotifier;''',
                    textStyle: TextStyle(fontSize: 24),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
}
