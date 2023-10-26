import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_packages_a_z/slides/sample_slide.dart';
import 'package:isar/isar.dart';

part 'isar_sample_slide.g.dart';

class IsarSampleSlide extends SampleSlide {
  IsarSampleSlide()
      : super(
          route: '/isar-sample',
          sampleCodes: const <Widget>[
            FlutterDeckCodeHighlightTheme(
              data: FlutterDeckCodeHighlightThemeData(
                textStyle: TextStyle(fontSize: 12),
              ),
              child: FlutterDeckCodeHighlight(
                code: r'''
            class __IsarSampleState extends State<_IsarSample> {
              late final Isar _isar;
            
              @override
              Widget build(BuildContext context) => Theme(
                    data: FlutterDeckTheme.of(context).materialTheme,
                    child: Scaffold(
                      body: ListView(
              children: _isar.tests
                  .where()
                  .findAll()
                  .map(
                    (Test e) => Text('id: ${e.id}, text: ${e.text}'),
                  )
                  .toList()
                  .reversed
                  .toList(),
                      ),
                      floatingActionButton: FloatingActionButton(
              onPressed: () {
                _isar.write(
                  (Isar isar) => isar.tests.put(
                    Test(
                      id: DateTime.now().millisecondsSinceEpoch,
                      text: DateTime.now().toString(),
                    ),
                  ),
                );
                setState(() {});
              },
              child: const Icon(Icons.add),
                      ),
                    ),
                  );
            
              @override
              void dispose() {
                _isar.close();
                super.dispose();
              }
            
              @override
              void initState() {
                super.initState();
                _isar = Isar.open(
                  engine: IsarEngine.sqlite,
                  schemas: <IsarGeneratedSchema>[TestSchema],
                  directory: Isar.sqliteInMemory,
                );
              }
            }''',
              ),
            ),
          ],
          sampleWidget: const _IsarSample(),
          title: 'isar',
        );
}

@collection
class Test {
  Test({
    required this.id,
    required this.text,
  });

  int id;
  String text;
}

class _IsarSample extends StatefulWidget {
  const _IsarSample();

  @override
  State<_IsarSample> createState() => __IsarSampleState();
}

class __IsarSampleState extends State<_IsarSample> {
  late final Isar _isar;

  @override
  Widget build(BuildContext context) => Theme(
        data: FlutterDeckTheme.of(context).materialTheme,
        child: Scaffold(
          body: ListView(
            children: _isar.tests
                .where()
                .findAll()
                .map(
                  (Test e) => Text(
                    'id: ${e.id}, text: ${e.text}',
                    style: const TextStyle(fontSize: 20),
                  ),
                )
                .toList()
                .reversed
                .toList(),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              _isar.write(
                (Isar isar) => isar.tests.put(
                  Test(
                    id: DateTime.now().millisecondsSinceEpoch,
                    text: DateTime.now().toString(),
                  ),
                ),
              );
              setState(() {});
            },
            child: const Icon(Icons.add),
          ),
        ),
      );

  @override
  void dispose() {
    _isar.close();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _isar = Isar.open(
      engine: IsarEngine.sqlite,
      schemas: <IsarGeneratedSchema>[TestSchema],
      directory: Isar.sqliteInMemory,
    );
  }
}
