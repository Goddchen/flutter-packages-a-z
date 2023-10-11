import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_packages_a_z/gen/assets.gen.dart';
import 'package:flutter_packages_a_z/slides/sample_slide.dart';
import 'package:lottie/lottie.dart';

class LottieSampleSlide extends SampleSlide {
  LottieSampleSlide()
      : super(
          route: '/lottie-sample',
          sampleCodes: const <Widget>[
            FlutterDeckCodeHighlight(
              code: '''
Lottie.asset(
  fit: BoxFit.contain,
  height: 300,
  width: 300,
  Assets.lottieSample,
);''',
            ),
          ],
          sampleWidget: Lottie.asset(
            fit: BoxFit.contain,
            height: 300,
            width: 300,
            Assets.lottieSample,
          ),
          title: 'lottie',
        );
}
