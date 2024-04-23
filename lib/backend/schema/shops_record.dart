import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ShopsRecord extends FirestoreRecord {
  ShopsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _category = snapshotData['category'] as String?;
    _address = snapshotData['address'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('shops');

  static Stream<ShopsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ShopsRecord.fromSnapshot(s));

  static Future<ShopsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ShopsRecord.fromSnapshot(s));

  static ShopsRecord fromSnapshot(DocumentSnapshot snapshot) => ShopsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ShopsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ShopsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ShopsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ShopsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createShopsRecordData({
  String? name,
  String? category,
  String? address,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'category': category,
      'address': address,
    }.withoutNulls,
  );

  return firestoreData;
}

class ShopsRecordDocumentEquality implements Equality<ShopsRecord> {
  const ShopsRecordDocumentEquality();

  @override
  bool equals(ShopsRecord? e1, ShopsRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.category == e2?.category &&
        e1?.address == e2?.address;
  }

  @override
  int hash(ShopsRecord? e) =>
      const ListEquality().hash([e?.name, e?.category, e?.address]);

  @override
  bool isValidKey(Object? o) => o is ShopsRecord;
}
