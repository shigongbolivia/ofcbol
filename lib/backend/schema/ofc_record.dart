import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OfcRecord extends FirestoreRecord {
  OfcRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "modified_at" field.
  DateTime? _modifiedAt;
  DateTime? get modifiedAt => _modifiedAt;
  bool hasModifiedAt() => _modifiedAt != null;

  // "detail" field.
  bool? _detail;
  bool get detail => _detail ?? false;
  bool hasDetail() => _detail != null;

  // "volume" field.
  int? _volume;
  int get volume => _volume ?? 0;
  bool hasVolume() => _volume != null;

  // "ofcImage" field.
  String? _ofcImage;
  String get ofcImage => _ofcImage ?? '';
  bool hasOfcImage() => _ofcImage != null;

  // "mapImage" field.
  String? _mapImage;
  String get mapImage => _mapImage ?? '';
  bool hasMapImage() => _mapImage != null;

  // "surface_area_PGM" field.
  double? _surfaceAreaPGM;
  double get surfaceAreaPGM => _surfaceAreaPGM ?? 0.0;
  bool hasSurfaceAreaPGM() => _surfaceAreaPGM != null;

  // "surface_area_AAA" field.
  double? _surfaceAreaAAA;
  double get surfaceAreaAAA => _surfaceAreaAAA ?? 0.0;
  bool hasSurfaceAreaAAA() => _surfaceAreaAAA != null;

  // "contacts" field.
  List<DocumentReference>? _contacts;
  List<DocumentReference> get contacts => _contacts ?? const [];
  bool hasContacts() => _contacts != null;

  // "full_name" field.
  String? _fullName;
  String get fullName => _fullName ?? '';
  bool hasFullName() => _fullName != null;

  // "short_name" field.
  String? _shortName;
  String get shortName => _shortName ?? '';
  bool hasShortName() => _shortName != null;

  // "municipality" field.
  String? _municipality;
  String get municipality => _municipality ?? '';
  bool hasMunicipality() => _municipality != null;

  // "geo_url" field.
  String? _geoUrl;
  String get geoUrl => _geoUrl ?? '';
  bool hasGeoUrl() => _geoUrl != null;

  // "speciesNames" field.
  List<String>? _speciesNames;
  List<String> get speciesNames => _speciesNames ?? const [];
  bool hasSpeciesNames() => _speciesNames != null;

  // "docReference" field.
  DocumentReference? _docReference;
  DocumentReference? get docReference => _docReference;
  bool hasDocReference() => _docReference != null;

  // "technicalFileUrl" field.
  String? _technicalFileUrl;
  String get technicalFileUrl => _technicalFileUrl ?? '';
  bool hasTechnicalFileUrl() => _technicalFileUrl != null;

  // "abt-sbcbi" field.
  String? _abtSbcbi;
  String get abtSbcbi => _abtSbcbi ?? '';
  bool hasAbtSbcbi() => _abtSbcbi != null;

  // "distanceToNearCity" field.
  String? _distanceToNearCity;
  String get distanceToNearCity => _distanceToNearCity ?? '';
  bool hasDistanceToNearCity() => _distanceToNearCity != null;

  // "woodOffer" field.
  int? _woodOffer;
  int get woodOffer => _woodOffer ?? 0;
  bool hasWoodOffer() => _woodOffer != null;

  // "resolution" field.
  String? _resolution;
  String get resolution => _resolution ?? '';
  bool hasResolution() => _resolution != null;

  // "productionSurface" field.
  double? _productionSurface;
  double get productionSurface => _productionSurface ?? 0.0;
  bool hasProductionSurface() => _productionSurface != null;

  // "protectionSurface" field.
  double? _protectionSurface;
  double get protectionSurface => _protectionSurface ?? 0.0;
  bool hasProtectionSurface() => _protectionSurface != null;

  // "cutCicle" field.
  String? _cutCicle;
  String get cutCicle => _cutCicle ?? '';
  bool hasCutCicle() => _cutCicle != null;

  // "averageAAA" field.
  double? _averageAAA;
  double get averageAAA => _averageAAA ?? 0.0;
  bool hasAverageAAA() => _averageAAA != null;

  // "associates" field.
  String? _associates;
  String get associates => _associates ?? '';
  bool hasAssociates() => _associates != null;

  // "poafDocuments" field.
  List<String>? _poafDocuments;
  List<String> get poafDocuments => _poafDocuments ?? const [];
  bool hasPoafDocuments() => _poafDocuments != null;

  // "certification" field.
  bool? _certification;
  bool get certification => _certification ?? false;
  bool hasCertification() => _certification != null;

  void _initializeFields() {
    _description = snapshotData['description'] as String?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _modifiedAt = snapshotData['modified_at'] as DateTime?;
    _detail = snapshotData['detail'] as bool?;
    _volume = castToType<int>(snapshotData['volume']);
    _ofcImage = snapshotData['ofcImage'] as String?;
    _mapImage = snapshotData['mapImage'] as String?;
    _surfaceAreaPGM = castToType<double>(snapshotData['surface_area_PGM']);
    _surfaceAreaAAA = castToType<double>(snapshotData['surface_area_AAA']);
    _contacts = getDataList(snapshotData['contacts']);
    _fullName = snapshotData['full_name'] as String?;
    _shortName = snapshotData['short_name'] as String?;
    _municipality = snapshotData['municipality'] as String?;
    _geoUrl = snapshotData['geo_url'] as String?;
    _speciesNames = getDataList(snapshotData['speciesNames']);
    _docReference = snapshotData['docReference'] as DocumentReference?;
    _technicalFileUrl = snapshotData['technicalFileUrl'] as String?;
    _abtSbcbi = snapshotData['abt-sbcbi'] as String?;
    _distanceToNearCity = snapshotData['distanceToNearCity'] as String?;
    _woodOffer = castToType<int>(snapshotData['woodOffer']);
    _resolution = snapshotData['resolution'] as String?;
    _productionSurface = castToType<double>(snapshotData['productionSurface']);
    _protectionSurface = castToType<double>(snapshotData['protectionSurface']);
    _cutCicle = snapshotData['cutCicle'] as String?;
    _averageAAA = castToType<double>(snapshotData['averageAAA']);
    _associates = snapshotData['associates'] as String?;
    _poafDocuments = getDataList(snapshotData['poafDocuments']);
    _certification = snapshotData['certification'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('OFC');

  static Stream<OfcRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OfcRecord.fromSnapshot(s));

  static Future<OfcRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OfcRecord.fromSnapshot(s));

  static OfcRecord fromSnapshot(DocumentSnapshot snapshot) => OfcRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OfcRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OfcRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OfcRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OfcRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOfcRecordData({
  String? description,
  DateTime? createdAt,
  DateTime? modifiedAt,
  bool? detail,
  int? volume,
  String? ofcImage,
  String? mapImage,
  double? surfaceAreaPGM,
  double? surfaceAreaAAA,
  String? fullName,
  String? shortName,
  String? municipality,
  String? geoUrl,
  DocumentReference? docReference,
  String? technicalFileUrl,
  String? abtSbcbi,
  String? distanceToNearCity,
  int? woodOffer,
  String? resolution,
  double? productionSurface,
  double? protectionSurface,
  String? cutCicle,
  double? averageAAA,
  String? associates,
  bool? certification,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'description': description,
      'created_at': createdAt,
      'modified_at': modifiedAt,
      'detail': detail,
      'volume': volume,
      'ofcImage': ofcImage,
      'mapImage': mapImage,
      'surface_area_PGM': surfaceAreaPGM,
      'surface_area_AAA': surfaceAreaAAA,
      'full_name': fullName,
      'short_name': shortName,
      'municipality': municipality,
      'geo_url': geoUrl,
      'docReference': docReference,
      'technicalFileUrl': technicalFileUrl,
      'abt-sbcbi': abtSbcbi,
      'distanceToNearCity': distanceToNearCity,
      'woodOffer': woodOffer,
      'resolution': resolution,
      'productionSurface': productionSurface,
      'protectionSurface': protectionSurface,
      'cutCicle': cutCicle,
      'averageAAA': averageAAA,
      'associates': associates,
      'certification': certification,
    }.withoutNulls,
  );

  return firestoreData;
}

