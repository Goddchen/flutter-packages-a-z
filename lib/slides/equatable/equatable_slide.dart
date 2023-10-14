import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_packages_a_z/slides/overview_slide.dart';
import 'package:flutter_packages_a_z/widgets/package_badge.dart';

class EquatableSlide extends OverviewSlide {
  EquatableSlide()
      : super(
          bulletPoints: const <String>[
            'Overrides == and hashCode',
            'No code generation needed',
            'Can generate nice toString()',
          ],
          packageAuthor: 'fluttercommunity.dev',
          packageDescription:
              '''Equatable overrides == and hashCode for you so you don't have to waste your time writing lots of boilerplate code.\nWith Equatable there is no code generation needed and we can focus more on writing amazing applications and less on mundane tasks.''',
          packageLikes: 2577,
          packageName: 'equatable',
          packageSupportedPlatforms: <SupportedPlatform>{
            SupportedPlatform.android,
            SupportedPlatform.ios,
            SupportedPlatform.linux,
            SupportedPlatform.macos,
            SupportedPlatform.web,
            SupportedPlatform.windows,
          },
          packageVersion: '2.0.5',
          route: '/equatable',
          samples: const <Widget>[
            FlutterDeckCodeHighlight(
              code: '''
class Person extends Equatable {
  const Person(this.name);

  final String name;

  @override
  List<Object> get props => [name];

  @override
  bool get stringify => true;
}''',
            ),
          ],
          title: 'equatable',
        );
}
