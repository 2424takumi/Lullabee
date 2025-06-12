import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CommentsRecord extends FirestoreRecord {
  CommentsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "commentId" field.
  String? _commentId;
  String get commentId => _commentId ?? '';
  bool hasCommentId() => _commentId != null;

  // "recordingId" field.
  DocumentReference? _recordingId;
  DocumentReference? get recordingId => _recordingId;
  bool hasRecordingId() => _recordingId != null;

  // "userId" field.
  DocumentReference? _userId;
  DocumentReference? get userId => _userId;
  bool hasUserId() => _userId != null;

  // "commentText" field.
  String? _commentText;
  String get commentText => _commentText ?? '';
  bool hasCommentText() => _commentText != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _commentId = snapshotData['commentId'] as String?;
    _recordingId = snapshotData['recordingId'] as DocumentReference?;
    _userId = snapshotData['userId'] as DocumentReference?;
    _commentText = snapshotData['commentText'] as String?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('comments')
          : FirebaseFirestore.instance.collectionGroup('comments');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('comments').doc(id);

  static Stream<CommentsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CommentsRecord.fromSnapshot(s));

  static Future<CommentsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CommentsRecord.fromSnapshot(s));

  static CommentsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CommentsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CommentsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CommentsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CommentsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CommentsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCommentsRecordData({
  String? commentId,
  DocumentReference? recordingId,
  DocumentReference? userId,
  String? commentText,
  DateTime? createdAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'commentId': commentId,
      'recordingId': recordingId,
      'userId': userId,
      'commentText': commentText,
      'createdAt': createdAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class CommentsRecordDocumentEquality implements Equality<CommentsRecord> {
  const CommentsRecordDocumentEquality();

  @override
  bool equals(CommentsRecord? e1, CommentsRecord? e2) {
    return e1?.commentId == e2?.commentId &&
        e1?.recordingId == e2?.recordingId &&
        e1?.userId == e2?.userId &&
        e1?.commentText == e2?.commentText &&
        e1?.createdAt == e2?.createdAt;
  }

  @override
  int hash(CommentsRecord? e) => const ListEquality().hash(
      [e?.commentId, e?.recordingId, e?.userId, e?.commentText, e?.createdAt]);

  @override
  bool isValidKey(Object? o) => o is CommentsRecord;
}
