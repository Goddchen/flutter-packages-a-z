import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_packages_a_z/slides/sample_slide.dart';
import 'package:go_router/go_router.dart';

class GoRouterSampleSlide extends SampleSlide {
  GoRouterSampleSlide()
      : super(
          route: '/go-router-sample',
          sampleCodes: const <Widget>[
            FlutterDeckCodeHighlight(
              code: '''
MaterialApp.router(
  routerConfig: GoRouter(
    initialLocation: '/go-router-sample',
    routes: <GoRoute>[
      GoRoute(
        builder: (_, __) => Scaffold(
          appBar: AppBar(
            title: const Text('go_router Sample'),
          ),
          body: Center(
            child: Builder(
              builder: (BuildContext context) => ElevatedButton(
                onPressed: () =>
                    context.push('/go-router-sample/sub-route'),
                child: const Text('Open sub page'),
              ),
            ),
          ),
        ),
        path: '/go-router-sample',
      ),
      GoRoute(
        builder: (_, __) => Scaffold(
          appBar: AppBar(
            title: const Text('go_router Sample'),
          ),
          body: const Center(
            child: Text('Sub page'),
          ),
        ),
        path: '/go-router-sample/sub-route',
      ),
    ],
  ),
);''',
            ),
          ],
          sampleWidget: MaterialApp.router(
            routerConfig: GoRouter(
              initialLocation: '/go-router-sample',
              routes: <GoRoute>[
                GoRoute(
                  builder: (_, __) => Scaffold(
                    appBar: AppBar(
                      title: const Text('go_router Sample'),
                    ),
                    body: Center(
                      child: Builder(
                        builder: (BuildContext context) => ElevatedButton(
                          onPressed: () =>
                              context.push('/go-router-sample/sub-route'),
                          child: const Text('Open sub page'),
                        ),
                      ),
                    ),
                  ),
                  path: '/go-router-sample',
                ),
                GoRoute(
                  builder: (_, __) => Scaffold(
                    appBar: AppBar(
                      title: const Text('go_router Sample'),
                    ),
                    body: const Center(
                      child: Text('Sub page'),
                    ),
                  ),
                  path: '/go-router-sample/sub-route',
                ),
              ],
            ),
          ),
          title: 'go_router',
        );
}
