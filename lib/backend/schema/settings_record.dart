import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SettingsRecord extends FirestoreRecord {
  SettingsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "address" field.
  bool? _address;
  bool get address => _address ?? false;
  bool hasAddress() => _address != null;

  // "phone" field.
  bool? _phone;
  bool get phone => _phone ?? false;
  bool hasPhone() => _phone != null;

  // "maps" field.
  bool? _maps;
  bool get maps => _maps ?? false;
  bool hasMaps() => _maps != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _address = snapshotData['address'] as bool?;
    _phone = snapshotData['phone'] as bool?;
    _maps = snapshotData['maps'] as bool?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('settings')
          : FirebaseFirestore.instance.collectionGroup('settings');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('settings').doc(id);

  static Stream<SettingsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SettingsRecord.fromSnapshot(s));

  static Future<SettingsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SettingsRecord.fromSnapshot(s));

  static SettingsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SettingsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SettingsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SettingsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SettingsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SettingsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSettingsRecordData({
  bool? address,
  bool? phone,
  bool? maps,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'address': address,
      'phone': phone,
      'maps': maps,
    }.withoutNulls,
  );

  return firestoreData;
}

class SettingsRecordDocumentEquality implements Equality<SettingsRecord> {
  const SettingsRecordDocumentEquality();

  @override
  bool equals(SettingsRecord? e1, SettingsRecord? e2) {
    return e1?.address == e2?.address &&
        e1?.phone == e2?.phone &&
        e1?.maps == e2?.maps;
  }

  @override
  int hash(SettingsRecord? e) =>
      const ListEquality().hash([e?.address, e?.phone, e?.maps]);

  @override
  bool isValidKey(Object? o) => o is SettingsRecord;
}
