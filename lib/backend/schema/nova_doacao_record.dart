import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'nova_doacao_record.g.dart';

abstract class NovaDoacaoRecord
    implements Built<NovaDoacaoRecord, NovaDoacaoRecordBuilder> {
  static Serializer<NovaDoacaoRecord> get serializer =>
      _$novaDoacaoRecordSerializer;

  @nullable
  String get data;

  @nullable
  String get hora;

  @nullable
  @BuiltValueField(wireName: 'tipo_sangue')
  String get tipoSangue;

  @nullable
  String get uid;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(NovaDoacaoRecordBuilder builder) => builder
    ..data = ''
    ..hora = ''
    ..tipoSangue = ''
    ..uid = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('nova_doacao');

  static Stream<NovaDoacaoRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<NovaDoacaoRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  NovaDoacaoRecord._();
  factory NovaDoacaoRecord([void Function(NovaDoacaoRecordBuilder) updates]) =
      _$NovaDoacaoRecord;

  static NovaDoacaoRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createNovaDoacaoRecordData({
  String data,
  String hora,
  String tipoSangue,
  String uid,
}) =>
    serializers.toFirestore(
        NovaDoacaoRecord.serializer,
        NovaDoacaoRecord((n) => n
          ..data = data
          ..hora = hora
          ..tipoSangue = tipoSangue
          ..uid = uid));
