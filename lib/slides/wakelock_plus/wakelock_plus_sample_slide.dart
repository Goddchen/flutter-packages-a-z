import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_packages_a_z/slides/sample_slide.dart';
import 'package:wakelock_plus/wakelock_plus.dart';

class WakelockPlusSampleSlide extends SampleSlide {
  WakelockPlusSampleSlide()
      : super(
          route: '/wakelock-plus-sample',
          sampleCodes: const <Widget>[
            FlutterDeckCodeHighlight(
              code: r'''
StatefulBuilder(
  builder: (
    BuildContext context,
    void Function(void Function()) setState,
  ) =>
      Column(
    mainAxisSize: MainAxisSize.min,
    children: <Widget>[
      FutureBuilder<bool>(
        future: WakelockPlus.enabled,
        builder: (_, AsyncSnapshot<bool> snapshot) =>
            Text('Wakelock enabled: ${snapshot.data}'),
      ),
      const SizedBox(height: 16),
      ElevatedButton(
        onPressed: () async {
          await WakelockPlus.toggle(
            enable: !await WakelockPlus.enabled,
          );
          setState(() {});
        },
        child: const Text('Toggle wakelock'),
      ),
    ],
  ),
);''',
            ),
          ],
          sampleWidget: StatefulBuilder(
            builder: (
              BuildContext context,
              void Function(void Function()) setState,
            ) =>
                Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                FutureBuilder<bool>(
                  future: WakelockPlus.enabled,
                  builder: (_, AsyncSnapshot<bool> snapshot) =>
                      Text('Wakelock enabled: ${snapshot.data}'),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () async {
                    await WakelockPlus.toggle(
                      enable: !await WakelockPlus.enabled,
                    );
                    setState(() {});
                  },
                  child: const Text('Toggle wakelock'),
                ),
              ],
            ),
          ),
          title: 'wakelock_plus',
        );
}
