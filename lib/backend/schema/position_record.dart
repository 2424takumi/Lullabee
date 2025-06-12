import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PositionRecord extends FirestoreRecord {
  PositionRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('position');

  static Stream<PositionRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PositionRecord.fromSnapshot(s));

  static Future<PositionRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PositionRecord.fromSnapshot(s));

  static PositionRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PositionRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PositionRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PositionRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PositionRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PositionRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPositionRecordData({
  String? name,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
    }.withoutNulls,
  );

  return firestoreData;
}

class PositionRecordDocumentEquality implements Equality<PositionRecord> {
  const PositionRecordDocumentEquality();

  @override
  bool equals(PositionRecord? e1, PositionRecord? e2) {
    return e1?.name == e2?.name;
  }

  @override
  int hash(PositionRecord? e) => const ListEquality().hash([e?.name]);

  @override
  bool isValidKey(Object? o) => o is PositionRecord;
}
