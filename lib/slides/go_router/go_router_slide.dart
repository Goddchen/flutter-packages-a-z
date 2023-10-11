import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_packages_a_z/slides/overview_slide.dart';
import 'package:flutter_packages_a_z/widgets/package_badge.dart';

class GoRouterSlide extends OverviewSlide {
  GoRouterSlide()
      : super(
          bulletPoints: const <String>[
            'Built on top of Navigator 2',
            'Maintained by Flutter team',
            'Supports guards/redirects',
            'Officially suggested way to deal with deep linking',
          ],
          packageAuthor: 'flutter.dev',
          packageDescription:
              '''A declarative routing package for Flutter that uses the Router API to provide a convenient, url-based API for navigating between different screens. You can define URL patterns, navigate using a URL, handle deep links, and a number of other navigation-related scenarios.''',
          packageLikes: 3324,
          packageName: 'go_router',
          packageSupportedPlatforms: <SupportedPlatform>{
            SupportedPlatform.android,
            SupportedPlatform.ios,
            SupportedPlatform.linux,
            SupportedPlatform.macos,
            SupportedPlatform.web,
            SupportedPlatform.windows,
          },
          packageVersion: '10.1.2',
          route: '/go-router',
          samples: const <Widget>[
            FlutterDeckCodeHighlight(
              code: r'$ flutter pub add go_router',
              language: 'bash',
            ),
            FlutterDeckCodeHighlightTheme(
              data: FlutterDeckCodeHighlightThemeData(
                textStyle: TextStyle(fontSize: 18),
              ),
              child: FlutterDeckCodeHighlight(
                code: '''
            final _router = GoRouter(
              routes: [
                GoRoute(
                  path: '/',
                  builder: (context, state) => HomeScreen(),
                ),
              ],
            );
            
            MaterialApp.router(
              routerConfig: _router,
            );''',
              ),
            ),
            FlutterDeckCodeHighlight(
              code: '''context.go('/profile');''',
            ),
            FlutterDeckCodeHighlight(
              code: '''GoRouter.of(context).go('/profile');''',
            ),
          ],
          title: 'go_router',
        );
}
