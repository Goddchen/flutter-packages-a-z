import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_packages_a_z/gen/assets.gen.dart';
import 'package:flutter_packages_a_z/services/navigation_service.dart';
import 'package:flutter_packages_a_z/slides/austerity/austerity_slide.dart';
import 'package:flutter_packages_a_z/slides/beamer/beamer_sample_slide.dart';
import 'package:flutter_packages_a_z/slides/beamer/beamer_slide.dart';
import 'package:flutter_packages_a_z/slides/cached_network_image/cached_network_image_sample_slide.dart';
import 'package:flutter_packages_a_z/slides/cached_network_image/cached_network_image_slide.dart';
import 'package:flutter_packages_a_z/slides/dio/dio_sample_slide.dart';
import 'package:flutter_packages_a_z/slides/dio/dio_slide.dart';
import 'package:flutter_packages_a_z/slides/title/title_slide.dart';
import 'package:get_it/get_it.dart';

void main() {
  GetIt.I.registerSingleton(NavigationService());
  runApp(
    FlutterDeckApp(
      speakerInfo: FlutterDeckSpeakerInfo(
        name: 'Martin "Goddchen" Liersch',
        description: 'Flutter developer from Germany',
        socialHandle: '@Goddchen',
        imagePath: Assets.avatar.path,
      ),
      slides: <FlutterDeckSlide>[
        const TitleSlide(),
        const AusteritySlide(),
        const BeamerSlide(),
        const BeamerSampleSlide(),
        const CachedNetworkImageSlide(),
        CachedNetworkImageSampleSlide(),
        const DioSlide(),
        const DioSampleSlide(),
      ],
    ),
  );
}
