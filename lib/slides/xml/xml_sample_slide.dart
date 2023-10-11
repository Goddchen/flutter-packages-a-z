import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_packages_a_z/slides/sample_slide.dart';
import 'package:xml/xml.dart';
import 'package:xml/xpath.dart';

class XmlSampleSlide extends SampleSlide {
  XmlSampleSlide()
      : super(
          route: '/xml-sample',
          sampleCodes: const <Widget>[
            FlutterDeckCodeHighlight(
              code: r'''
Column(
  mainAxisSize: MainAxisSize.min,
  children: <Widget>[
    const FlutterDeckCodeHighlight(
      code: _xmlString,
      language: 'xml',
    ),
    const SizedBox(height: 32),
    ElevatedButton(
      onPressed: () {
        final XmlDocument document = XmlDocument.parse(_xmlString);
        final String? name = document.xpath('/root/person[1]/@name').first.value;
        final String? age = document.xpath('/root/person[1]/@age').first.value;
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Person "$name" is $age years old'),
          ),
        );
      },
      child: const Text('Parse XML'),
    ),
  ],
);''',
            ),
          ],
          sampleWidget: Builder(
            builder: (BuildContext context) => Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const FlutterDeckCodeHighlight(
                  code: _xmlString,
                  language: 'xml',
                ),
                const SizedBox(height: 32),
                ElevatedButton(
                  onPressed: () {
                    final XmlDocument document = XmlDocument.parse(_xmlString);
                    final String? name =
                        document.xpath('/root/person[1]/@name').first.value;
                    final String? age =
                        document.xpath('/root/person[1]/@age').first.value;
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Person "$name" is $age years old'),
                      ),
                    );
                  },
                  child: const Text('Parse XML'),
                ),
              ],
            ),
          ),
          title: 'xml',
        );
  static const String _xmlString = '''
<root>
  <person age="38" name="Goddchen" />
</root>''';
}
