import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class BeamerSampleSlide extends FlutterDeckSplitSlide {
  const BeamerSampleSlide({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/beamer-sample',
          ),
        );

  static const String _beamerRoute = '/beamer/beamer';
  static const String _beamerSubRoute = '/beamer/beamer/sub-page';

  @override
  Widget left(BuildContext context) => const Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          FlutterDeckCodeHighlight(
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
            textStyle: TextStyle(fontSize: 18),
          ),
          SizedBox(height: 16),
          FlutterDeckCodeHighlight(
            code: '''
MaterialApp.router(
  routeInformationParser: BeamerParser(),
  routerDelegate: _createBeamerDelegate(),
);''',
            textStyle: TextStyle(fontSize: 18),
          ),
        ],
      );

  @override
  Widget right(BuildContext context) => _createApp();

  Widget _createApp() => MaterialApp.router(
        routeInformationParser: BeamerParser(),
        routerDelegate: _createBeamerDelegate(),
      );

  BeamerDelegate _createBeamerDelegate() => BeamerDelegate(
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
