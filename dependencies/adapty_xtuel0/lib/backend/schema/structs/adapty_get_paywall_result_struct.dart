// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AdaptyGetPaywallResultStruct extends FFFirebaseStruct {
  AdaptyGetPaywallResultStruct({
    AdaptyPaywallStruct? value,
    AdaptyErrorStruct? error,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _value = value,
        _error = error,
        super(firestoreUtilData);

  // "value" field.
  AdaptyPaywallStruct? _value;
  AdaptyPaywallStruct get value => _value ?? AdaptyPaywallStruct();
  set value(AdaptyPaywallStruct? val) => _value = val;

  void updateValue(Function(AdaptyPaywallStruct) updateFn) {
    updateFn(_value ??= AdaptyPaywallStruct());
  }

  bool hasValue() => _value != null;

  // "error" field.
  AdaptyErrorStruct? _error;
  AdaptyErrorStruct get error => _error ?? AdaptyErrorStruct();
  set error(AdaptyErrorStruct? val) => _error = val;

  void updateError(Function(AdaptyErrorStruct) updateFn) {
    updateFn(_error ??= AdaptyErrorStruct());
  }

  bool hasError() => _error != null;

  static AdaptyGetPaywallResultStruct fromMap(Map<String, dynamic> data) =>
      AdaptyGetPaywallResultStruct(
        value: data['value'] is AdaptyPaywallStruct
            ? data['value']
            : AdaptyPaywallStruct.maybeFromMap(data['value']),
        error: data['error'] is AdaptyErrorStruct
            ? data['error']
            : AdaptyErrorStruct.maybeFromMap(data['error']),
      );

  static AdaptyGetPaywallResultStruct? maybeFromMap(dynamic data) => data is Map
      ? AdaptyGetPaywallResultStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'value': _value?.toMap(),
        'error': _error?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'value': serializeParam(
          _value,
          ParamType.DataStruct,
        ),
        'error': serializeParam(
          _error,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static AdaptyGetPaywallResultStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      AdaptyGetPaywallResultStruct(
        value: deserializeStructParam(
          data['value'],
          ParamType.DataStruct,
          false,
          structBuilder: AdaptyPaywallStruct.fromSerializableMap,
        ),
        error: deserializeStructParam(
          data['error'],
          ParamType.DataStruct,
          false,
          structBuilder: AdaptyErrorStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'AdaptyGetPaywallResultStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AdaptyGetPaywallResultStruct &&
        value == other.value &&
        error == other.error;
  }

  @override
  int get hashCode => const ListEquality().hash([value, error]);
}

AdaptyGetPaywallResultStruct createAdaptyGetPaywallResultStruct({
  AdaptyPaywallStruct? value,
  AdaptyErrorStruct? error,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AdaptyGetPaywallResultStruct(
      value: value ?? (clearUnsetFields ? AdaptyPaywallStruct() : null),
      error: error ?? (clearUnsetFields ? AdaptyErrorStruct() : null),
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AdaptyGetPaywallResultStruct? updateAdaptyGetPaywallResultStruct(
  AdaptyGetPaywallResultStruct? adaptyGetPaywallResult, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    adaptyGetPaywallResult
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAdaptyGetPaywallResultStructData(
  Map<String, dynamic> firestoreData,
  AdaptyGetPaywallResultStruct? adaptyGetPaywallResult,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (adaptyGetPaywallResult == null) {
    return;
  }
  if (adaptyGetPaywallResult.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue &&
      adaptyGetPaywallResult.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final adaptyGetPaywallResultData = getAdaptyGetPaywallResultFirestoreData(
      adaptyGetPaywallResult, forFieldValue);
  final nestedData =
      adaptyGetPaywallResultData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      adaptyGetPaywallResult.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAdaptyGetPaywallResultFirestoreData(
  AdaptyGetPaywallResultStruct? adaptyGetPaywallResult, [
  bool forFieldValue = false,
]) {
  if (adaptyGetPaywallResult == null) {
    return {};
  }
  final firestoreData = mapToFirestore(adaptyGetPaywallResult.toMap());

  // Handle nested data for "value" field.
  addAdaptyPaywallStructData(
    firestoreData,
    adaptyGetPaywallResult.hasValue() ? adaptyGetPaywallResult.value : null,
    'value',
    forFieldValue,
  );

  // Handle nested data for "error" field.
  addAdaptyErrorStructData(
    firestoreData,
    adaptyGetPaywallResult.hasError() ? adaptyGetPaywallResult.error : null,
    'error',
    forFieldValue,
  );

  // Add any Firestore field values
  adaptyGetPaywallResult.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAdaptyGetPaywallResultListFirestoreData(
  List<AdaptyGetPaywallResultStruct>? adaptyGetPaywallResults,
) =>
    adaptyGetPaywallResults
        ?.map((e) => getAdaptyGetPaywallResultFirestoreData(e, true))
        .toList() ??
    [];
