// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AdaptyCustomDoubleAttributeStruct extends FFFirebaseStruct {
  AdaptyCustomDoubleAttributeStruct({
    String? key,
    double? value,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _key = key,
        _value = value,
        super(firestoreUtilData);

  // "key" field.
  String? _key;
  String get key => _key ?? '';
  set key(String? val) => _key = val;

  bool hasKey() => _key != null;

  // "value" field.
  double? _value;
  double get value => _value ?? 0.0;
  set value(double? val) => _value = val;

  void incrementValue(double amount) => value = value + amount;

  bool hasValue() => _value != null;

  static AdaptyCustomDoubleAttributeStruct fromMap(Map<String, dynamic> data) =>
      AdaptyCustomDoubleAttributeStruct(
        key: data['key'] as String?,
        value: castToType<double>(data['value']),
      );

  static AdaptyCustomDoubleAttributeStruct? maybeFromMap(dynamic data) => data
          is Map
      ? AdaptyCustomDoubleAttributeStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'key': _key,
        'value': _value,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'key': serializeParam(
          _key,
          ParamType.String,
        ),
        'value': serializeParam(
          _value,
          ParamType.double,
        ),
      }.withoutNulls;

  static AdaptyCustomDoubleAttributeStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      AdaptyCustomDoubleAttributeStruct(
        key: deserializeParam(
          data['key'],
          ParamType.String,
          false,
        ),
        value: deserializeParam(
          data['value'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'AdaptyCustomDoubleAttributeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AdaptyCustomDoubleAttributeStruct &&
        key == other.key &&
        value == other.value;
  }

  @override
  int get hashCode => const ListEquality().hash([key, value]);
}

AdaptyCustomDoubleAttributeStruct createAdaptyCustomDoubleAttributeStruct({
  String? key,
  double? value,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AdaptyCustomDoubleAttributeStruct(
      key: key,
      value: value,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AdaptyCustomDoubleAttributeStruct? updateAdaptyCustomDoubleAttributeStruct(
  AdaptyCustomDoubleAttributeStruct? adaptyCustomDoubleAttribute, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    adaptyCustomDoubleAttribute
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAdaptyCustomDoubleAttributeStructData(
  Map<String, dynamic> firestoreData,
  AdaptyCustomDoubleAttributeStruct? adaptyCustomDoubleAttribute,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (adaptyCustomDoubleAttribute == null) {
    return;
  }
  if (adaptyCustomDoubleAttribute.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue &&
      adaptyCustomDoubleAttribute.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final adaptyCustomDoubleAttributeData =
      getAdaptyCustomDoubleAttributeFirestoreData(
          adaptyCustomDoubleAttribute, forFieldValue);
  final nestedData = adaptyCustomDoubleAttributeData
      .map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      adaptyCustomDoubleAttribute.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAdaptyCustomDoubleAttributeFirestoreData(
  AdaptyCustomDoubleAttributeStruct? adaptyCustomDoubleAttribute, [
  bool forFieldValue = false,
]) {
  if (adaptyCustomDoubleAttribute == null) {
    return {};
  }
  final firestoreData = mapToFirestore(adaptyCustomDoubleAttribute.toMap());

  // Add any Firestore field values
  adaptyCustomDoubleAttribute.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAdaptyCustomDoubleAttributeListFirestoreData(
  List<AdaptyCustomDoubleAttributeStruct>? adaptyCustomDoubleAttributes,
) =>
    adaptyCustomDoubleAttributes
        ?.map((e) => getAdaptyCustomDoubleAttributeFirestoreData(e, true))
        .toList() ??
    [];
