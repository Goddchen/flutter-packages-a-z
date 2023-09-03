// ignore_for_file: public_member_api_docs

import 'package:flutter_deck/flutter_deck.dart';

class TitleSlide extends FlutterDeckTitleSlide {
  const TitleSlide({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/title',
          ),
        );

  @override
  String get title => 'Flutter Packages A-Z';
}
