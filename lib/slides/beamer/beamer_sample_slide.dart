import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_packages_a_z/slides/sample_slide.dart';

class BeamerSampleSlide extends SampleSlide {
  BeamerSampleSlide()
      : super(
          route: '/beamer-sample',
          sampleCodes: const <Widget>[
            FlutterDeckCodeHighlightTheme(
              data: FlutterDeckCodeHighlightThemeData(
                textStyle: TextStyle(fontSize: 16),
              ),
              child: FlutterDeckCodeHighlight(
                code: '''
              BeamerDelegate(
              initialPath: _beamerRoute,
              locationBuilder: RoutesLocationBuilder(
                routes: <Pattern, Object Function(BuildContext, BeamState, Object?)>{
                  _beamerRoute: (BuildContext context, __, ___) => Scaffold(
              appBar: AppBar(
                title: const Text('beamer Sample'),
              ),
              body: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const Text('Home'),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () =>
                          Beamer.of(context).beamToNamed(_beamerSubRoute),
                      child: const Text('Go to sub page'),
                    ),
                  ],
                ),
              ),
                      ),
                  _beamerSubRoute: (_, __, ___) => Scaffold(
              appBar: AppBar(
                title: const Text('beamer Sample Sub Page'),
              ),
              body: const Center(child: Text('Sub Page')),
                      ),
                },
              ).call,
              );''',
              ),
            ),
            FlutterDeckCodeHighlight(
              code: '''
MaterialApp.router(
  routeInformationParser: BeamerParser(),
  routerDelegate: _createBeamerDelegate(),
);''',
            ),
          ],
          sampleWidget: _createApp(),
          title: 'beamer',
        );

  static const String _beamerRoute = '/beamer/beamer';
  static const String _beamerSubRoute = '/beamer/beamer/sub-page';

  static Widget _createApp() => MaterialApp.router(
        routeInformationParser: BeamerParser(),
        routerDelegate: _createBeamerDelegate(),
      );

  static BeamerDelegate _createBeamerDelegate() => BeamerDelegate(
        initialPath: _beamerRoute,
        locationBuilder: RoutesLocationBuilder(
          routes: <Pattern, Object Function(BuildContext, BeamState, Object?)>{
            _beamerRoute: (BuildContext context, __, ___) => Scaffold(
                  appBar: AppBar(
                    title: const Text('beamer Sample'),
                  ),
                  body: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const Text('Home'),
                        const SizedBox(height: 16),
                        ElevatedButton(
                          onPressed: () =>
                              Beamer.of(context).beamToNamed(_beamerSubRoute),
                          child: const Text('Go to sub page'),
                        ),
                      ],
                    ),
                  ),
                ),
            _beamerSubRoute: (_, __, ___) => Scaffold(
                  appBar: AppBar(
                    title: const Text('beamer Sample Sub Page'),
                  ),
                  body: const Center(child: Text('Sub Page')),
                ),
          },
        ).call,
      );
}
