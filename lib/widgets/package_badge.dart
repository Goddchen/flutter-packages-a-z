import 'package:flutter/material.dart';
import 'package:flutter_packages_a_z/services/navigation_service.dart';
import 'package:get_it/get_it.dart';

class PackageBadge extends StatelessWidget {
  const PackageBadge({
    required String author,
    required int likes,
    required String name,
    required String version,
    super.key,
  })  : _author = author,
        _likes = likes,
        _name = name,
        _version = version;

  final String _author;
  final int _likes;
  final String _name;
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
              ],
            ),
          ),
        ),
      );
}
