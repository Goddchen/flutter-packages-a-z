import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_packages_a_z/slides/overview_slide.dart';
import 'package:flutter_packages_a_z/widgets/package_badge.dart';

class {{package_name.pascalCase()}}Slide extends OverviewSlide {
  {{package_name.pascalCase()}}Slide()
      : super(
          bulletPoints: const <String>[{{#bullet_points}}
            '{{.}}',{{/bullet_points}}
          ],
          packageAuthor: '{{package_author}}',
          packageDescription:
              '''{{package_description}}''',
          packageLikes: {{package_likes}},
          packageName: '{{package_name}}',
          packageSupportedPlatforms: <SupportedPlatform>{{=<% %>=}}{<%#package_supported_platforms%>
            SupportedPlatform.<%.%>,<%/package_supported_platforms%><%={{ }}=%>
          },
          packageVersion: '{{package_version}}',
          route: '/{{package_name.paramCase()}}',
          samples: const <Widget>[
            FlutterDeckCodeHighlight(
              code: '''
TODO: add example here''',
            ),
          ],
          title: '{{package_name}}',
        );
}
