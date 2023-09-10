import 'package:flutter/material.dart';
import 'package:flutter_packages_a_z/services/navigation_service.dart';
import 'package:get_it/get_it.dart';

enum SupportedPlatform {
  android,
  ios,
  linux,
  macos,
  web,
  windows,
}

class PackageBadge extends StatelessWidget {
  const PackageBadge({
    required String author,
    required int likes,
    required String name,
    required Set<SupportedPlatform> supportedPlatforms,
    required String version,
    super.key,
  })  : _author = author,
        _likes = likes,
        _name = name,
        _supportedPlatforms = supportedPlatforms,
        _version = version;

  final String _author;
  final int _likes;
  final String _name;
  final Iterable<SupportedPlatform> _supportedPlatforms;
  final String _version;

  @override
  Widget build(BuildContext context) => Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusDirectional.circular(16),
        ),
        color: Theme.of(context).colorScheme.secondaryContainer,
        child: InkWell(
          onTap: () => GetIt.I<NavigationService>().openLink(
            link: Uri.parse('https://pub.dev/packages/austerity'),
          ),
          borderRadius: BorderRadius.circular(16),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  '$_name ($_version)',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                const SizedBox(height: 8),
                Text(
                  _author,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                Text(
                  '$_likes 👍',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                Wrap(
                  alignment: WrapAlignment.center,
                  children: _supportedPlatforms
                      .map(
                        (SupportedPlatform supportedPlatform) => Chip(
                          label: Text(
                            switch (supportedPlatform) {
                              SupportedPlatform.android => 'Android',
                              SupportedPlatform.ios => 'iOS',
                              SupportedPlatform.linux => 'Linux',
                              SupportedPlatform.macos => 'MacOS',
                              SupportedPlatform.web => 'Web',
                              SupportedPlatform.windows => 'Windows',
                            },
                          ),
                        ),
                      )
                      .expand(
                        (Widget element) => <Widget>[
                          element,
                          const SizedBox(width: 8),
                        ],
                      )
                      .take(_supportedPlatforms.length * 2 - 1)
                      .toList(),
                ),
              ],
            ),
          ),
        ),
      );
}
