import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LikesRecord extends FirestoreRecord {
  LikesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "likeId" field.
  String? _likeId;
  String get likeId => _likeId ?? '';
  bool hasLikeId() => _likeId != null;

  // "recordingId" field.
  DocumentReference? _recordingId;
  DocumentReference? get recordingId => _recordingId;
  bool hasRecordingId() => _recordingId != null;

  // "userId" field.
  DocumentReference? _userId;
  DocumentReference? get userId => _userId;
  bool hasUserId() => _userId != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _likeId = snapshotData['likeId'] as String?;
    _recordingId = snapshotData['recordingId'] as DocumentReference?;
    _userId = snapshotData['userId'] as DocumentReference?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('likes')
          : FirebaseFirestore.instance.collectionGroup('likes');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('likes').doc(id);

  static Stream<LikesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LikesRecord.fromSnapshot(s));

  static Future<LikesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LikesRecord.fromSnapshot(s));

  static LikesRecord fromSnapshot(DocumentSnapshot snapshot) => LikesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LikesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LikesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LikesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LikesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLikesRecordData({
  String? likeId,
  DocumentReference? recordingId,
  DocumentReference? userId,
  DateTime? createdAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'likeId': likeId,
      'recordingId': recordingId,
      'userId': userId,
      'createdAt': createdAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class LikesRecordDocumentEquality implements Equality<LikesRecord> {
  const LikesRecordDocumentEquality();

  @override
  bool equals(LikesRecord? e1, LikesRecord? e2) {
    return e1?.likeId == e2?.likeId &&
        e1?.recordingId == e2?.recordingId &&
        e1?.userId == e2?.userId &&
        e1?.createdAt == e2?.createdAt;
  }

  @override
  int hash(LikesRecord? e) => const ListEquality()
      .hash([e?.likeId, e?.recordingId, e?.userId, e?.createdAt]);

  @override
  bool isValidKey(Object? o) => o is LikesRecord;
}
