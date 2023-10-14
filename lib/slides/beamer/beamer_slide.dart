import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_packages_a_z/slides/overview_slide.dart';
import 'package:flutter_packages_a_z/widgets/package_badge.dart';

class BeamerSlide extends OverviewSlide {
  BeamerSlide()
      : super(
          bulletPoints: const <String>[
            'Built on top of Navigator 2',
            'Works with BeamLocations, which contain a stack of BeamPages',
            'Supports guards/redirects',
          ],
          packageAuthor: 'beamer.dev',
          packageDescription:
              '''Beamer uses the power of Router and implements all the underlying logic for you, letting you explore arbitrarily complex navigation scenarios with ease.''',
          packageLikes: 1113,
          packageName: 'beamer',
          packageSupportedPlatforms: <SupportedPlatform>{
            SupportedPlatform.android,
            SupportedPlatform.ios,
            SupportedPlatform.linux,
            SupportedPlatform.macos,
            SupportedPlatform.web,
            SupportedPlatform.windows,
          },
          packageVersion: '1.5.6',
          route: '/beamer',
          samples: const <Widget>[
            FlutterDeckCodeHighlightTheme(
              data: FlutterDeckCodeHighlightThemeData(
                textStyle: TextStyle(fontSize: 18),
              ),
              child: FlutterDeckCodeHighlight(
                code: '''
            final routerDelegate = BeamerDelegate(
              locationBuilder: RoutesLocationBuilder(
                routes: {
                  '/': (context, state, data) => HomeScreen(),
                  // ...
                },
              ),
            );''',
              ),
            ),
            FlutterDeckCodeHighlight(
              code: '''
MaterialApp.router(
  routeInformationParser: BeamerParser(),
  routerDelegate: routerDelegate,
);''',
            ),
            FlutterDeckCodeHighlight(
              code: '''Beamer.of(context).beamToNamed('/route');''',
            ),
          ],
          title: 'beamer',
        );
}
