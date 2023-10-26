import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:fpdart/fpdart.dart';

class SampleSlide extends FlutterDeckSlideWidget {
  final Iterable<Widget> sampleCodes;
  final Widget sampleWidget;

  SampleSlide({
    required String route,
    required this.sampleCodes,
    required this.sampleWidget,
    required String title,
  }) : super(
          configuration: FlutterDeckSlideConfiguration(
            header: FlutterDeckHeaderConfiguration(title: title),
            route: route,
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) => FlutterDeckSlide.split(
        leftBuilder: (BuildContext context) => FlutterDeckCodeHighlightTheme(
          data: const FlutterDeckCodeHighlightThemeData(
            textStyle: TextStyle(fontSize: 20),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: sampleCodes
                .expand(
                  (Widget element) => <Widget>[
                    element,
                    const SizedBox(height: 16),
                  ],
                )
                .dropRight()
                .toList(),
          ),
        ),
        rightBuilder: (BuildContext context) => DefaultTextStyle(
          style: FlutterDeckTheme.of(context).textTheme.bodyMedium,
          child: sampleWidget,
        ),
      );
}
