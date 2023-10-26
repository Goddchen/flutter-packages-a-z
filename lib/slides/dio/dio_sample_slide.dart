import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_packages_a_z/slides/sample_slide.dart';

class DioSampleSlide extends SampleSlide {
  DioSampleSlide()
      : super(
          route: '/dio-sample',
          sampleCodes: const <Widget>[
            FlutterDeckCodeHighlightTheme(
              data: FlutterDeckCodeHighlightThemeData(
                textStyle: TextStyle(fontSize: 14),
              ),
              child: FlutterDeckCodeHighlight(
                code: r'''
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
              future = Dio().get(
                'https://dinoipsum.com/api/?format=text&paragraphs=1&words=20',
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
                  ? Text(
                      'Error: ${snapshot.error}',
                      textAlign: TextAlign.center,
                    )
                  : snapshot.hasData
                      ? Text(
                          'Response: '
                          '${snapshot.data?.data?.toString() ?? 'empty'}',
                          textAlign: TextAlign.center,
                        )
                      : CircularProgressIndicator(
                          color: Theme.of(context).colorScheme.secondary,
                        ),
        ),
    ],
  ),
);''',
              ),
            ),
          ],
          sampleWidget: Builder(
            builder: (BuildContext context) {
              Future<Response<Object>>? future;
              return StatefulBuilder(
                builder: (
                  BuildContext context,
                  void Function(void Function()) setState,
                ) =>
                    Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: () {
                        setState(
                          () {
                            future = Dio().get(
                              'https://dinoipsum.com/api/?format=text&paragraphs=1&words=20',
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
                                ? Text(
                                    'Error: ${snapshot.error}',
                                    textAlign: TextAlign.center,
                                  )
                                : snapshot.hasData
                                    ? Text(
                                        'Response: '
                                        '${snapshot.data?.data ?? 'empty'}',
                                        textAlign: TextAlign.center,
                                      )
                                    : CircularProgressIndicator(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .secondary,
                                      ),
                      ),
                  ],
                ),
              );
            },
          ),
          title: 'dio',
        );
}
