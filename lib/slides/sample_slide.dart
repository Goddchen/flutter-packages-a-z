import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:fpdart/fpdart.dart';

class SampleSlide extends FlutterDeckSplitSlide {
  final String sampleCode;
  final Option<TextStyle> sampleCodeTextStyle;
  final Widget sampleWidget;

  SampleSlide({
    required String route,
    required this.sampleCode,
    required this.sampleWidget,
    required String title,
    super.key,
    this.sampleCodeTextStyle = const None(),
  }) : super(
          configuration: FlutterDeckSlideConfiguration(
            header: FlutterDeckHeaderConfiguration(title: title),
            route: route,
          ),
        );

  @override
  Widget left(BuildContext context) => FlutterDeckCodeHighlight(
        code: sampleCode,
        textStyle: sampleCodeTextStyle.getOrElse(
          () => const TextStyle(fontSize: 20),
        ),
      );

  @override
  Widget right(BuildContext context) => sampleWidget;
}