class OfcRecordDocumentEquality implements Equality<OfcRecord> {
  const OfcRecordDocumentEquality();

  @override
  bool equals(OfcRecord? e1, OfcRecord? e2) {
    const listEquality = ListEquality();
    return e1?.description == e2?.description &&
        e1?.createdAt == e2?.createdAt &&
        e1?.modifiedAt == e2?.modifiedAt &&
        e1?.detail == e2?.detail &&
        e1?.volume == e2?.volume &&
        e1?.ofcImage == e2?.ofcImage &&
        e1?.mapImage == e2?.mapImage &&
        e1?.surfaceAreaPGM == e2?.surfaceAreaPGM &&
        e1?.surfaceAreaAAA == e2?.surfaceAreaAAA &&
        listEquality.equals(e1?.contacts, e2?.contacts) &&
        e1?.fullName == e2?.fullName &&
        e1?.shortName == e2?.shortName &&
        e1?.municipality == e2?.municipality &&
        e1?.geoUrl == e2?.geoUrl &&
        listEquality.equals(e1?.speciesNames, e2?.speciesNames) &&
        e1?.docReference == e2?.docReference &&
        e1?.technicalFileUrl == e2?.technicalFileUrl &&
        e1?.abtSbcbi == e2?.abtSbcbi &&
        e1?.distanceToNearCity == e2?.distanceToNearCity &&
        e1?.woodOffer == e2?.woodOffer &&
        e1?.resolution == e2?.resolution &&
        e1?.productionSurface == e2?.productionSurface &&
        e1?.protectionSurface == e2?.protectionSurface &&
        e1?.cutCicle == e2?.cutCicle &&
        e1?.averageAAA == e2?.averageAAA &&
        e1?.associates == e2?.associates &&
        listEquality.equals(e1?.poafDocuments, e2?.poafDocuments) &&
        e1?.certification == e2?.certification;
  }

  @override
  int hash(OfcRecord? e) => const ListEquality().hash([
        e?.description,
        e?.createdAt,
        e?.modifiedAt,
        e?.detail,
        e?.volume,
        e?.ofcImage,
        e?.mapImage,
        e?.surfaceAreaPGM,
        e?.surfaceAreaAAA,
        e?.contacts,
        e?.fullName,
        e?.shortName,
        e?.municipality,
        e?.geoUrl,
        e?.speciesNames,
        e?.docReference,
        e?.technicalFileUrl,
        e?.abtSbcbi,
        e?.distanceToNearCity,
        e?.woodOffer,
        e?.resolution,
        e?.productionSurface,
        e?.protectionSurface,
        e?.cutCicle,
        e?.averageAAA,
        e?.associates,
        e?.poafDocuments,
        e?.certification
      ]);

  @override
  bool isValidKey(Object? o) => o is OfcRecord;
}
