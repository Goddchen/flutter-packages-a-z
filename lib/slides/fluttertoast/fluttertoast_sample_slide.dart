import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_packages_a_z/slides/sample_slide.dart';
import 'package:fluttertoast/fluttertoast.dart';

class FlutterToastSampleSlide extends SampleSlide {
  FlutterToastSampleSlide()
      : super(
          route: '/flutter-toast-sample',
          sampleCodes: const <Widget>[
            FlutterDeckCodeHighlight(
              code: '''
FToast().init(context);
return Column(
  mainAxisSize: MainAxisSize.min,
  children: <Widget>[
    ElevatedButton(
      onPressed: () => FToast().showToast(
        child: const Text('Test'),
      ),
      child: const Text('FToast'),
    ),
    const SizedBox(height: 16),
    ElevatedButton(
      onPressed: () => FToast().showToast(
        child: const Text('Test'),
        gravity: ToastGravity.CENTER,
      ),
      child: const Text('FToast centered'),
    ),
    const SizedBox(height: 16),
    ElevatedButton(
      onPressed: () => Fluttertoast.showToast(msg: 'Test'),
      child: const Text('Default Fluttertoast'),
    ),
    const SizedBox(height: 16),
    ElevatedButton(
      onPressed: () => Fluttertoast.showToast(
        msg: 'Test',
        backgroundColor:
            Theme.of(context).colorScheme.secondaryContainer,
        webBgColor: Theme.of(context)
            .colorScheme
            .secondaryContainer
            .value
            .toRadixString(16)
            .substring(2),
      ),
      child: const Text('Fluttertoast with some customization'),
    ),
    const SizedBox(height: 16),
  ],
);''',
            ),
          ],
          sampleWidget: Builder(
            builder: (BuildContext context) {
              FToast().init(context);
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () => FToast().showToast(
                      child: const Text('Test'),
                    ),
                    child: const Text('FToast'),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () => FToast().showToast(
                      child: const Text('Test'),
                      gravity: ToastGravity.CENTER,
                    ),
                    child: const Text('FToast centered'),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () => Fluttertoast.showToast(msg: 'Test'),
                    child: const Text('Default Fluttertoast'),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () => Fluttertoast.showToast(
                      msg: 'Test',
                      backgroundColor:
                          Theme.of(context).colorScheme.secondaryContainer,
                      webBgColor: Theme.of(context)
                          .colorScheme
                          .secondaryContainer
                          .value
                          .toRadixString(16)
                          .substring(2),
                    ),
                    child: const Text('Fluttertoast with some customization'),
                  ),
                  const SizedBox(height: 16),
                ],
              );
            },
          ),
          title: 'fluttertoast',
        );
}
