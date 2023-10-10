import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_packages_a_z/slides/sample_slide.dart';

class CachedNetworkImageSampleSlide extends SampleSlide {
  CachedNetworkImageSampleSlide()
      : super(
          route: '/cached_network_image_sample',
          sampleCodes: const <Widget>[
            FlutterDeckCodeHighlightTheme(
              data: FlutterDeckCodeHighlightThemeData(
                textStyle: TextStyle(fontSize: 20),
              ),
              child: FlutterDeckCodeHighlight(
                code: '''
          @override
          Widget right(BuildContext context) => Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                'Source: https://picsum.photos',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              const SizedBox(height: 16),
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            childAspectRatio: 4 / 3,
            maxCrossAxisExtent: 300,
                  ),
                  itemBuilder: (BuildContext context, int index) =>
              CachedNetworkImage(
            imageUrl: _imageUris[index].toString(),
                  ),
                  itemCount: _imageUris.length,
                ),
              ),
            ],
          );''',
              ),
            ),
          ],
          sampleWidget: Builder(
            builder: (BuildContext context) => Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  'Source: https://picsum.photos',
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                const SizedBox(height: 16),
                Expanded(
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                      childAspectRatio: 4 / 3,
                      maxCrossAxisExtent: 300,
                    ),
                    itemBuilder: (BuildContext context, int index) =>
                        CachedNetworkImage(
                      fit: BoxFit.cover,
                      imageUrl: _imageUris[index].toString(),
                      memCacheHeight: 300,
                      memCacheWidth: 400,
                      maxHeightDiskCache: 300,
                      maxWidthDiskCache: 400,
                    ),
                    itemCount: _imageUris.length,
                  ),
                ),
              ],
            ),
          ),
          title: 'cached_network_image',
        );

  static final List<Uri> _imageUris = List<Uri>.generate(
    1000,
    (int index) => Uri.parse('https://picsum.photos/400/300?index=$index'),
  );
}
