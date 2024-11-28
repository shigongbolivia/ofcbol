import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CatalogoRecord extends FirestoreRecord {
  CatalogoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "URL" field.
  String? _url;
  String get url => _url ?? '';
  bool hasUrl() => _url != null;

  void _initializeFields() {
    _nombre = snapshotData['Nombre'] as String?;
    _url = snapshotData['URL'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Catalogo');

  static Stream<CatalogoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CatalogoRecord.fromSnapshot(s));

  static Future<CatalogoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CatalogoRecord.fromSnapshot(s));

  static CatalogoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CatalogoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CatalogoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CatalogoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CatalogoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CatalogoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCatalogoRecordData({
  String? nombre,
  String? url,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Nombre': nombre,
      'URL': url,
    }.withoutNulls,
  );

  return firestoreData;
}

class CatalogoRecordDocumentEquality implements Equality<CatalogoRecord> {
  const CatalogoRecordDocumentEquality();

  @override
  bool equals(CatalogoRecord? e1, CatalogoRecord? e2) {
    return e1?.nombre == e2?.nombre && e1?.url == e2?.url;
  }

  @override
  int hash(CatalogoRecord? e) => const ListEquality().hash([e?.nombre, e?.url]);

  @override
  bool isValidKey(Object? o) => o is CatalogoRecord;
}
