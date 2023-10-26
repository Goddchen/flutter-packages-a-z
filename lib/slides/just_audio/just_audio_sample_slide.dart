import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_packages_a_z/gen/assets.gen.dart';
import 'package:flutter_packages_a_z/slides/sample_slide.dart';
import 'package:just_audio/just_audio.dart';

class JustAudioSampleSlide extends SampleSlide {
  JustAudioSampleSlide()
      : super(
          route: '/just-audio-sample',
          sampleCodes: const <Widget>[
            FlutterDeckCodeHighlightTheme(
              data: FlutterDeckCodeHighlightThemeData(
                textStyle: TextStyle(fontSize: 18),
              ),
              child: FlutterDeckCodeHighlight(
                code: '''
            class _JustAudioSampleSlide extends StatefulWidget {
              const _JustAudioSampleSlide();
            
              @override
              State<_JustAudioSampleSlide> createState() => __JustAudioSampleSlideState();
            }
            
            class __JustAudioSampleSlideState extends State<_JustAudioSampleSlide> {
              final AudioPlayer _audioPlayer = AudioPlayer();
              late StreamSubscription<bool> _playingSubscription;
            
              @override
              void initState() {
                super.initState();
                scheduleMicrotask(
                  () async => _audioPlayer
                      .setAudioSource(AudioSource.asset(Assets.justAudioSample)),
                );
                _playingSubscription = _audioPlayer.playingStream.listen((_) {
                  setState(() {});
                });
              }
            
              @override
              Widget build(BuildContext context) => FloatingActionButton.large(
                    onPressed: () =>
              _audioPlayer.playing ? _audioPlayer.pause() : _audioPlayer.play(),
                    child: Icon(_audioPlayer.playing ? Icons.pause : Icons.play_arrow),
                  );
            
              @override
              void dispose() {
                super.dispose();
                _audioPlayer.dispose();
                _playingSubscription.cancel();
              }
            }''',
              ),
            ),
          ],
          sampleWidget: const _JustAudioSampleSlide(),
          title: 'just_audio',
        );
}

class _JustAudioSampleSlide extends StatefulWidget {
  const _JustAudioSampleSlide();

  @override
  State<_JustAudioSampleSlide> createState() => __JustAudioSampleSlideState();
}

class __JustAudioSampleSlideState extends State<_JustAudioSampleSlide> {
  final AudioPlayer _audioPlayer = AudioPlayer();
  late StreamSubscription<bool> _playingSubscription;

  @override
  void initState() {
    super.initState();
    scheduleMicrotask(
      () async => _audioPlayer
          .setAudioSource(AudioSource.asset(Assets.justAudioSample)),
    );
    _playingSubscription = _audioPlayer.playingStream.listen((_) {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) => FloatingActionButton.large(
        onPressed: () =>
            _audioPlayer.playing ? _audioPlayer.pause() : _audioPlayer.play(),
        child: Icon(_audioPlayer.playing ? Icons.pause : Icons.play_arrow),
      );

  @override
  void dispose() {
    super.dispose();
    _audioPlayer.dispose();
    _playingSubscription.cancel();
  }
}
