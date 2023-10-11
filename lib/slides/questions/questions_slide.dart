import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_packages_a_z/gen/assets.gen.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QuestionsSlide extends FlutterDeckSlideWidget {
  const QuestionsSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/questions',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) => FlutterDeckSlide.template(
        contentBuilder: (BuildContext context) => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Assets.dashQuestions.image(fit: BoxFit.contain),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    const Text(
                      'https://github.com/Goddchen/flutter-packages-a-z',
                    ),
                    QrImageView(
                      data: 'https://github.com/Goddchen/flutter-packages-a-z',
                      size: 200,
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    const Text('https://flutter-packages-a-z.web.app/'),
                    QrImageView(
                      data: 'https://flutter-packages-a-z.web.app/',
                      size: 200,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        footerBuilder: (BuildContext context) => const Padding(
          padding: EdgeInsets.all(16),
          child: Text(
            'Dash image source: https://github.com/ManasMalla/DashingThrough',
          ),
        ),
      );
}
