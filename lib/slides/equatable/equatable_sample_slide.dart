import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_packages_a_z/slides/sample_slide.dart';

class EquatablePerson extends Equatable {
  final String name;

  const EquatablePerson({required this.name});

  @override
  List<Object?> get props => <Object>[name];

  @override
  bool? get stringify => true;
}

class EquatableSampleSlide extends SampleSlide {
  static const EquatablePerson equatablePerson1 =
      EquatablePerson(name: 'Equatable');
  static const EquatablePerson equatablePerson2 =
      EquatablePerson(name: 'Equatable');
  static const ImmutablePerson immutablePerson1 =
      ImmutablePerson(name: 'Immutable');
  static const ImmutablePerson immutablePerson2 =
      ImmutablePerson(name: 'Immutable');
  static Person person1 = Person(name: 'Pure');
  static Person person2 = Person(name: 'Pure');

  EquatableSampleSlide()
      : super(
          route: '/equatable-sample',
          sampleCodes: const <Widget>[
            FlutterDeckCodeHighlight(
              code: '''
class EquatablePerson extends Equatable {
  final String name;

  const EquatablePerson({required this.name});

  @override
  List<Object?> get props => <Object>[name];

  @override
  bool? get stringify => true;
}''',
            ),
            FlutterDeckCodeHighlight(
              code: '''
@immutable
class ImmutablePerson {
  final String name;

  const ImmutablePerson({required this.name});

  @override
  int get hashCode => name.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ImmutablePerson &&
          runtimeType == other.runtimeType &&
          name == other.name;
}''',
            ),
            FlutterDeckCodeHighlight(
              code: '''
class Person {
  final String name;

  Person({required this.name});
}''',
            ),
          ],
          sampleWidget: DefaultTextStyle(
            style: const TextStyle(fontSize: 22),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text('person1.toString() -> $person1'),
                Text('immutablePerson1.toString() -> $immutablePerson1'),
                Text('equatablePerson1.toString() -> $equatablePerson1'),
                const SizedBox(height: 16),
                Text('person1.hashCode -> ${person1.hashCode}'),
                Text('person2.hashCode -> ${person2.hashCode}'),
                Text(
                  'immutablePerson1.hashCode -> ${immutablePerson1.hashCode}',
                ),
                Text(
                  'immutablePerson2.hashCode -> ${immutablePerson2.hashCode}',
                ),
                Text(
                  'equatablePerson1.hashCode -> ${equatablePerson1.hashCode}',
                ),
                Text(
                  'equatablePerson2.hashCode -> ${equatablePerson2.hashCode}',
                ),
                const SizedBox(height: 16),
                Text('person1 == person2 -> ${person1 == person2}'),
                Text(
                  '''immutablePerson1 == immutablePerson2 -> ${immutablePerson1 == immutablePerson2}''',
                ),
                Text(
                  '''equatablePerson1 == equatablePerson1 -> ${equatablePerson1 == equatablePerson1}''',
                ),
              ],
            ),
          ),
          title: 'equatable',
        );
}

@immutable
class ImmutablePerson {
  final String name;

  const ImmutablePerson({required this.name});

  @override
  int get hashCode => name.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ImmutablePerson &&
          runtimeType == other.runtimeType &&
          name == other.name;
}

class Person {
  final String name;

  Person({required this.name});
}
