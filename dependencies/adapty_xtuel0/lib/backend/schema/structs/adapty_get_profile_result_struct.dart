// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AdaptyGetProfileResultStruct extends FFFirebaseStruct {
  AdaptyGetProfileResultStruct({
    AdaptyProfileStruct? profile,
    AdaptyErrorStruct? error,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _profile = profile,
        _error = error,
        super(firestoreUtilData);

  // "profile" field.
  AdaptyProfileStruct? _profile;
  AdaptyProfileStruct get profile => _profile ?? AdaptyProfileStruct();
  set profile(AdaptyProfileStruct? val) => _profile = val;

  void updateProfile(Function(AdaptyProfileStruct) updateFn) {
    updateFn(_profile ??= AdaptyProfileStruct());
  }

  bool hasProfile() => _profile != null;

  // "error" field.
  AdaptyErrorStruct? _error;
  AdaptyErrorStruct get error => _error ?? AdaptyErrorStruct();
  set error(AdaptyErrorStruct? val) => _error = val;

  void updateError(Function(AdaptyErrorStruct) updateFn) {
    updateFn(_error ??= AdaptyErrorStruct());
  }

  bool hasError() => _error != null;

  static AdaptyGetProfileResultStruct fromMap(Map<String, dynamic> data) =>
      AdaptyGetProfileResultStruct(
        profile: data['profile'] is AdaptyProfileStruct
            ? data['profile']
            : AdaptyProfileStruct.maybeFromMap(data['profile']),
        error: data['error'] is AdaptyErrorStruct
            ? data['error']
            : AdaptyErrorStruct.maybeFromMap(data['error']),
      );

  static AdaptyGetProfileResultStruct? maybeFromMap(dynamic data) => data is Map
      ? AdaptyGetProfileResultStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'profile': _profile?.toMap(),
        'error': _error?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'profile': serializeParam(
          _profile,
          ParamType.DataStruct,
        ),
        'error': serializeParam(
          _error,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static AdaptyGetProfileResultStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      AdaptyGetProfileResultStruct(
        profile: deserializeStructParam(
          data['profile'],
          ParamType.DataStruct,
          false,
          structBuilder: AdaptyProfileStruct.fromSerializableMap,
        ),
        error: deserializeStructParam(
          data['error'],
          ParamType.DataStruct,
          false,
          structBuilder: AdaptyErrorStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'AdaptyGetProfileResultStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AdaptyGetProfileResultStruct &&
        profile == other.profile &&
        error == other.error;
  }

  @override
  int get hashCode => const ListEquality().hash([profile, error]);
}

AdaptyGetProfileResultStruct createAdaptyGetProfileResultStruct({
  AdaptyProfileStruct? profile,
  AdaptyErrorStruct? error,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AdaptyGetProfileResultStruct(
      profile: profile ?? (clearUnsetFields ? AdaptyProfileStruct() : null),
      error: error ?? (clearUnsetFields ? AdaptyErrorStruct() : null),
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AdaptyGetProfileResultStruct? updateAdaptyGetProfileResultStruct(
  AdaptyGetProfileResultStruct? adaptyGetProfileResult, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    adaptyGetProfileResult
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAdaptyGetProfileResultStructData(
  Map<String, dynamic> firestoreData,
  AdaptyGetProfileResultStruct? adaptyGetProfileResult,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (adaptyGetProfileResult == null) {
    return;
  }
  if (adaptyGetProfileResult.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue &&
      adaptyGetProfileResult.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final adaptyGetProfileResultData = getAdaptyGetProfileResultFirestoreData(
      adaptyGetProfileResult, forFieldValue);
  final nestedData =
      adaptyGetProfileResultData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      adaptyGetProfileResult.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAdaptyGetProfileResultFirestoreData(
  AdaptyGetProfileResultStruct? adaptyGetProfileResult, [
  bool forFieldValue = false,
]) {
  if (adaptyGetProfileResult == null) {
    return {};
  }
  final firestoreData = mapToFirestore(adaptyGetProfileResult.toMap());

  // Handle nested data for "profile" field.
  addAdaptyProfileStructData(
    firestoreData,
    adaptyGetProfileResult.hasProfile() ? adaptyGetProfileResult.profile : null,
    'profile',
    forFieldValue,
  );

  // Handle nested data for "error" field.
  addAdaptyErrorStructData(
    firestoreData,
    adaptyGetProfileResult.hasError() ? adaptyGetProfileResult.error : null,
    'error',
    forFieldValue,
  );

  // Add any Firestore field values
  adaptyGetProfileResult.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAdaptyGetProfileResultListFirestoreData(
  List<AdaptyGetProfileResultStruct>? adaptyGetProfileResults,
) =>
    adaptyGetProfileResults
        ?.map((e) => getAdaptyGetProfileResultFirestoreData(e, true))
        .toList() ??
    [];
