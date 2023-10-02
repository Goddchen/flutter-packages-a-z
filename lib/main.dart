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
import 'package:flutter_packages_a_z/slides/equatable/equatable_sample_slide.dart';
import 'package:flutter_packages_a_z/slides/equatable/equatable_slide.dart';
import 'package:flutter_packages_a_z/slides/flutter_hooks/flutter_hooks_sample_slide.dart';
import 'package:flutter_packages_a_z/slides/flutter_hooks/flutter_hooks_slide.dart';
import 'package:flutter_packages_a_z/slides/flutter_zoom_drawer/flutter_zoom_drawer_sample_slide.dart';
import 'package:flutter_packages_a_z/slides/flutter_zoom_drawer/flutter_zoom_drawer_slide.dart';
import 'package:flutter_packages_a_z/slides/fpdart/fpdart_slide.dart';
import 'package:flutter_packages_a_z/slides/go_router/go_router_sample_slide.dart';
import 'package:flutter_packages_a_z/slides/go_router/go_router_slide.dart';
import 'package:flutter_packages_a_z/slides/just_audio/just_audio_sample_slide.dart';
import 'package:flutter_packages_a_z/slides/just_audio/just_audio_slide.dart';
import 'package:flutter_packages_a_z/slides/lottie/lottie_sample_slide.dart';
import 'package:flutter_packages_a_z/slides/lottie/lottie_slide.dart';
import 'package:flutter_packages_a_z/slides/qr_flutter/qr_flutter_sample_slide.dart';
import 'package:flutter_packages_a_z/slides/qr_flutter/qr_flutter_slide.dart';
import 'package:flutter_packages_a_z/slides/share_plus/share_plus_sample_slide.dart';
import 'package:flutter_packages_a_z/slides/share_plus/share_plus_slide.dart';
import 'package:flutter_packages_a_z/slides/title/title_slide.dart';
import 'package:flutter_packages_a_z/slides/url_launcher/url_launcher_sample_slide.dart';
import 'package:flutter_packages_a_z/slides/url_launcher/url_launcher_slide.dart';
import 'package:flutter_packages_a_z/slides/video_player/video_player_sample_slide.dart';
import 'package:flutter_packages_a_z/slides/video_player/video_player_slide.dart';
import 'package:flutter_packages_a_z/slides/xml/xml_sample_slide.dart';
import 'package:flutter_packages_a_z/slides/xml/xml_slide.dart';
import 'package:flutter_packages_a_z/slides/youtube_player_iframe/youtube_player_iframe_sample_slide.dart';
import 'package:flutter_packages_a_z/slides/youtube_player_iframe/youtube_player_iframe_slide.dart';
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
        const EquatableSlide(),
        const EquatableSampleSlide(),
        const FpDartSlide(),
        const GoRouterSlide(),
        const GoRouterSampleSlide(),
        const FlutterHooksSlide(),
        const FlutterHooksSampleSlide(),
        const JustAudioSlide(),
        const JustAudioSampleSlide(),
        const LottieSlide(),
        const LottieSampleSlide(),
        const QrFlutterSlide(),
        const QrFlutterSampleSlide(),
        const SharePlusSlide(),
        const SharePlusSampleSlide(),
        const UrlLauncherSlide(),
        const UrlLauncherSampleSlide(),
        const VideoPlayerSlide(),
        const VideoPlayerSampleSlide(),
        XmlSlide(),
        XmlSampleSlide(),
        const YoutubePlayerIframeSlide(),
        const YoutubePlayerIframeSampleSlide(),
        const FlutterZoomDrawerSlide(),
        const FlutterZoomDrawerSampleSlide(),
      ],
    ),
  );
}
