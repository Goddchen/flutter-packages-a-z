import 'package:flutter/cupertino.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_packages_a_z/slides/sample_slide.dart';

class MasonSampleSlide extends SampleSlide {
  MasonSampleSlide({super.key})
      : super(
          route: '/mason-sample',
          sampleCode: '',
          sampleWidget: const Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              FlutterDeckCodeHighlight(
                code: r'$ mason new test',
                language: 'bash',
              ),
              SizedBox(height: 16),
              FlutterDeckCodeHighlight(
                code: 'This is my name in uppercase: {{name.upperCase()}}',
                language: 'markdown',
                fileName: 'test/__brick__/test.md',
              ),
              SizedBox(height: 16),
              FlutterDeckCodeHighlight(
                code: r'$ mason add test --path lib/slides/mason/test/',
                language: 'bash',
              ),
              SizedBox(height: 16),
              FlutterDeckCodeHighlight(
                code: r'$ mason make test',
                language: 'bash',
              ),
            ],
          ),
          title: 'mason',
        );
}
