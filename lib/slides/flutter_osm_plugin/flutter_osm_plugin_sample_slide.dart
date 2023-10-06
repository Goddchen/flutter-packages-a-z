import 'package:flutter/material.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';
import 'package:flutter_packages_a_z/slides/sample_slide.dart';

class FlutterOsmPluginSampleSlide extends SampleSlide {
  FlutterOsmPluginSampleSlide({super.key})
      : super(
          route: '/flutter-osm-plugin-sample',
          sampleCode: '''
final GeoPoint home = GeoPoint(
  latitude: 47.672982,
  longitude: 9.165711,
);
return OSMFlutter(
  controller: MapController.withPosition(initPosition: home),
  osmOption: OSMOption(
    staticPoints: <StaticPositionGeoPoint>[
      StaticPositionGeoPoint(
        'home',
        const MarkerIcon(icon: Icon(Icons.home)),
        <GeoPoint>[
          home,
        ],
      ),
    ],
    zoomOption: const ZoomOption(initZoom: 12),
  ),
);''',
          sampleWidget: Builder(
            builder: (_) {
              final GeoPoint home = GeoPoint(
                latitude: 47.672982,
                longitude: 9.165711,
              );
              return OSMFlutter(
                controller: MapController.withPosition(initPosition: home),
                osmOption: OSMOption(
                  staticPoints: <StaticPositionGeoPoint>[
                    StaticPositionGeoPoint(
                      'home',
                      const MarkerIcon(icon: Icon(Icons.home)),
                      <GeoPoint>[
                        home,
                      ],
                    ),
                  ],
                  zoomOption: const ZoomOption(initZoom: 12),
                ),
              );
            },
          ),
          title: 'flutter_osm_plugin',
        );
}
