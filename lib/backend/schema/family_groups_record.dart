import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FamilyGroupsRecord extends FirestoreRecord {
  FamilyGroupsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "familyGroupId" field.
  String? _familyGroupId;
  String get familyGroupId => _familyGroupId ?? '';
  bool hasFamilyGroupId() => _familyGroupId != null;

  // "groupName" field.
  String? _groupName;
  String get groupName => _groupName ?? '';
  bool hasGroupName() => _groupName != null;

  // "creatorUserId" field.
  DocumentReference? _creatorUserId;
  DocumentReference? get creatorUserId => _creatorUserId;
  bool hasCreatorUserId() => _creatorUserId != null;

  // "memberUserIds" field.
  List<DocumentReference>? _memberUserIds;
  List<DocumentReference> get memberUserIds => _memberUserIds ?? const [];
  bool hasMemberUserIds() => _memberUserIds != null;

  // "inviteLink" field.
  String? _inviteLink;
  String get inviteLink => _inviteLink ?? '';
  bool hasInviteLink() => _inviteLink != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "familyImage" field.
  String? _familyImage;
  String get familyImage => _familyImage ?? '';
  bool hasFamilyImage() => _familyImage != null;

  void _initializeFields() {
    _familyGroupId = snapshotData['familyGroupId'] as String?;
    _groupName = snapshotData['groupName'] as String?;
    _creatorUserId = snapshotData['creatorUserId'] as DocumentReference?;
    _memberUserIds = getDataList(snapshotData['memberUserIds']);
    _inviteLink = snapshotData['inviteLink'] as String?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _familyImage = snapshotData['familyImage'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('familyGroups');

  static Stream<FamilyGroupsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FamilyGroupsRecord.fromSnapshot(s));

  static Future<FamilyGroupsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FamilyGroupsRecord.fromSnapshot(s));

  static FamilyGroupsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FamilyGroupsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FamilyGroupsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FamilyGroupsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FamilyGroupsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FamilyGroupsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFamilyGroupsRecordData({
  String? familyGroupId,
  String? groupName,
  DocumentReference? creatorUserId,
  String? inviteLink,
  DateTime? createdAt,
  String? familyImage,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'familyGroupId': familyGroupId,
      'groupName': groupName,
      'creatorUserId': creatorUserId,
      'inviteLink': inviteLink,
      'createdAt': createdAt,
      'familyImage': familyImage,
    }.withoutNulls,
  );

  return firestoreData;
}

class FamilyGroupsRecordDocumentEquality
    implements Equality<FamilyGroupsRecord> {
  const FamilyGroupsRecordDocumentEquality();

  @override
  bool equals(FamilyGroupsRecord? e1, FamilyGroupsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.familyGroupId == e2?.familyGroupId &&
        e1?.groupName == e2?.groupName &&
        e1?.creatorUserId == e2?.creatorUserId &&
        listEquality.equals(e1?.memberUserIds, e2?.memberUserIds) &&
        e1?.inviteLink == e2?.inviteLink &&
        e1?.createdAt == e2?.createdAt &&
        e1?.familyImage == e2?.familyImage;
  }

  @override
  int hash(FamilyGroupsRecord? e) => const ListEquality().hash([
        e?.familyGroupId,
        e?.groupName,
        e?.creatorUserId,
        e?.memberUserIds,
        e?.inviteLink,
        e?.createdAt,
        e?.familyImage
      ]);

  @override
  bool isValidKey(Object? o) => o is FamilyGroupsRecord;
}
