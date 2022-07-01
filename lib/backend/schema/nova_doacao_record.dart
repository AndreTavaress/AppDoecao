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
  String get email;

  @nullable
  @BuiltValueField(wireName: 'display_name')
  String get displayName;

  @nullable
  @BuiltValueField(wireName: 'photo_url')
  String get photoUrl;

  @nullable
  @BuiltValueField(wireName: 'created_time')
  DateTime get createdTime;

  @nullable
  @BuiltValueField(wireName: 'phone_number')
  String get phoneNumber;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(NovaDoacaoRecordBuilder builder) => builder
    ..data = ''
    ..hora = ''
    ..tipoSangue = ''
    ..uid = ''
    ..email = ''
    ..displayName = ''
    ..photoUrl = ''
    ..phoneNumber = '';

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
  String email,
  String displayName,
  String photoUrl,
  DateTime createdTime,
  String phoneNumber,
}) =>
    serializers.toFirestore(
        NovaDoacaoRecord.serializer,
        NovaDoacaoRecord((n) => n
          ..data = data
          ..hora = hora
          ..tipoSangue = tipoSangue
          ..uid = uid
          ..email = email
          ..displayName = displayName
          ..photoUrl = photoUrl
          ..createdTime = createdTime
          ..phoneNumber = phoneNumber));
