// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AdaptyGetProductsResultStruct extends FFFirebaseStruct {
  AdaptyGetProductsResultStruct({
    List<AdaptyPaywallProductStruct>? value,
    AdaptyErrorStruct? error,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _value = value,
        _error = error,
        super(firestoreUtilData);

  // "value" field.
  List<AdaptyPaywallProductStruct>? _value;
  List<AdaptyPaywallProductStruct> get value => _value ?? const [];
  set value(List<AdaptyPaywallProductStruct>? val) => _value = val;

  void updateValue(Function(List<AdaptyPaywallProductStruct>) updateFn) {
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

  static AdaptyGetProductsResultStruct fromMap(Map<String, dynamic> data) =>
      AdaptyGetProductsResultStruct(
        value: getStructList(
          data['value'],
          AdaptyPaywallProductStruct.fromMap,
        ),
        error: data['error'] is AdaptyErrorStruct
            ? data['error']
            : AdaptyErrorStruct.maybeFromMap(data['error']),
      );

  static AdaptyGetProductsResultStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? AdaptyGetProductsResultStruct.fromMap(data.cast<String, dynamic>())
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

  static AdaptyGetProductsResultStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      AdaptyGetProductsResultStruct(
        value: deserializeStructParam<AdaptyPaywallProductStruct>(
          data['value'],
          ParamType.DataStruct,
          true,
          structBuilder: AdaptyPaywallProductStruct.fromSerializableMap,
        ),
        error: deserializeStructParam(
          data['error'],
          ParamType.DataStruct,
          false,
          structBuilder: AdaptyErrorStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'AdaptyGetProductsResultStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is AdaptyGetProductsResultStruct &&
        listEquality.equals(value, other.value) &&
        error == other.error;
  }

  @override
  int get hashCode => const ListEquality().hash([value, error]);
}

AdaptyGetProductsResultStruct createAdaptyGetProductsResultStruct({
  AdaptyErrorStruct? error,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AdaptyGetProductsResultStruct(
      error: error ?? (clearUnsetFields ? AdaptyErrorStruct() : null),
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AdaptyGetProductsResultStruct? updateAdaptyGetProductsResultStruct(
  AdaptyGetProductsResultStruct? adaptyGetProductsResult, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    adaptyGetProductsResult
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAdaptyGetProductsResultStructData(
  Map<String, dynamic> firestoreData,
  AdaptyGetProductsResultStruct? adaptyGetProductsResult,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (adaptyGetProductsResult == null) {
    return;
  }
  if (adaptyGetProductsResult.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue &&
      adaptyGetProductsResult.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final adaptyGetProductsResultData = getAdaptyGetProductsResultFirestoreData(
      adaptyGetProductsResult, forFieldValue);
  final nestedData =
      adaptyGetProductsResultData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      adaptyGetProductsResult.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAdaptyGetProductsResultFirestoreData(
  AdaptyGetProductsResultStruct? adaptyGetProductsResult, [
  bool forFieldValue = false,
]) {
  if (adaptyGetProductsResult == null) {
    return {};
  }
  final firestoreData = mapToFirestore(adaptyGetProductsResult.toMap());

  // Handle nested data for "error" field.
  addAdaptyErrorStructData(
    firestoreData,
    adaptyGetProductsResult.hasError() ? adaptyGetProductsResult.error : null,
    'error',
    forFieldValue,
  );

  // Add any Firestore field values
  adaptyGetProductsResult.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAdaptyGetProductsResultListFirestoreData(
  List<AdaptyGetProductsResultStruct>? adaptyGetProductsResults,
) =>
    adaptyGetProductsResults
        ?.map((e) => getAdaptyGetProductsResultFirestoreData(e, true))
        .toList() ??
    [];
