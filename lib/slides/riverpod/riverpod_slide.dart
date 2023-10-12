import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_packages_a_z/slides/overview_slide.dart';
import 'package:flutter_packages_a_z/widgets/package_badge.dart';

class RiverpodSlide extends OverviewSlide {
  RiverpodSlide()
      : super(
          bulletPoints: const <String>[
            'State management package',
            'Good documentation',
            'Also see: riverpod_generator, flutter_riverpod, hooks_riverpod',
            'Compile-safe way to handle state',
            'Pure Dart package, works without Flutter',
          ],
          packageAuthor: 'dash-overflow.net',
          packageDescription: '''
A state-management library [...].
    
This project can be considered as a rewrite of provider to make improvements that would be otherwise impossible.''',
          packageLikes: 2788,
          packageName: 'riverpod',
          packageSupportedPlatforms: <SupportedPlatform>{
            SupportedPlatform.android,
            SupportedPlatform.ios,
            SupportedPlatform.linux,
            SupportedPlatform.macos,
            SupportedPlatform.web,
            SupportedPlatform.windows,
          },
          packageVersion: '2.4.3',
          route: '/riverpod',
          samples: const <Widget>[
            FlutterDeckCodeHighlightTheme(
              data: FlutterDeckCodeHighlightThemeData(
                textStyle: TextStyle(fontSize: 16),
              ),
              child: FlutterDeckCodeHighlight(
                code: '''
final counterProvider = NotifierProvider<Counter, int>(Counter.new);

class Counter extends Notifier<int> {
  @override
  int build() => 0;

  void increment() => state++;
}''',
              ),
            ),
            FlutterDeckCodeHighlightTheme(
              data: FlutterDeckCodeHighlightThemeData(
                textStyle: TextStyle(fontSize: 16),
              ),
              child: FlutterDeckCodeHighlight(
                code: '''
class Example extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(counterProvider);
    return Text(count.toString());
  }
}''',
              ),
            ),
            FlutterDeckCodeHighlightTheme(
              data: FlutterDeckCodeHighlightThemeData(
                textStyle: TextStyle(fontSize: 16),
              ),
              child: FlutterDeckCodeHighlight(
                code: '''
ProviderScope(
  child: MyApp(),
);''',
              ),
            ),
          ],
          title: 'riverpod',
        );
}
