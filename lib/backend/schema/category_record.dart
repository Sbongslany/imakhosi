import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CategoryRecord extends FirestoreRecord {
  CategoryRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Beads" field.
  String? _beads;
  String get beads => _beads ?? '';
  bool hasBeads() => _beads != null;

  // "Medicine" field.
  String? _medicine;
  String get medicine => _medicine ?? '';
  bool hasMedicine() => _medicine != null;

  // "Clothes" field.
  String? _clothes;
  String get clothes => _clothes ?? '';
  bool hasClothes() => _clothes != null;

  void _initializeFields() {
    _beads = snapshotData['Beads'] as String?;
    _medicine = snapshotData['Medicine'] as String?;
    _clothes = snapshotData['Clothes'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('category');

  static Stream<CategoryRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CategoryRecord.fromSnapshot(s));

  static Future<CategoryRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CategoryRecord.fromSnapshot(s));

  static CategoryRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CategoryRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CategoryRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CategoryRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CategoryRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CategoryRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCategoryRecordData({
  String? beads,
  String? medicine,
  String? clothes,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Beads': beads,
      'Medicine': medicine,
      'Clothes': clothes,
    }.withoutNulls,
  );

  return firestoreData;
}

class CategoryRecordDocumentEquality implements Equality<CategoryRecord> {
  const CategoryRecordDocumentEquality();

  @override
  bool equals(CategoryRecord? e1, CategoryRecord? e2) {
    return e1?.beads == e2?.beads &&
        e1?.medicine == e2?.medicine &&
        e1?.clothes == e2?.clothes;
  }

  @override
  int hash(CategoryRecord? e) =>
      const ListEquality().hash([e?.beads, e?.medicine, e?.clothes]);

  @override
  bool isValidKey(Object? o) => o is CategoryRecord;
}
