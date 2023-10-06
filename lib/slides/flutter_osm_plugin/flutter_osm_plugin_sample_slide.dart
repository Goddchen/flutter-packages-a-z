import 'package:flutter/material.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';
import 'package:flutter_packages_a_z/slides/sample_slide.dart';

class FlutterOsmPluginSampleSlide extends SampleSlide {
  FlutterOsmPluginSampleSlide({super.key})
      : super(
          route: '/flutter-osm-plugin-sample',
          sampleCode: '''
class _MapWidgetState extends State<_MapWidget> {
  static final GeoPoint _home = GeoPoint(
    latitude: 47.672982,
    longitude: 9.165711,
  );

  final MapController _mapController =
      MapController.withPosition(initPosition: _home);

  @override
  void dispose() {
    _mapController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => OSMFlutter(
        controller: _mapController,
        osmOption: OSMOption(
          staticPoints: <StaticPositionGeoPoint>[
            StaticPositionGeoPoint(
              'home',
              const MarkerIcon(icon: Icon(Icons.home)),
              <GeoPoint>[
                _home,
              ],
            ),
          ],
          zoomOption: const ZoomOption(initZoom: 12),
        ),
      );
}''',
          sampleWidget: const _MapWidget(),
          title: 'flutter_osm_plugin',
        );
}

class _MapWidget extends StatefulWidget {
  const _MapWidget();

  @override
  State<_MapWidget> createState() => _MapWidgetState();
}

class _MapWidgetState extends State<_MapWidget> {
  static final GeoPoint _home = GeoPoint(
    latitude: 47.672982,
    longitude: 9.165711,
  );

  final MapController _mapController =
      MapController.withPosition(initPosition: _home);

  @override
  void dispose() {
    _mapController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => OSMFlutter(
        controller: _mapController,
        osmOption: OSMOption(
          staticPoints: <StaticPositionGeoPoint>[
            StaticPositionGeoPoint(
              'home',
              const MarkerIcon(icon: Icon(Icons.home)),
              <GeoPoint>[
                _home,
              ],
            ),
          ],
          zoomOption: const ZoomOption(initZoom: 12),
        ),
      );
}
