import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_packages_a_z/gen/assets.gen.dart';
import 'package:flutter_packages_a_z/slides/title/title_slide.dart';

void main() {
  runApp(
    FlutterDeckApp(
      speakerInfo: FlutterDeckSpeakerInfo(
        name: 'Martin "Goddchen" Liersch',
        description: 'Flutter developer from Germany',
        socialHandle: '@Goddchen',
        imagePath: Assets.avatar.path,
      ),
      slides: const [
        TitleSlide(),
      ],
    ),
  );
}
