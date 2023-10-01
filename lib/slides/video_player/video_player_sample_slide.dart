import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerSampleSlide extends FlutterDeckSplitSlide {
  const VideoPlayerSampleSlide({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            header: FlutterDeckHeaderConfiguration(title: 'video_player'),
            route: '/video-player-sample',
          ),
        );

  @override
  Widget left(BuildContext context) => const FlutterDeckCodeHighlight(
        code: '''
class _VideoPlayerWidgetState extends State<_VideoPlayerWidget> {
  final VideoPlayerController _videoPlayerController =
      VideoPlayerController.networkUrl(
    Uri.parse(
      'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
    ),
  );

  @override
  void initState() {
    super.initState();
    _videoPlayerController.initialize().then(
          (_) => setState(
            () {
              _videoPlayerController.setLooping(true);
            },
          ),
        );
  }

  @override
  Widget build(BuildContext context) => Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          AspectRatio(
            aspectRatio: 4 / 3,
            child: VideoPlayer(_videoPlayerController),
          ),
          Text(
            'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
            style: Theme.of(context).textTheme.labelMedium,
          ),
          const SizedBox(height: 16),
          FloatingActionButton(
            child: Icon(
              _videoPlayerController.value.isPlaying
                  ? Icons.pause
                  : Icons.play_arrow,
            ),
            onPressed: () => setState(
              () {
                _videoPlayerController.value.isPlaying
                    ? _videoPlayerController.pause()
                    : _videoPlayerController.play();
              },
            ),
          ),
        ],
      );
}''',
        textStyle: TextStyle(fontSize: 18),
      );
  @override
  Widget right(BuildContext context) => const _VideoPlayerWidget();
}

class _VideoPlayerWidget extends StatefulWidget {
  const _VideoPlayerWidget();

  @override
  State<_VideoPlayerWidget> createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<_VideoPlayerWidget> {
  final VideoPlayerController _videoPlayerController =
      VideoPlayerController.networkUrl(
    Uri.parse(
      'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
    ),
  );

  @override
  void initState() {
    super.initState();
    _videoPlayerController.initialize().then(
          (_) => setState(
            () {
              _videoPlayerController.setLooping(true);
            },
          ),
        );
  }

  @override
  Widget build(BuildContext context) => Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          AspectRatio(
            aspectRatio: 4 / 3,
            child: VideoPlayer(_videoPlayerController),
          ),
          Text(
            'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
            style: Theme.of(context).textTheme.labelMedium,
          ),
          const SizedBox(height: 16),
          FloatingActionButton(
            child: Icon(
              _videoPlayerController.value.isPlaying
                  ? Icons.pause
                  : Icons.play_arrow,
            ),
            onPressed: () => setState(
              () {
                _videoPlayerController.value.isPlaying
                    ? _videoPlayerController.pause()
                    : _videoPlayerController.play();
              },
            ),
          ),
        ],
      );
}
