import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ContactPersonRecord extends FirestoreRecord {
  ContactPersonRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "edited_time" field.
  DateTime? _editedTime;
  DateTime? get editedTime => _editedTime;
  bool hasEditedTime() => _editedTime != null;

  // "OfcId" field.
  DocumentReference? _ofcId;
  DocumentReference? get ofcId => _ofcId;
  bool hasOfcId() => _ofcId != null;

  // "cargo" field.
  String? _cargo;
  String get cargo => _cargo ?? '';
  bool hasCargo() => _cargo != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _editedTime = snapshotData['edited_time'] as DateTime?;
    _ofcId = snapshotData['OfcId'] as DocumentReference?;
    _cargo = snapshotData['cargo'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('contactPerson');

  static Stream<ContactPersonRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ContactPersonRecord.fromSnapshot(s));

  static Future<ContactPersonRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ContactPersonRecord.fromSnapshot(s));

  static ContactPersonRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ContactPersonRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ContactPersonRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ContactPersonRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ContactPersonRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ContactPersonRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createContactPersonRecordData({
  String? email,
  String? displayName,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  DateTime? editedTime,
  DocumentReference? ofcId,
  String? cargo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'edited_time': editedTime,
      'OfcId': ofcId,
      'cargo': cargo,
    }.withoutNulls,
  );

  return firestoreData;
}

class ContactPersonRecordDocumentEquality
    implements Equality<ContactPersonRecord> {
  const ContactPersonRecordDocumentEquality();

  @override
  bool equals(ContactPersonRecord? e1, ContactPersonRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.editedTime == e2?.editedTime &&
        e1?.ofcId == e2?.ofcId &&
        e1?.cargo == e2?.cargo;
  }

  @override
  int hash(ContactPersonRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.editedTime,
        e?.ofcId,
        e?.cargo
      ]);

  @override
  bool isValidKey(Object? o) => o is ContactPersonRecord;
}
