// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AdaptyGetIntroEligibilitiesResultStruct extends FFFirebaseStruct {
  AdaptyGetIntroEligibilitiesResultStruct({
    List<AdaptyProductIntroEligibilityStruct>? value,
    AdaptyErrorStruct? error,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _value = value,
        _error = error,
        super(firestoreUtilData);

  // "value" field.
  List<AdaptyProductIntroEligibilityStruct>? _value;
  List<AdaptyProductIntroEligibilityStruct> get value => _value ?? const [];
  set value(List<AdaptyProductIntroEligibilityStruct>? val) => _value = val;

  void updateValue(
      Function(List<AdaptyProductIntroEligibilityStruct>) updateFn) {
    updateFn(_value ??= []);
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

  static AdaptyGetIntroEligibilitiesResultStruct fromMap(
          Map<String, dynamic> data) =>
      AdaptyGetIntroEligibilitiesResultStruct(
        value: getStructList(
          data['value'],
          AdaptyProductIntroEligibilityStruct.fromMap,
        ),
        error: data['error'] is AdaptyErrorStruct
            ? data['error']
            : AdaptyErrorStruct.maybeFromMap(data['error']),
      );

  static AdaptyGetIntroEligibilitiesResultStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? AdaptyGetIntroEligibilitiesResultStruct.fromMap(
              data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'value': _value?.map((e) => e.toMap()).toList(),
        'error': _error?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'value': serializeParam(
          _value,
          ParamType.DataStruct,
          isList: true,
        ),
        'error': serializeParam(
          _error,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static AdaptyGetIntroEligibilitiesResultStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      AdaptyGetIntroEligibilitiesResultStruct(
        value: deserializeStructParam<AdaptyProductIntroEligibilityStruct>(
          data['value'],
          ParamType.DataStruct,
          true,
          structBuilder:
              AdaptyProductIntroEligibilityStruct.fromSerializableMap,
        ),
        error: deserializeStructParam(
          data['error'],
          ParamType.DataStruct,
          false,
          structBuilder: AdaptyErrorStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'AdaptyGetIntroEligibilitiesResultStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is AdaptyGetIntroEligibilitiesResultStruct &&
        listEquality.equals(value, other.value) &&
        error == other.error;
  }

  @override
  int get hashCode => const ListEquality().hash([value, error]);
}

AdaptyGetIntroEligibilitiesResultStruct
    createAdaptyGetIntroEligibilitiesResultStruct({
  AdaptyErrorStruct? error,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
        AdaptyGetIntroEligibilitiesResultStruct(
          error: error ?? (clearUnsetFields ? AdaptyErrorStruct() : null),
          firestoreUtilData: FirestoreUtilData(
            clearUnsetFields: clearUnsetFields,
            create: create,
            delete: delete,
            fieldValues: fieldValues,
          ),
        );

AdaptyGetIntroEligibilitiesResultStruct?
    updateAdaptyGetIntroEligibilitiesResultStruct(
  AdaptyGetIntroEligibilitiesResultStruct? adaptyGetIntroEligibilitiesResult, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
        adaptyGetIntroEligibilitiesResult
          ?..firestoreUtilData = FirestoreUtilData(
            clearUnsetFields: clearUnsetFields,
            create: create,
          );

void addAdaptyGetIntroEligibilitiesResultStructData(
  Map<String, dynamic> firestoreData,
  AdaptyGetIntroEligibilitiesResultStruct? adaptyGetIntroEligibilitiesResult,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (adaptyGetIntroEligibilitiesResult == null) {
    return;
  }
  if (adaptyGetIntroEligibilitiesResult.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue &&
      adaptyGetIntroEligibilitiesResult.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final adaptyGetIntroEligibilitiesResultData =
      getAdaptyGetIntroEligibilitiesResultFirestoreData(
          adaptyGetIntroEligibilitiesResult, forFieldValue);
  final nestedData = adaptyGetIntroEligibilitiesResultData
      .map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      adaptyGetIntroEligibilitiesResult.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAdaptyGetIntroEligibilitiesResultFirestoreData(
  AdaptyGetIntroEligibilitiesResultStruct? adaptyGetIntroEligibilitiesResult, [
  bool forFieldValue = false,
]) {
  if (adaptyGetIntroEligibilitiesResult == null) {
    return {};
  }
  final firestoreData =
      mapToFirestore(adaptyGetIntroEligibilitiesResult.toMap());

  // Handle nested data for "error" field.
  addAdaptyErrorStructData(
    firestoreData,
    adaptyGetIntroEligibilitiesResult.hasError()
        ? adaptyGetIntroEligibilitiesResult.error
        : null,
    'error',
    forFieldValue,
  );

  // Add any Firestore field values
  adaptyGetIntroEligibilitiesResult.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<
    Map<String, dynamic>> getAdaptyGetIntroEligibilitiesResultListFirestoreData(
  List<AdaptyGetIntroEligibilitiesResultStruct>?
      adaptyGetIntroEligibilitiesResults,
) =>
    adaptyGetIntroEligibilitiesResults
        ?.map((e) => getAdaptyGetIntroEligibilitiesResultFirestoreData(e, true))
        .toList() ??
    [];
