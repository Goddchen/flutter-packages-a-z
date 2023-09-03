import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_packages_a_z/slides/title/title_slide.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Dummy test, remove once real tests are added',
      (WidgetTester widgetTester) async {
    await widgetTester.pumpWidget(
      FlutterDeckApp(
        slides: const [
          TitleSlide(),
        ],
      ),
    );
  });
}
