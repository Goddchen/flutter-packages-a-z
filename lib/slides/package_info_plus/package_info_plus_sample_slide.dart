import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_packages_a_z/slides/sample_slide.dart';
import 'package:package_info_plus/package_info_plus.dart';

class PackageInfoPlusSampleSlide extends SampleSlide {
  PackageInfoPlusSampleSlide()
      : super(
          route: '/package-info-plus-sample',
          sampleCodes: const <Widget>[
            FlutterDeckCodeHighlight(
              code: r'''
FutureBuilder<PackageInfo>(
            future: PackageInfo.fromPlatform(),
            builder: (
              BuildContext context,
              AsyncSnapshot<PackageInfo> snapshot,
            ) =>
                snapshot.hasData
                    ? Column(
                        children: <Widget>[
                          Text('App name: ${snapshot.data!.appName}'),
                          Text('Build number: ${snapshot.data!.buildNumber}'),
                          Text('Build signature: '
                              '${snapshot.data!.buildSignature}'),
                          Text(
                            'Installer store: ${snapshot.data!.installerStore}',
                          ),
                          Text('Package name: ${snapshot.data!.packageName}'),
                          Text('Version: ${snapshot.data!.version}'),
                        ],
                      )
                    : const CircularProgressIndicator(),
          );''',
            ),
          ],
          sampleWidget: FutureBuilder<PackageInfo>(
            future: PackageInfo.fromPlatform(),
            builder: (
              BuildContext context,
              AsyncSnapshot<PackageInfo> snapshot,
            ) =>
                snapshot.hasData
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('App name: ${snapshot.data!.appName}'),
                          Text('Build number: ${snapshot.data!.buildNumber}'),
                          Text('Build signature: '
                              '${snapshot.data!.buildSignature}'),
                          Text(
                            'Installer store: ${snapshot.data!.installerStore}',
                          ),
                          Text('Package name: ${snapshot.data!.packageName}'),
                          Text('Version: ${snapshot.data!.version}'),
                        ],
                      )
                    : const CircularProgressIndicator(),
          ),
          title: 'package_info_plus',
        );
}
