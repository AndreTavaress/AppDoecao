// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nova_doacao_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<NovaDoacaoRecord> _$novaDoacaoRecordSerializer =
    new _$NovaDoacaoRecordSerializer();

class _$NovaDoacaoRecordSerializer
    implements StructuredSerializer<NovaDoacaoRecord> {
  @override
  final Iterable<Type> types = const [NovaDoacaoRecord, _$NovaDoacaoRecord];
  @override
  final String wireName = 'NovaDoacaoRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, NovaDoacaoRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.data;
    if (value != null) {
      result
        ..add('data')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.hora;
    if (value != null) {
      result
        ..add('hora')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.tipoSangue;
    if (value != null) {
      result
        ..add('tipo_sangue')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  NovaDoacaoRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NovaDoacaoRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'data':
          result.data = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'hora':
          result.hora = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'tipo_sangue':
          result.tipoSangue = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$NovaDoacaoRecord extends NovaDoacaoRecord {
  @override
  final String data;
  @override
  final String hora;
  @override
  final String tipoSangue;
  @override
  final String uid;
  @override
  final DocumentReference<Object> reference;

  factory _$NovaDoacaoRecord(
          [void Function(NovaDoacaoRecordBuilder) updates]) =>
      (new NovaDoacaoRecordBuilder()..update(updates)).build();

  _$NovaDoacaoRecord._(
      {this.data, this.hora, this.tipoSangue, this.uid, this.reference})
      : super._();

  @override
  NovaDoacaoRecord rebuild(void Function(NovaDoacaoRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NovaDoacaoRecordBuilder toBuilder() =>
      new NovaDoacaoRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NovaDoacaoRecord &&
        data == other.data &&
        hora == other.hora &&
        tipoSangue == other.tipoSangue &&
        uid == other.uid &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, data.hashCode), hora.hashCode), tipoSangue.hashCode),
            uid.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NovaDoacaoRecord')
          ..add('data', data)
          ..add('hora', hora)
          ..add('tipoSangue', tipoSangue)
          ..add('uid', uid)
          ..add('reference', reference))
        .toString();
  }
}

class NovaDoacaoRecordBuilder
    implements Builder<NovaDoacaoRecord, NovaDoacaoRecordBuilder> {
  _$NovaDoacaoRecord _$v;

  String _data;
  String get data => _$this._data;
  set data(String data) => _$this._data = data;

  String _hora;
  String get hora => _$this._hora;
  set hora(String hora) => _$this._hora = hora;

  String _tipoSangue;
  String get tipoSangue => _$this._tipoSangue;
  set tipoSangue(String tipoSangue) => _$this._tipoSangue = tipoSangue;

  String _uid;
  String get uid => _$this._uid;
  set uid(String uid) => _$this._uid = uid;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  NovaDoacaoRecordBuilder() {
    NovaDoacaoRecord._initializeBuilder(this);
  }

  NovaDoacaoRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data;
      _hora = $v.hora;
      _tipoSangue = $v.tipoSangue;
      _uid = $v.uid;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NovaDoacaoRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NovaDoacaoRecord;
  }

  @override
  void update(void Function(NovaDoacaoRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$NovaDoacaoRecord build() {
    final _$result = _$v ??
        new _$NovaDoacaoRecord._(
            data: data,
            hora: hora,
            tipoSangue: tipoSangue,
            uid: uid,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
