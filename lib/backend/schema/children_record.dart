import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// 子供のリスト
class ChildrenRecord extends FirestoreRecord {
  ChildrenRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "parent" field.
  List<DocumentReference>? _parent;
  List<DocumentReference> get parent => _parent ?? const [];
  bool hasParent() => _parent != null;

  // "family" field.
  DocumentReference? _family;
  DocumentReference? get family => _family;
  bool hasFamily() => _family != null;

  // "birthday" field.
  DateTime? _birthday;
  DateTime? get birthday => _birthday;
  bool hasBirthday() => _birthday != null;

  // "img" field.
  String? _img;
  String get img => _img ?? '';
  bool hasImg() => _img != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _parent = getDataList(snapshotData['parent']);
    _family = snapshotData['family'] as DocumentReference?;
    _birthday = snapshotData['birthday'] as DateTime?;
    _img = snapshotData['img'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('children')
          : FirebaseFirestore.instance.collectionGroup('children');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('children').doc(id);

  static Stream<ChildrenRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ChildrenRecord.fromSnapshot(s));

  static Future<ChildrenRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ChildrenRecord.fromSnapshot(s));

  static ChildrenRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ChildrenRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ChildrenRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ChildrenRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ChildrenRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ChildrenRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createChildrenRecordData({
  String? name,
  DocumentReference? family,
  DateTime? birthday,
  String? img,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'family': family,
      'birthday': birthday,
      'img': img,
    }.withoutNulls,
  );

  return firestoreData;
}

class ChildrenRecordDocumentEquality implements Equality<ChildrenRecord> {
  const ChildrenRecordDocumentEquality();

  @override
  bool equals(ChildrenRecord? e1, ChildrenRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        listEquality.equals(e1?.parent, e2?.parent) &&
        e1?.family == e2?.family &&
        e1?.birthday == e2?.birthday &&
        e1?.img == e2?.img;
  }

  @override
  int hash(ChildrenRecord? e) => const ListEquality()
      .hash([e?.name, e?.parent, e?.family, e?.birthday, e?.img]);

  @override
  bool isValidKey(Object? o) => o is ChildrenRecord;
}
