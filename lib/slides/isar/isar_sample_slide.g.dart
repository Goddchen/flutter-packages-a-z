// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'isar_sample_slide.dart';

// **************************************************************************
// _IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, invalid_use_of_protected_member, lines_longer_than_80_chars, constant_identifier_names, avoid_js_rounded_ints, no_leading_underscores_for_local_identifiers, require_trailing_commas, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_in_if_null_operators, library_private_types_in_public_api, prefer_const_constructors
// ignore_for_file: type=lint

extension GetTestCollection on Isar {
  IsarCollection<int, Test> get tests => this.collection();
}

const TestSchema = IsarGeneratedSchema(
  schema: IsarSchema(
    name: 'Test',
    idName: 'id',
    embedded: false,
    properties: [
      IsarPropertySchema(
        name: 'text',
        type: IsarType.string,
      ),
    ],
    indexes: [],
  ),
  converter: IsarObjectConverter<int, Test>(
    serialize: serializeTest,
    deserialize: deserializeTest,
    deserializeProperty: deserializeTestProp,
  ),
  embeddedSchemas: [],
);

@isarProtected
int serializeTest(IsarWriter writer, Test object) {
  IsarCore.writeString(writer, 1, object.text);
  return object.id;
}

@isarProtected
Test deserializeTest(IsarReader reader) {
  final int _id;
  _id = IsarCore.readId(reader);
  final String _text;
  _text = IsarCore.readString(reader, 1) ?? '';
  final object = Test(
    id: _id,
    text: _text,
  );
  return object;
}

@isarProtected
dynamic deserializeTestProp(IsarReader reader, int property) {
  switch (property) {
    case 0:
      return IsarCore.readId(reader);
    case 1:
      return IsarCore.readString(reader, 1) ?? '';
    default:
      throw ArgumentError('Unknown property: $property');
  }
}

sealed class _TestUpdate {
  bool call({
    required int id,
    String? text,
  });
}

class _TestUpdateImpl implements _TestUpdate {
  const _TestUpdateImpl(this.collection);

  final IsarCollection<int, Test> collection;

  @override
  bool call({
    required int id,
    Object? text = ignore,
  }) {
    return collection.updateProperties([
          id
        ], {
          if (text != ignore) 1: text as String?,
        }) >
        0;
  }
}

sealed class _TestUpdateAll {
  int call({
    required List<int> id,
    String? text,
  });
}

class _TestUpdateAllImpl implements _TestUpdateAll {
  const _TestUpdateAllImpl(this.collection);

  final IsarCollection<int, Test> collection;

  @override
  int call({
    required List<int> id,
    Object? text = ignore,
  }) {
    return collection.updateProperties(id, {
      if (text != ignore) 1: text as String?,
    });
  }
}

extension TestUpdate on IsarCollection<int, Test> {
  _TestUpdate get update => _TestUpdateImpl(this);

  _TestUpdateAll get updateAll => _TestUpdateAllImpl(this);
}

sealed class _TestQueryUpdate {
  int call({
    String? text,
  });
}

class _TestQueryUpdateImpl implements _TestQueryUpdate {
  const _TestQueryUpdateImpl(this.query, {this.limit});

  final IsarQuery<Test> query;
  final int? limit;

  @override
  int call({
    Object? text = ignore,
  }) {
    return query.updateProperties(limit: limit, {
      if (text != ignore) 1: text as String?,
    });
  }
}

extension TestQueryUpdate on IsarQuery<Test> {
  _TestQueryUpdate get updateFirst => _TestQueryUpdateImpl(this, limit: 1);

  _TestQueryUpdate get updateAll => _TestQueryUpdateImpl(this);
}

class _TestQueryBuilderUpdateImpl implements _TestQueryUpdate {
  const _TestQueryBuilderUpdateImpl(this.query, {this.limit});

  final QueryBuilder<Test, Test, QOperations> query;
  final int? limit;

  @override
  int call({
    Object? text = ignore,
  }) {
    final q = query.build();
    try {
      return q.updateProperties(limit: limit, {
        if (text != ignore) 1: text as String?,
      });
    } finally {
      q.close();
    }
  }
}

extension TestQueryBuilderUpdate on QueryBuilder<Test, Test, QOperations> {
  _TestQueryUpdate get updateFirst =>
      _TestQueryBuilderUpdateImpl(this, limit: 1);

  _TestQueryUpdate get updateAll => _TestQueryBuilderUpdateImpl(this);
}

extension TestQueryFilter on QueryBuilder<Test, Test, QFilterCondition> {
  QueryBuilder<Test, Test, QAfterFilterCondition> idEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Test, Test, QAfterFilterCondition> idGreaterThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Test, Test, QAfterFilterCondition> idGreaterThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Test, Test, QAfterFilterCondition> idLessThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Test, Test, QAfterFilterCondition> idLessThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Test, Test, QAfterFilterCondition> idBetween(
    int lower,
    int upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 0,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<Test, Test, QAfterFilterCondition> textEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Test, Test, QAfterFilterCondition> textGreaterThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Test, Test, QAfterFilterCondition> textGreaterThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Test, Test, QAfterFilterCondition> textLessThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Test, Test, QAfterFilterCondition> textLessThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Test, Test, QAfterFilterCondition> textBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 1,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Test, Test, QAfterFilterCondition> textStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Test, Test, QAfterFilterCondition> textEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Test, Test, QAfterFilterCondition> textContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Test, Test, QAfterFilterCondition> textMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 1,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Test, Test, QAfterFilterCondition> textIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<Test, Test, QAfterFilterCondition> textIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }
}

extension TestQueryObject on QueryBuilder<Test, Test, QFilterCondition> {}

extension TestQuerySortBy on QueryBuilder<Test, Test, QSortBy> {
  QueryBuilder<Test, Test, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<Test, Test, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<Test, Test, QAfterSortBy> sortByText(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        1,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<Test, Test, QAfterSortBy> sortByTextDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        1,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }
}

extension TestQuerySortThenBy on QueryBuilder<Test, Test, QSortThenBy> {
  QueryBuilder<Test, Test, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<Test, Test, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<Test, Test, QAfterSortBy> thenByText(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Test, Test, QAfterSortBy> thenByTextDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }
}

extension TestQueryWhereDistinct on QueryBuilder<Test, Test, QDistinct> {
  QueryBuilder<Test, Test, QAfterDistinct> distinctByText(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(1, caseSensitive: caseSensitive);
    });
  }
}

extension TestQueryProperty1 on QueryBuilder<Test, Test, QProperty> {
  QueryBuilder<Test, int, QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<Test, String, QAfterProperty> textProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }
}

extension TestQueryProperty2<R> on QueryBuilder<Test, R, QAfterProperty> {
  QueryBuilder<Test, (R, int), QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<Test, (R, String), QAfterProperty> textProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }
}

extension TestQueryProperty3<R1, R2>
    on QueryBuilder<Test, (R1, R2), QAfterProperty> {
  QueryBuilder<Test, (R1, R2, int), QOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<Test, (R1, R2, String), QOperations> textProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }
}
