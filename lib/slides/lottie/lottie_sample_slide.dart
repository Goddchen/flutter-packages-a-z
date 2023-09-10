import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:lottie/lottie.dart';

class LottieSampleSlide extends FlutterDeckSplitSlide {
  const LottieSampleSlide({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            header: FlutterDeckHeaderConfiguration(title: 'lottie'),
            route: '/lottie-sample',
          ),
        );

  @override
  Widget left(BuildContext context) => const FlutterDeckCodeHighlight(
        code: '''
Lottie.network(
  fit: BoxFit.contain,
  height: 300,
  width: 300,
  'lottie-sample.json',
);''',
        textStyle: TextStyle(fontSize: 20),
      );

  @override
  Widget right(BuildContext context) => Lottie.asset(
        fit: BoxFit.contain,
        height: 300,
        width: 300,
        'lottie-sample.json',
      );
}
