import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_packages_a_z/slides/overview_slide.dart';
import 'package:flutter_packages_a_z/widgets/package_badge.dart';

class FlutterOsmPluginSlide extends OverviewSlide {
  FlutterOsmPluginSlide()
      : super(
          bulletPoints: const <String>[
            'OpenStreetMap plugin for iOS, Android and web',
            'Extensive marker features',
            'Custom layers',
            'Draw navigation routes',
            'Address suggestion',
            'Display as location picker',
          ],
          packageAuthor: 'unverified uploader',
          packageDescription: 'OpenStreetMap plugin',
          packageLikes: 321,
          packageName: 'flutter_osm_plugin',
          packageSupportedPlatforms: <SupportedPlatform>{
            SupportedPlatform.android,
            SupportedPlatform.ios,
            SupportedPlatform.web,
          },
          packageVersion: '0.60.5',
          route: '/flutter-osm-plugin',
          samples: const <Widget>[
            FlutterDeckCodeHighlightTheme(
              data: FlutterDeckCodeHighlightThemeData(
                textStyle: TextStyle(fontSize: 16),
              ),
              child: FlutterDeckCodeHighlight(
                code: '''
OSMFlutter( 
  controller:mapController,
  osmOption: OSMOption(
        userTrackingOption: UserTrackingOption(
        enableTracking: true,
        unFollowUser: false,
      ),
      zoomOption: ZoomOption(
            initZoom: 8,
            minZoomLevel: 3,
            maxZoomLevel: 19,
            stepZoom: 1.0,
      ),
      userLocationMarker: UserLocationMaker(
          personMarker: MarkerIcon(
              icon: Icon(
                  Icons.location_history_rounded,
                  color: Colors.red,
                  size: 48,
              ),
          ),
          directionArrowMarker: MarkerIcon(
              icon: Icon(
                  Icons.double_arrow,
                  size: 48,
              ),
          ),
      ),
      roadConfiguration: RoadOption(
              roadColor: Colors.yellowAccent,
      ),
      markerOption: MarkerOption(
          defaultMarker: MarkerIcon(
              icon: Icon(
                Icons.person_pin_circle,
                color: Colors.blue,
                size: 56,
              ),
          )
      ),
  )
);''',
              ),
            ),
          ],
          title: 'flutter_osm_plugin',
        );
}
