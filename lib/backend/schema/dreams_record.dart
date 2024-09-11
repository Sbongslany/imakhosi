import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DreamsRecord extends FirestoreRecord {
  DreamsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "sub_title" field.
  String? _subTitle;
  String get subTitle => _subTitle ?? '';
  bool hasSubTitle() => _subTitle != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "category" field.
  DocumentReference? _category;
  DocumentReference? get category => _category;
  bool hasCategory() => _category != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _subTitle = snapshotData['sub_title'] as String?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _category = snapshotData['category'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('dreams');

  static Stream<DreamsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DreamsRecord.fromSnapshot(s));

  static Future<DreamsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DreamsRecord.fromSnapshot(s));

  static DreamsRecord fromSnapshot(DocumentSnapshot snapshot) => DreamsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DreamsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DreamsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DreamsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DreamsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDreamsRecordData({
  String? title,
  String? subTitle,
  DateTime? createdAt,
  DocumentReference? category,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'sub_title': subTitle,
      'created_at': createdAt,
      'category': category,
    }.withoutNulls,
  );

  return firestoreData;
}

class DreamsRecordDocumentEquality implements Equality<DreamsRecord> {
  const DreamsRecordDocumentEquality();

  @override
  bool equals(DreamsRecord? e1, DreamsRecord? e2) {
    return e1?.title == e2?.title &&
        e1?.subTitle == e2?.subTitle &&
        e1?.createdAt == e2?.createdAt &&
        e1?.category == e2?.category;
  }

  @override
  int hash(DreamsRecord? e) => const ListEquality()
      .hash([e?.title, e?.subTitle, e?.createdAt, e?.category]);

  @override
  bool isValidKey(Object? o) => o is DreamsRecord;
}
