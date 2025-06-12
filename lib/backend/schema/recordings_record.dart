import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RecordingsRecord extends FirestoreRecord {
  RecordingsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "recordingId" field.
  String? _recordingId;
  String get recordingId => _recordingId ?? '';
  bool hasRecordingId() => _recordingId != null;

  // "userId" field.
  DocumentReference? _userId;
  DocumentReference? get userId => _userId;
  bool hasUserId() => _userId != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "audioURL" field.
  String? _audioURL;
  String get audioURL => _audioURL ?? '';
  bool hasAudioURL() => _audioURL != null;

  // "duration" field.
  int? _duration;
  int get duration => _duration ?? 0;
  bool hasDuration() => _duration != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "childlenId" field.
  List<DocumentReference>? _childlenId;
  List<DocumentReference> get childlenId => _childlenId ?? const [];
  bool hasChildlenId() => _childlenId != null;

  void _initializeFields() {
    _recordingId = snapshotData['recordingId'] as String?;
    _userId = snapshotData['userId'] as DocumentReference?;
    _title = snapshotData['title'] as String?;
    _description = snapshotData['description'] as String?;
    _audioURL = snapshotData['audioURL'] as String?;
    _duration = castToType<int>(snapshotData['duration']);
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _childlenId = getDataList(snapshotData['childlenId']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('recordings');

  static Stream<RecordingsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RecordingsRecord.fromSnapshot(s));

  static Future<RecordingsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RecordingsRecord.fromSnapshot(s));

  static RecordingsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RecordingsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RecordingsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RecordingsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RecordingsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RecordingsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRecordingsRecordData({
  String? recordingId,
  DocumentReference? userId,
  String? title,
  String? description,
  String? audioURL,
  int? duration,
  DateTime? createdAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'recordingId': recordingId,
      'userId': userId,
      'title': title,
      'description': description,
      'audioURL': audioURL,
      'duration': duration,
      'createdAt': createdAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class RecordingsRecordDocumentEquality implements Equality<RecordingsRecord> {
  const RecordingsRecordDocumentEquality();

  @override
  bool equals(RecordingsRecord? e1, RecordingsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.recordingId == e2?.recordingId &&
        e1?.userId == e2?.userId &&
        e1?.title == e2?.title &&
        e1?.description == e2?.description &&
        e1?.audioURL == e2?.audioURL &&
        e1?.duration == e2?.duration &&
        e1?.createdAt == e2?.createdAt &&
        listEquality.equals(e1?.childlenId, e2?.childlenId);
  }

  @override
  int hash(RecordingsRecord? e) => const ListEquality().hash([
        e?.recordingId,
        e?.userId,
        e?.title,
        e?.description,
        e?.audioURL,
        e?.duration,
        e?.createdAt,
        e?.childlenId
      ]);

  @override
  bool isValidKey(Object? o) => o is RecordingsRecord;
}
