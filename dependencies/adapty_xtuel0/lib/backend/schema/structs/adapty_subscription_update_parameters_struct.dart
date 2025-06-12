// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AdaptySubscriptionUpdateParametersStruct extends FFFirebaseStruct {
  AdaptySubscriptionUpdateParametersStruct({
    String? oldSubVendorProductId,
    AdaptySubscriptionUpdateReplacementMode? replacementMode,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _oldSubVendorProductId = oldSubVendorProductId,
        _replacementMode = replacementMode,
        super(firestoreUtilData);

  // "oldSubVendorProductId" field.
  String? _oldSubVendorProductId;
  String get oldSubVendorProductId => _oldSubVendorProductId ?? '';
  set oldSubVendorProductId(String? val) => _oldSubVendorProductId = val;

  bool hasOldSubVendorProductId() => _oldSubVendorProductId != null;

  // "replacementMode" field.
  AdaptySubscriptionUpdateReplacementMode? _replacementMode;
  AdaptySubscriptionUpdateReplacementMode get replacementMode =>
      _replacementMode ??
      AdaptySubscriptionUpdateReplacementMode.withTimeProration;
  set replacementMode(AdaptySubscriptionUpdateReplacementMode? val) =>
      _replacementMode = val;

  bool hasReplacementMode() => _replacementMode != null;

  static AdaptySubscriptionUpdateParametersStruct fromMap(
          Map<String, dynamic> data) =>
      AdaptySubscriptionUpdateParametersStruct(
        oldSubVendorProductId: data['oldSubVendorProductId'] as String?,
        replacementMode:
            data['replacementMode'] is AdaptySubscriptionUpdateReplacementMode
                ? data['replacementMode']
                : deserializeEnum<AdaptySubscriptionUpdateReplacementMode>(
                    data['replacementMode']),
      );

  static AdaptySubscriptionUpdateParametersStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? AdaptySubscriptionUpdateParametersStruct.fromMap(
              data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'oldSubVendorProductId': _oldSubVendorProductId,
        'replacementMode': _replacementMode?.serialize(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'oldSubVendorProductId': serializeParam(
          _oldSubVendorProductId,
          ParamType.String,
        ),
        'replacementMode': serializeParam(
          _replacementMode,
          ParamType.Enum,
        ),
      }.withoutNulls;

  static AdaptySubscriptionUpdateParametersStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      AdaptySubscriptionUpdateParametersStruct(
        oldSubVendorProductId: deserializeParam(
          data['oldSubVendorProductId'],
          ParamType.String,
          false,
        ),
        replacementMode:
            deserializeParam<AdaptySubscriptionUpdateReplacementMode>(
          data['replacementMode'],
          ParamType.Enum,
          false,
        ),
      );

  @override
  String toString() => 'AdaptySubscriptionUpdateParametersStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AdaptySubscriptionUpdateParametersStruct &&
        oldSubVendorProductId == other.oldSubVendorProductId &&
        replacementMode == other.replacementMode;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([oldSubVendorProductId, replacementMode]);
}

AdaptySubscriptionUpdateParametersStruct
    createAdaptySubscriptionUpdateParametersStruct({
  String? oldSubVendorProductId,
  AdaptySubscriptionUpdateReplacementMode? replacementMode,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
        AdaptySubscriptionUpdateParametersStruct(
          oldSubVendorProductId: oldSubVendorProductId,
          replacementMode: replacementMode,
          firestoreUtilData: FirestoreUtilData(
            clearUnsetFields: clearUnsetFields,
            create: create,
            delete: delete,
            fieldValues: fieldValues,
          ),
        );

AdaptySubscriptionUpdateParametersStruct?
    updateAdaptySubscriptionUpdateParametersStruct(
  AdaptySubscriptionUpdateParametersStruct?
      adaptySubscriptionUpdateParameters, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
        adaptySubscriptionUpdateParameters
          ?..firestoreUtilData = FirestoreUtilData(
            clearUnsetFields: clearUnsetFields,
            create: create,
          );

void addAdaptySubscriptionUpdateParametersStructData(
  Map<String, dynamic> firestoreData,
  AdaptySubscriptionUpdateParametersStruct? adaptySubscriptionUpdateParameters,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (adaptySubscriptionUpdateParameters == null) {
    return;
  }
  if (adaptySubscriptionUpdateParameters.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue &&
      adaptySubscriptionUpdateParameters.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final adaptySubscriptionUpdateParametersData =
      getAdaptySubscriptionUpdateParametersFirestoreData(
          adaptySubscriptionUpdateParameters, forFieldValue);
  final nestedData = adaptySubscriptionUpdateParametersData
      .map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      adaptySubscriptionUpdateParameters.firestoreUtilData.create ||
          clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAdaptySubscriptionUpdateParametersFirestoreData(
  AdaptySubscriptionUpdateParametersStruct?
      adaptySubscriptionUpdateParameters, [
  bool forFieldValue = false,
]) {
  if (adaptySubscriptionUpdateParameters == null) {
    return {};
  }
  final firestoreData =
      mapToFirestore(adaptySubscriptionUpdateParameters.toMap());

  // Add any Firestore field values
  adaptySubscriptionUpdateParameters.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>>
    getAdaptySubscriptionUpdateParametersListFirestoreData(
  List<AdaptySubscriptionUpdateParametersStruct>?
      adaptySubscriptionUpdateParameterss,
) =>
        adaptySubscriptionUpdateParameterss
            ?.map((e) =>
                getAdaptySubscriptionUpdateParametersFirestoreData(e, true))
            .toList() ??
        [];
