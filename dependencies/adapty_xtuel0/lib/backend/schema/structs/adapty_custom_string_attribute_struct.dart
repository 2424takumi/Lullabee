// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AdaptyCustomStringAttributeStruct extends FFFirebaseStruct {
  AdaptyCustomStringAttributeStruct({
    String? key,
    String? value,
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
  String? _value;
  String get value => _value ?? '';
  set value(String? val) => _value = val;

  bool hasValue() => _value != null;

  static AdaptyCustomStringAttributeStruct fromMap(Map<String, dynamic> data) =>
      AdaptyCustomStringAttributeStruct(
        key: data['key'] as String?,
        value: data['value'] as String?,
      );

  static AdaptyCustomStringAttributeStruct? maybeFromMap(dynamic data) => data
          is Map
      ? AdaptyCustomStringAttributeStruct.fromMap(data.cast<String, dynamic>())
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
          ParamType.String,
        ),
      }.withoutNulls;

  static AdaptyCustomStringAttributeStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      AdaptyCustomStringAttributeStruct(
        key: deserializeParam(
          data['key'],
          ParamType.String,
          false,
        ),
        value: deserializeParam(
          data['value'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AdaptyCustomStringAttributeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AdaptyCustomStringAttributeStruct &&
        key == other.key &&
        value == other.value;
  }

  @override
  int get hashCode => const ListEquality().hash([key, value]);
}

AdaptyCustomStringAttributeStruct createAdaptyCustomStringAttributeStruct({
  String? key,
  String? value,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AdaptyCustomStringAttributeStruct(
      key: key,
      value: value,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AdaptyCustomStringAttributeStruct? updateAdaptyCustomStringAttributeStruct(
  AdaptyCustomStringAttributeStruct? adaptyCustomStringAttribute, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    adaptyCustomStringAttribute
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAdaptyCustomStringAttributeStructData(
  Map<String, dynamic> firestoreData,
  AdaptyCustomStringAttributeStruct? adaptyCustomStringAttribute,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (adaptyCustomStringAttribute == null) {
    return;
  }
  if (adaptyCustomStringAttribute.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue &&
      adaptyCustomStringAttribute.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final adaptyCustomStringAttributeData =
      getAdaptyCustomStringAttributeFirestoreData(
          adaptyCustomStringAttribute, forFieldValue);
  final nestedData = adaptyCustomStringAttributeData
      .map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      adaptyCustomStringAttribute.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAdaptyCustomStringAttributeFirestoreData(
  AdaptyCustomStringAttributeStruct? adaptyCustomStringAttribute, [
  bool forFieldValue = false,
]) {
  if (adaptyCustomStringAttribute == null) {
    return {};
  }
  final firestoreData = mapToFirestore(adaptyCustomStringAttribute.toMap());

  // Add any Firestore field values
  adaptyCustomStringAttribute.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAdaptyCustomStringAttributeListFirestoreData(
  List<AdaptyCustomStringAttributeStruct>? adaptyCustomStringAttributes,
) =>
    adaptyCustomStringAttributes
        ?.map((e) => getAdaptyCustomStringAttributeFirestoreData(e, true))
        .toList() ??
    [];
