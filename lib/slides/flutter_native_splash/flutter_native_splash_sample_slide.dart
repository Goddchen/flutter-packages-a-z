import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_packages_a_z/gen/assets.gen.dart';

class FlutterNativeSplashSampleSlide extends FlutterDeckSlideWidget {
  FlutterNativeSplashSampleSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/flutter-native-splash-sample',
            header:
                FlutterDeckHeaderConfiguration(title: 'flutter_native_splash'),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) => FlutterDeckSlide.blank(
        builder: (BuildContext context) => Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Assets.flutterNativeSplashDemo.image(
              fit: BoxFit.fitHeight,
              height: 600,
            ),
            const SizedBox(width: 16),
            Assets.flutterNativeSplashDemoDark.image(
              fit: BoxFit.fitHeight,
              height: 600,
            ),
          ],
        ),
      );
}
