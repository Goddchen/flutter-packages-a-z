import 'package:flutter/material.dart';
import 'package:flutter_packages_a_z/slides/sample_slide.dart';
import 'package:isar/isar.dart';

part 'isar_sample_slide.g.dart';

class IsarSampleSlide extends SampleSlide {
  IsarSampleSlide()
      : super(
          route: '/isar-sample',
          sampleCodes: const <Widget>[],
          sampleWidget: const Placeholder(),
          title: 'isar',
        );
}

@collection
class Test {
  Id id = Isar.autoIncrement;
  String? text;
}

class Test2Schema 

class _IsarSample extends StatefulWidget {
  const _IsarSample();

  @override
  State<_IsarSample> createState() => __IsarSampleState();
}

class __IsarSampleState extends State<_IsarSample> {
  late final Isar _isar;

  @override
  Widget build(BuildContext context) => Scaffold(
        body: StreamBuilder<void>(
          stream: _isar.tests.watchLazy(fireImmediately: true),
          builder: (_, __) => ListView(
            children: _isar.tests
                .where()
                .findAllSync()
                .map(
                  (Test e) => Text(e.text ?? ''),
                )
                .toList(),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () =>
              _isar.tests.put(Test()..text = DateTime.now().toString()),
          child: const Icon(Icons.add),
        ),
      );

  @override
  void initState() {
    super.initState();
    _isar = Isar.openSync(
      <CollectionSchema<dynamic>>[TestSchema],
      directory: '.',
    );
  }
}
