import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_packages_a_z/slides/sample_slide.dart';

class FlutterKeyboardVisibilitySampleSlide extends SampleSlide {
  FlutterKeyboardVisibilitySampleSlide()
      : super(
          route: '/flutter-keyboard-visibility-sample',
          sampleCodes: const <Widget>[
            FlutterDeckCodeHighlight(
              code: '''
KeyboardVisibilityBuilder(
            builder: (_, bool isKeyboardVisible) => Text(
              isKeyboardVisible ? 'Keyboard visible' : 'Keyboard not visible',
            ),
          );''',
            ),
          ],
          sampleWidget: KeyboardVisibilityBuilder(
            builder: (_, bool isKeyboardVisible) => Center(
              child: Text(
                isKeyboardVisible ? 'Keyboard visible' : 'Keyboard not visible',
              ),
            ),
          ),
          title: 'flutter_keyboard_visibility',
        );
}
