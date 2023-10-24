import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_packages_a_z/slides/overview_slide.dart';
import 'package:flutter_packages_a_z/widgets/package_badge.dart';

class FlutterKeyboardVisibilitySlide extends OverviewSlide {
  FlutterKeyboardVisibilitySlide()
      : super(
          bulletPoints: <String>[
            'Handle changes in keyboard visibility',
            'Helper widget: KeyboardDismissOnTap',
            'Web implementation always returns false',
          ],
          packageAuthor: 'jasonrai.ca',
          packageDescription: 'React to keyboard visibility changes.',
          packageLikes: 758,
          packageName: 'flutter_keyboard_visibility',
          packageSupportedPlatforms: <SupportedPlatform>{
            SupportedPlatform.android,
            SupportedPlatform.ios,
            SupportedPlatform.linux,
            SupportedPlatform.macos,
            SupportedPlatform.windows,
          },
          packageVersion: '5.4.1',
          route: '/flutter-keyboard-visibility',
          samples: const <Widget>[
            FlutterDeckCodeHighlight(
              code: r'''
KeyboardVisibilityBuilder(
      builder: (context, isKeyboardVisible) {
        return Text(
          'The keyboard is: ${isKeyboardVisible ? 'VISIBLE' : 'NOT VISIBLE'}',
        );
      }
  );''',
            ),
            FlutterDeckCodeHighlight(
              code: r'''
KeyboardVisibilityProvider(
    child: MyDemoPage(),
  );
  
final bool isKeyboardVisible = KeyboardVisibilityProvider.isKeyboardVisible(context);
  return Text(
    'The keyboard is: ${isKeyboardVisible ? 'VISIBLE' : 'NOT VISIBLE'}',
  );''',
            ),
            FlutterDeckCodeHighlight(
              code: r'''
var keyboardVisibilityController = KeyboardVisibilityController();
  print('Keyboard visibility direct query: ${keyboardVisibilityController.isVisible}');''',
            ),
            FlutterDeckCodeHighlight(
              code: '''
KeyboardDismissOnTap(
    child: MyDemoPage(),
  );''',
            ),
          ],
          title: 'flutter_keyboard_visibility',
        );
}
