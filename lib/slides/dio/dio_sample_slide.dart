import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class DioSampleSlide extends FlutterDeckSplitSlide {
  const DioSampleSlide({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            header: FlutterDeckHeaderConfiguration(title: 'dio'),
            route: '/dio-sample',
          ),
        );

  @override
  Widget left(BuildContext context) => const FlutterDeckCodeHighlight(
        code: '''
Future<Response<Object>>? future;
return StatefulBuilder(
  builder:
      (BuildContext context, void Function(void Function()) setState) =>
          Column(
    mainAxisSize: MainAxisSize.min,
    children: <Widget>[
      ElevatedButton(
        onPressed: () {
          setState(
            () {
              future =
                  Dio().get('https://loripsum.net/api/1/short/plaintext');
              );
            },
          );
        },
        child: const Text('Issue request'),
      ),
      const SizedBox(height: 16),
      if (future != null)
        FutureBuilder<Response<Object>>(
          future: future,
          builder: (
            BuildContext context,
            AsyncSnapshot<Response<Object>> snapshot,
          ) =>
              snapshot.hasError
                  ? const Text('Error')
                  : snapshot.hasData
                      ? Text(
                          snapshot.data?.data?.toString() ??
                              'Empty response',
                        )
                      : CircularProgressIndicator(
                          color: Theme.of(context).colorScheme.secondary,
                        ),
        ),
    ],
  ),
);''',
        textStyle: TextStyle(fontSize: 20),
      );

  @override
  Widget right(BuildContext context) {
    Future<Response<Object>>? future;
    return StatefulBuilder(
      builder:
          (BuildContext context, void Function(void Function()) setState) =>
              Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ElevatedButton(
            onPressed: () {
              setState(
                () {
                  future =
                      Dio().get('https://loripsum.net/api/1/short/plaintext');
                },
              );
            },
            child: const Text('Issue request'),
          ),
          const SizedBox(height: 16),
          if (future != null)
            FutureBuilder<Response<Object>>(
              future: future,
              builder: (
                BuildContext context,
                AsyncSnapshot<Response<Object>> snapshot,
              ) =>
                  snapshot.hasError
                      ? Text(
                          'Error: ${snapshot.error}',
                          textAlign: TextAlign.center,
                        )
                      : snapshot.hasData
                          ? Text(
                              '''Response: ${snapshot.data?.data?.toString() ?? 'empty'}''',
                              textAlign: TextAlign.center,
                            )
                          : CircularProgressIndicator(
                              color: Theme.of(context).colorScheme.secondary,
                            ),
            ),
        ],
      ),
    );
  }
}
