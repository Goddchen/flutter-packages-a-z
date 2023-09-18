import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class FlutterZoomDrawerSampleSlide extends FlutterDeckSplitSlide {
  const FlutterZoomDrawerSampleSlide({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            header:
                FlutterDeckHeaderConfiguration(title: 'flutter_zoom_drawer'),
            route: '/flutter-zoom-drawer-sample',
          ),
        );

  @override
  Widget left(BuildContext context) => const FlutterDeckCodeHighlight(
        code: r'''
final ZoomDrawerController zoomDrawerController = ZoomDrawerController();
return ClipRRect(
  child: Scaffold(
    appBar: AppBar(
      leading: IconButton(
        onPressed: () {
          zoomDrawerController.toggle!();
        },
        icon: const Icon(Icons.heart_broken),
      ),
      title: const Text('flutter_zoom_drawer Sample'),
    ),
    body: ZoomDrawer(
      controller: zoomDrawerController,
      menuScreen: ColoredBox(
        color: Theme.of(context).colorScheme.secondaryContainer,
        child: Column(
          children: List<Widget>.generate(
            5,
            (int index) => ListTile(
              title: Text('Item #$index'),
            ),
          ),
        ),
      ),
      mainScreen: const Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text('Here is some content'),
            Icon(
              Icons.book,
              size: 128,
            ),
          ],
        ),
      ),
    ),
  ),
);''',
        textStyle: TextStyle(fontSize: 20),
      );

  @override
  Widget right(BuildContext context) {
    final ZoomDrawerController zoomDrawerController = ZoomDrawerController();
    return ClipRRect(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              zoomDrawerController.toggle!();
            },
            icon: const Icon(Icons.heart_broken),
          ),
          title: const Text('flutter_zoom_drawer Sample'),
        ),
        body: ZoomDrawer(
          controller: zoomDrawerController,
          menuScreen: ColoredBox(
            color: Theme.of(context).colorScheme.secondaryContainer,
            child: Column(
              children: List<Widget>.generate(
                5,
                (int index) => ListTile(
                  title: Text('Item #$index'),
                ),
              ),
            ),
          ),
          mainScreen: const Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text('Here is some content'),
                Icon(
                  Icons.book,
                  size: 128,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
