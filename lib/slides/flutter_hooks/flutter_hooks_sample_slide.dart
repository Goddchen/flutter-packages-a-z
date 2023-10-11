import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_packages_a_z/slides/sample_slide.dart';
import 'package:fpdart/fpdart.dart';

class FlutterHooksSampleSlide extends SampleSlide {
  FlutterHooksSampleSlide()
      : super(
          route: '/flutter-hooks-sample',
          sampleCodes: const <Widget>[
            FlutterDeckCodeHighlightTheme(
              data: FlutterDeckCodeHighlightThemeData(
                textStyle: TextStyle(fontSize: 14),
              ),
              child: FlutterDeckCodeHighlight(
                code: r'''
            final Stream<int> _stream = _streamData();
            final Future<bool> _future = _fetchData();
            
            @override
            Widget build(BuildContext context) {
              final Option<AppLifecycleState> appLifecycleState = optionOf(
                useAppLifecycleState(),
              );
              // ignore: avoid_print
              print('Current app lifecycle state: $appLifecycleState');
            
              final AsyncSnapshot<bool> asyncSnapshot = useFuture(_future);
              final AsyncSnapshot<int> streamSnapshot = useStream(_stream);
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  if (asyncSnapshot.hasError)
                    ErrorWidget(asyncSnapshot.error!)
                  else if (asyncSnapshot.hasData)
                    Text('Result: ${asyncSnapshot.data}')
                  else
                    CircularProgressIndicator(
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                  const SizedBox(height: 32),
                  if (streamSnapshot.hasError)
                    ErrorWidget(streamSnapshot.error!)
                  else if (streamSnapshot.hasData)
                    Text('Last stream value: ${streamSnapshot.data}')
                  else if (streamSnapshot.connectionState == ConnectionState.waiting)
                    CircularProgressIndicator(
                      color: Theme.of(context).colorScheme.onPrimary,
                    )
                  else
                    Text('Stream state is ${streamSnapshot.connectionState}'),
                ],
              );
            }
            
            static Future<bool> _fetchData() => Future<bool>.delayed(
                  const Duration(seconds: 2),
                  () => true,
                );
            
            static Stream<int> _streamData() async* {
              for (int i = 0; i < 5; i++) {
                yield await Future<int>.delayed(
                  const Duration(seconds: 1),
                  () => i,
                );
              }
            }''',
              ),
            ),
          ],
          sampleWidget: _RightWidget(),
          title: 'flutter_hooks',
        );
}

class _RightWidget extends HookWidget {
  final Stream<int> _stream = _streamData().asBroadcastStream();
  final Future<bool> _future = _fetchData();

  @override
  Widget build(BuildContext context) {
    final Option<AppLifecycleState> appLifecycleState = optionOf(
      useAppLifecycleState(),
    );
    // ignore: avoid_print
    print('Current app lifecycle state: $appLifecycleState');

    final AsyncSnapshot<bool> asyncSnapshot = useFuture(_future);
    final AsyncSnapshot<int> streamSnapshot = useStream(_stream);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        if (asyncSnapshot.hasError)
          ErrorWidget(asyncSnapshot.error!)
        else if (asyncSnapshot.hasData)
          Text('Result: ${asyncSnapshot.data}')
        else
          CircularProgressIndicator(
            color: Theme.of(context).colorScheme.onPrimary,
          ),
        const SizedBox(height: 32),
        if (streamSnapshot.hasError)
          ErrorWidget(streamSnapshot.error!)
        else if (streamSnapshot.hasData)
          Text('Last stream value: ${streamSnapshot.data}')
        else if (streamSnapshot.connectionState == ConnectionState.waiting)
          CircularProgressIndicator(
            color: Theme.of(context).colorScheme.onPrimary,
          )
        else
          Text('Stream state is ${streamSnapshot.connectionState}'),
      ],
    );
  }

  static Future<bool> _fetchData() => Future<bool>.delayed(
        const Duration(seconds: 2),
        () => true,
      );

  static Stream<int> _streamData() async* {
    for (int i = 0; i < 5; i++) {
      yield await Future<int>.delayed(
        const Duration(seconds: 1),
        () => i,
      );
    }
  }
}
