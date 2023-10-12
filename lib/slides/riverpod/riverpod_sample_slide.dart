import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_packages_a_z/slides/sample_slide.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RiverpodSampleSlide extends SampleSlide {
  RiverpodSampleSlide()
      : super(
          route: '/riverpod-sample',
          sampleCodes: const <Widget>[
            FlutterDeckCodeHighlight(
              code: r'''
Consumer(
            builder: (
              BuildContext context,
              WidgetRef ref,
              ___,
            ) =>
                Scaffold(
              body: Center(
                child: Text(
                  '${ref.watch(counterProvider)} presses',
                  style: FlutterDeckThemeData.light().textTheme.bodyLarge,
                ),
              ),
              floatingActionButton: FloatingActionButton(
                child: const Icon(Icons.add),
                onPressed: () {
                  ref.read(counterProvider.notifier).increment();
                },
              ),
            ),
          );''',
            ),
          ],
          sampleWidget: Consumer(
            builder: (
              BuildContext context,
              WidgetRef ref,
              ___,
            ) =>
                Scaffold(
              body: Center(
                child: Text(
                  '${ref.watch(counterProvider)} presses',
                  style: FlutterDeckThemeData.light().textTheme.bodyLarge,
                ),
              ),
              floatingActionButton: FloatingActionButton(
                child: const Icon(Icons.add),
                onPressed: () {
                  ref.read(counterProvider.notifier).increment();
                },
              ),
            ),
          ),
          title: 'riverpod',
        );
}

final NotifierProvider<Counter, int> counterProvider =
    NotifierProvider<Counter, int>(Counter.new);

class Counter extends Notifier<int> {
  @override
  int build() => 0;

  void increment() => state++;
}
