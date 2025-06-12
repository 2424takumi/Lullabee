// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AdaptyAccessLevelIdentifiersStruct extends FFFirebaseStruct {
  AdaptyAccessLevelIdentifiersStruct({
    String? accessLevelIdentifier,
    AdaptyAccessLevelStruct? accessLevel,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _accessLevelIdentifier = accessLevelIdentifier,
        _accessLevel = accessLevel,
        super(firestoreUtilData);

  // "accessLevelIdentifier" field.
  String? _accessLevelIdentifier;
  String get accessLevelIdentifier => _accessLevelIdentifier ?? '';
  set accessLevelIdentifier(String? val) => _accessLevelIdentifier = val;

  bool hasAccessLevelIdentifier() => _accessLevelIdentifier != null;

  // "accessLevel" field.
  AdaptyAccessLevelStruct? _accessLevel;
  AdaptyAccessLevelStruct get accessLevel =>
      _accessLevel ?? AdaptyAccessLevelStruct();
  set accessLevel(AdaptyAccessLevelStruct? val) => _accessLevel = val;

  void updateAccessLevel(Function(AdaptyAccessLevelStruct) updateFn) {
    updateFn(_accessLevel ??= AdaptyAccessLevelStruct());
  }

  bool hasAccessLevel() => _accessLevel != null;

  static AdaptyAccessLevelIdentifiersStruct fromMap(
          Map<String, dynamic> data) =>
      AdaptyAccessLevelIdentifiersStruct(
        accessLevelIdentifier: data['accessLevelIdentifier'] as String?,
        accessLevel: data['accessLevel'] is AdaptyAccessLevelStruct
            ? data['accessLevel']
            : AdaptyAccessLevelStruct.maybeFromMap(data['accessLevel']),
      );

  static AdaptyAccessLevelIdentifiersStruct? maybeFromMap(dynamic data) => data
          is Map
      ? AdaptyAccessLevelIdentifiersStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'accessLevelIdentifier': _accessLevelIdentifier,
        'accessLevel': _accessLevel?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'accessLevelIdentifier': serializeParam(
          _accessLevelIdentifier,
          ParamType.String,
        ),
        'accessLevel': serializeParam(
          _accessLevel,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static AdaptyAccessLevelIdentifiersStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      AdaptyAccessLevelIdentifiersStruct(
        accessLevelIdentifier: deserializeParam(
          data['accessLevelIdentifier'],
          ParamType.String,
          false,
        ),
        accessLevel: deserializeStructParam(
          data['accessLevel'],
          ParamType.DataStruct,
          false,
          structBuilder: AdaptyAccessLevelStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'AdaptyAccessLevelIdentifiersStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AdaptyAccessLevelIdentifiersStruct &&
        accessLevelIdentifier == other.accessLevelIdentifier &&
        accessLevel == other.accessLevel;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([accessLevelIdentifier, accessLevel]);
}

AdaptyAccessLevelIdentifiersStruct createAdaptyAccessLevelIdentifiersStruct({
  String? accessLevelIdentifier,
  AdaptyAccessLevelStruct? accessLevel,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AdaptyAccessLevelIdentifiersStruct(
      accessLevelIdentifier: accessLevelIdentifier,
      accessLevel:
          accessLevel ?? (clearUnsetFields ? AdaptyAccessLevelStruct() : null),
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AdaptyAccessLevelIdentifiersStruct? updateAdaptyAccessLevelIdentifiersStruct(
  AdaptyAccessLevelIdentifiersStruct? adaptyAccessLevelIdentifiers, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    adaptyAccessLevelIdentifiers
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAdaptyAccessLevelIdentifiersStructData(
  Map<String, dynamic> firestoreData,
  AdaptyAccessLevelIdentifiersStruct? adaptyAccessLevelIdentifiers,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (adaptyAccessLevelIdentifiers == null) {
    return;
  }
  if (adaptyAccessLevelIdentifiers.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue &&
      adaptyAccessLevelIdentifiers.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final adaptyAccessLevelIdentifiersData =
      getAdaptyAccessLevelIdentifiersFirestoreData(
          adaptyAccessLevelIdentifiers, forFieldValue);
  final nestedData = adaptyAccessLevelIdentifiersData
      .map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      adaptyAccessLevelIdentifiers.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAdaptyAccessLevelIdentifiersFirestoreData(
  AdaptyAccessLevelIdentifiersStruct? adaptyAccessLevelIdentifiers, [
  bool forFieldValue = false,
]) {
  if (adaptyAccessLevelIdentifiers == null) {
    return {};
  }
  final firestoreData = mapToFirestore(adaptyAccessLevelIdentifiers.toMap());

  // Handle nested data for "accessLevel" field.
  addAdaptyAccessLevelStructData(
    firestoreData,
    adaptyAccessLevelIdentifiers.hasAccessLevel()
        ? adaptyAccessLevelIdentifiers.accessLevel
        : null,
    'accessLevel',
    forFieldValue,
  );

  // Add any Firestore field values
  adaptyAccessLevelIdentifiers.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAdaptyAccessLevelIdentifiersListFirestoreData(
  List<AdaptyAccessLevelIdentifiersStruct>? adaptyAccessLevelIdentifierss,
) =>
    adaptyAccessLevelIdentifierss
        ?.map((e) => getAdaptyAccessLevelIdentifiersFirestoreData(e, true))
        .toList() ??
    [];
