import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fpdart/fpdart.dart';

class FlutterHooksSampleSlide extends FlutterDeckSplitSlide {
  const FlutterHooksSampleSlide({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            header: FlutterDeckHeaderConfiguration(title: 'flutter_hooks'),
            route: '/flutter-hooks-sample',
          ),
        );

  @override
  Widget left(BuildContext context) => const FlutterDeckCodeHighlight(
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
      else
        CircularProgressIndicator(
          color: Theme.of(context).colorScheme.onPrimary,
        ),
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
        textStyle: TextStyle(fontSize: 16),
      );

  @override
  Widget right(BuildContext context) => _RightWidget();
}

class _RightWidget extends HookWidget {
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
        else
          CircularProgressIndicator(
            color: Theme.of(context).colorScheme.onPrimary,
          ),
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
