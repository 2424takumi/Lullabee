// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AdaptyErrorStruct extends FFFirebaseStruct {
  AdaptyErrorStruct({
    String? errorMessage,
    int? errorCode,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _errorMessage = errorMessage,
        _errorCode = errorCode,
        super(firestoreUtilData);

  // "errorMessage" field.
  String? _errorMessage;
  String get errorMessage => _errorMessage ?? '';
  set errorMessage(String? val) => _errorMessage = val;

  bool hasErrorMessage() => _errorMessage != null;

  // "errorCode" field.
  int? _errorCode;
  int get errorCode => _errorCode ?? 0;
  set errorCode(int? val) => _errorCode = val;

  void incrementErrorCode(int amount) => errorCode = errorCode + amount;

  bool hasErrorCode() => _errorCode != null;

  static AdaptyErrorStruct fromMap(Map<String, dynamic> data) =>
      AdaptyErrorStruct(
        errorMessage: data['errorMessage'] as String?,
        errorCode: castToType<int>(data['errorCode']),
      );

  static AdaptyErrorStruct? maybeFromMap(dynamic data) => data is Map
      ? AdaptyErrorStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'errorMessage': _errorMessage,
        'errorCode': _errorCode,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'errorMessage': serializeParam(
          _errorMessage,
          ParamType.String,
        ),
        'errorCode': serializeParam(
          _errorCode,
          ParamType.int,
        ),
      }.withoutNulls;

  static AdaptyErrorStruct fromSerializableMap(Map<String, dynamic> data) =>
      AdaptyErrorStruct(
        errorMessage: deserializeParam(
          data['errorMessage'],
          ParamType.String,
          false,
        ),
        errorCode: deserializeParam(
          data['errorCode'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'AdaptyErrorStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AdaptyErrorStruct &&
        errorMessage == other.errorMessage &&
        errorCode == other.errorCode;
  }

  @override
  int get hashCode => const ListEquality().hash([errorMessage, errorCode]);
}

AdaptyErrorStruct createAdaptyErrorStruct({
  String? errorMessage,
  int? errorCode,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AdaptyErrorStruct(
      errorMessage: errorMessage,
      errorCode: errorCode,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AdaptyErrorStruct? updateAdaptyErrorStruct(
  AdaptyErrorStruct? adaptyError, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    adaptyError
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAdaptyErrorStructData(
  Map<String, dynamic> firestoreData,
  AdaptyErrorStruct? adaptyError,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (adaptyError == null) {
    return;
  }
  if (adaptyError.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && adaptyError.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final adaptyErrorData =
      getAdaptyErrorFirestoreData(adaptyError, forFieldValue);
  final nestedData =
      adaptyErrorData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = adaptyError.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAdaptyErrorFirestoreData(
  AdaptyErrorStruct? adaptyError, [
  bool forFieldValue = false,
]) {
  if (adaptyError == null) {
    return {};
  }
  final firestoreData = mapToFirestore(adaptyError.toMap());

  // Add any Firestore field values
  adaptyError.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAdaptyErrorListFirestoreData(
  List<AdaptyErrorStruct>? adaptyErrors,
) =>
    adaptyErrors?.map((e) => getAdaptyErrorFirestoreData(e, true)).toList() ??
    [];
