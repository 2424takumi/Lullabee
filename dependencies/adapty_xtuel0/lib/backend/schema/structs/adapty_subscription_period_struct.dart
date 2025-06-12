// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AdaptySubscriptionPeriodStruct extends FFFirebaseStruct {
  AdaptySubscriptionPeriodStruct({
    int? numberOfUnits,
    AdaptyPeriodUnitEnum? unit,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _numberOfUnits = numberOfUnits,
        _unit = unit,
        super(firestoreUtilData);

  // "numberOfUnits" field.
  int? _numberOfUnits;
  int get numberOfUnits => _numberOfUnits ?? 0;
  set numberOfUnits(int? val) => _numberOfUnits = val;

  void incrementNumberOfUnits(int amount) =>
      numberOfUnits = numberOfUnits + amount;

  bool hasNumberOfUnits() => _numberOfUnits != null;

  // "unit" field.
  AdaptyPeriodUnitEnum? _unit;
  AdaptyPeriodUnitEnum? get unit => _unit;
  set unit(AdaptyPeriodUnitEnum? val) => _unit = val;

  bool hasUnit() => _unit != null;

  static AdaptySubscriptionPeriodStruct fromMap(Map<String, dynamic> data) =>
      AdaptySubscriptionPeriodStruct(
        numberOfUnits: castToType<int>(data['numberOfUnits']),
        unit: data['unit'] is AdaptyPeriodUnitEnum
            ? data['unit']
            : deserializeEnum<AdaptyPeriodUnitEnum>(data['unit']),
      );

  static AdaptySubscriptionPeriodStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? AdaptySubscriptionPeriodStruct.fromMap(data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'numberOfUnits': _numberOfUnits,
        'unit': _unit?.serialize(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'numberOfUnits': serializeParam(
          _numberOfUnits,
          ParamType.int,
        ),
        'unit': serializeParam(
          _unit,
          ParamType.Enum,
        ),
      }.withoutNulls;

  static AdaptySubscriptionPeriodStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      AdaptySubscriptionPeriodStruct(
        numberOfUnits: deserializeParam(
          data['numberOfUnits'],
          ParamType.int,
          false,
        ),
        unit: deserializeParam<AdaptyPeriodUnitEnum>(
          data['unit'],
          ParamType.Enum,
          false,
        ),
      );

  @override
  String toString() => 'AdaptySubscriptionPeriodStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AdaptySubscriptionPeriodStruct &&
        numberOfUnits == other.numberOfUnits &&
        unit == other.unit;
  }

  @override
  int get hashCode => const ListEquality().hash([numberOfUnits, unit]);
}

AdaptySubscriptionPeriodStruct createAdaptySubscriptionPeriodStruct({
  int? numberOfUnits,
  AdaptyPeriodUnitEnum? unit,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AdaptySubscriptionPeriodStruct(
      numberOfUnits: numberOfUnits,
      unit: unit,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AdaptySubscriptionPeriodStruct? updateAdaptySubscriptionPeriodStruct(
  AdaptySubscriptionPeriodStruct? adaptySubscriptionPeriod, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    adaptySubscriptionPeriod
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAdaptySubscriptionPeriodStructData(
  Map<String, dynamic> firestoreData,
  AdaptySubscriptionPeriodStruct? adaptySubscriptionPeriod,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (adaptySubscriptionPeriod == null) {
    return;
  }
  if (adaptySubscriptionPeriod.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue &&
      adaptySubscriptionPeriod.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final adaptySubscriptionPeriodData = getAdaptySubscriptionPeriodFirestoreData(
      adaptySubscriptionPeriod, forFieldValue);
  final nestedData =
      adaptySubscriptionPeriodData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      adaptySubscriptionPeriod.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAdaptySubscriptionPeriodFirestoreData(
  AdaptySubscriptionPeriodStruct? adaptySubscriptionPeriod, [
  bool forFieldValue = false,
]) {
  if (adaptySubscriptionPeriod == null) {
    return {};
  }
  final firestoreData = mapToFirestore(adaptySubscriptionPeriod.toMap());

  // Add any Firestore field values
  adaptySubscriptionPeriod.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAdaptySubscriptionPeriodListFirestoreData(
  List<AdaptySubscriptionPeriodStruct>? adaptySubscriptionPeriods,
) =>
    adaptySubscriptionPeriods
        ?.map((e) => getAdaptySubscriptionPeriodFirestoreData(e, true))
        .toList() ??
    [];
