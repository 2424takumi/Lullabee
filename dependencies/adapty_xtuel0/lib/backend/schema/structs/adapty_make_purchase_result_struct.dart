// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AdaptyMakePurchaseResultStruct extends FFFirebaseStruct {
  AdaptyMakePurchaseResultStruct({
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

  static AdaptyMakePurchaseResultStruct fromMap(Map<String, dynamic> data) =>
      AdaptyMakePurchaseResultStruct(
        profile: data['profile'] is AdaptyProfileStruct
            ? data['profile']
            : AdaptyProfileStruct.maybeFromMap(data['profile']),
        error: data['error'] is AdaptyErrorStruct
            ? data['error']
            : AdaptyErrorStruct.maybeFromMap(data['error']),
      );

  static AdaptyMakePurchaseResultStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? AdaptyMakePurchaseResultStruct.fromMap(data.cast<String, dynamic>())
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

  static AdaptyMakePurchaseResultStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      AdaptyMakePurchaseResultStruct(
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
  String toString() => 'AdaptyMakePurchaseResultStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AdaptyMakePurchaseResultStruct &&
        profile == other.profile &&
        error == other.error;
  }

  @override
  int get hashCode => const ListEquality().hash([profile, error]);
}

AdaptyMakePurchaseResultStruct createAdaptyMakePurchaseResultStruct({
  AdaptyProfileStruct? profile,
  AdaptyErrorStruct? error,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AdaptyMakePurchaseResultStruct(
      profile: profile ?? (clearUnsetFields ? AdaptyProfileStruct() : null),
      error: error ?? (clearUnsetFields ? AdaptyErrorStruct() : null),
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AdaptyMakePurchaseResultStruct? updateAdaptyMakePurchaseResultStruct(
  AdaptyMakePurchaseResultStruct? adaptyMakePurchaseResult, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    adaptyMakePurchaseResult
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAdaptyMakePurchaseResultStructData(
  Map<String, dynamic> firestoreData,
  AdaptyMakePurchaseResultStruct? adaptyMakePurchaseResult,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (adaptyMakePurchaseResult == null) {
    return;
  }
  if (adaptyMakePurchaseResult.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue &&
      adaptyMakePurchaseResult.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final adaptyMakePurchaseResultData = getAdaptyMakePurchaseResultFirestoreData(
      adaptyMakePurchaseResult, forFieldValue);
  final nestedData =
      adaptyMakePurchaseResultData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      adaptyMakePurchaseResult.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAdaptyMakePurchaseResultFirestoreData(
  AdaptyMakePurchaseResultStruct? adaptyMakePurchaseResult, [
  bool forFieldValue = false,
]) {
  if (adaptyMakePurchaseResult == null) {
    return {};
  }
  final firestoreData = mapToFirestore(adaptyMakePurchaseResult.toMap());

  // Handle nested data for "profile" field.
  addAdaptyProfileStructData(
    firestoreData,
    adaptyMakePurchaseResult.hasProfile()
        ? adaptyMakePurchaseResult.profile
        : null,
    'profile',
    forFieldValue,
  );

  // Handle nested data for "error" field.
  addAdaptyErrorStructData(
    firestoreData,
    adaptyMakePurchaseResult.hasError() ? adaptyMakePurchaseResult.error : null,
    'error',
    forFieldValue,
  );

  // Add any Firestore field values
  adaptyMakePurchaseResult.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAdaptyMakePurchaseResultListFirestoreData(
  List<AdaptyMakePurchaseResultStruct>? adaptyMakePurchaseResults,
) =>
    adaptyMakePurchaseResults
        ?.map((e) => getAdaptyMakePurchaseResultFirestoreData(e, true))
        .toList() ??
    [];
