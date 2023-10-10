import 'package:flutter/cupertino.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_packages_a_z/slides/overview_slide.dart';
import 'package:flutter_packages_a_z/widgets/package_badge.dart';

class XmlSlide extends OverviewSlide {
  XmlSlide()
      : super(
          bulletPoints: <String>[
            'Easily parse XML and handle in code',
            'Easily generate XML in code and output string',
            'Powerful traversal and query features',
            'XPath support',
            'Event driven parsing',
            'Does NOT support, DTD, XSL, XSLT, schema/namespace validation',
          ],
          packageAuthor: 'lukas-renggli.ch',
          packageDescription:
              '''Dart XML is a lightweight library for parsing, traversing, querying, transforming and building XML documents.''',
          packageLikes: 318,
          packageName: 'xml',
          packageSupportedPlatforms: <SupportedPlatform>{
            SupportedPlatform.android,
            SupportedPlatform.ios,
            SupportedPlatform.linux,
            SupportedPlatform.macos,
            SupportedPlatform.web,
            SupportedPlatform.windows,
          },
          packageVersion: '6.4.2',
          route: '/xml',
          samples: <Widget>[
            const FlutterDeckCodeHighlight(
              code: '''
final bookshelfXml = \'\'\'<?xml version="1.0"?>
  <bookshelf>
    <book>
      <title lang="en">Growing a Language</title>
      <price>29.99</price>
    </book>
    <book>
      <title lang="en">Learning XML</title>
      <price>39.95</price>
    </book>
    <price>132.00</price>
  </bookshelf>\'\'\';
final document = XmlDocument.parse(bookshelfXml);''',
            ),
          ],
          title: 'xml',
        );
}
