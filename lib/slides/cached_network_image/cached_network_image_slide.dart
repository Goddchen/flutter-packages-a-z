import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_packages_a_z/slides/overview_slide.dart';
import 'package:flutter_packages_a_z/widgets/package_badge.dart';

class CachedNetworkImageSlide extends OverviewSlide {
  CachedNetworkImageSlide()
      : super(
          bulletPoints: const <String>[
            'Cache images',
            'Custom placeholder widgets',
            'Custom error widgets',
            'Custom progress indicators',
            'Cache settings configurable',
            'Uses flutter_cache_manager internally',
          ],
          packageAuthor: 'baseflow.com',
          packageDescription:
              '''A flutter library to show images from the internet and keep them in the cache directory.''',
          packageLikes: 4972,
          packageName: 'cached_network_image',
          packageSupportedPlatforms: <SupportedPlatform>{
            SupportedPlatform.android,
            SupportedPlatform.ios,
            SupportedPlatform.linux,
            SupportedPlatform.macos,
            SupportedPlatform.web,
            SupportedPlatform.windows,
          },
          packageVersion: '3.2.3',
          route: '/cached_network_image',
          samples: const <FlutterDeckCodeHighlight>[
            FlutterDeckCodeHighlight(
              code: r'$ flutter pub add cached_network_image',
              language: 'bash',
            ),
            FlutterDeckCodeHighlight(
              code: '''
CachedNetworkImage(
  imageUrl: "http://via.placeholder.com/350x150",
  placeholder: (context, url) => CircularProgressIndicator(),
  errorWidget: (context, url, error) => Icon(Icons.error),
);''',
            ),
          ],
          title: 'cached_network_image',
        );
}
