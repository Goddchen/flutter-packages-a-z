import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_packages_a_z/slides/sample_slide.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class FlutterZoomDrawerSampleSlide extends SampleSlide {
  FlutterZoomDrawerSampleSlide()
      : super(
          route: '/flutter-zoom-drawer-sample',
          sampleCodes: const <Widget>[
            FlutterDeckCodeHighlight(
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
            ),
          ],
          sampleWidget: Builder(
            builder: (BuildContext context) {
              final ZoomDrawerController zoomDrawerController =
                  ZoomDrawerController();
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
            },
          ),
          title: 'flutter_zoom_drawer',
        );
}
