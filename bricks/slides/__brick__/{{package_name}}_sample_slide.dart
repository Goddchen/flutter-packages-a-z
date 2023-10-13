import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_packages_a_z/slides/sample_slide.dart';

class {{package_name.pascalCase()}}SampleSlide extends SampleSlide {
  {{package_name.pascalCase()}}SampleSlide()
      : super(
          route: '/{{package_name.paramCase()}}-sample',
          sampleCodes: const <Widget>[
            FlutterDeckCodeHighlight(
              code: '''TODO: add sample code here''',
            ),
          ],
          sampleWidget: const Placeholder(),
          title: '{{package_name}}',
        );
}
