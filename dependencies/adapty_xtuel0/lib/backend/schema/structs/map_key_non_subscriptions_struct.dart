// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MapKeyNonSubscriptionsStruct extends FFFirebaseStruct {
  MapKeyNonSubscriptionsStruct({
    String? key,
    List<AdaptyNonSubscriptionStruct>? value,
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
  List<AdaptyNonSubscriptionStruct>? _value;
  List<AdaptyNonSubscriptionStruct> get value => _value ?? const [];
  set value(List<AdaptyNonSubscriptionStruct>? val) => _value = val;

  void updateValue(Function(List<AdaptyNonSubscriptionStruct>) updateFn) {
    updateFn(_value ??= []);
  }

  bool hasValue() => _value != null;

  static MapKeyNonSubscriptionsStruct fromMap(Map<String, dynamic> data) =>
      MapKeyNonSubscriptionsStruct(
        key: data['key'] as String?,
        value: getStructList(
          data['value'],
          AdaptyNonSubscriptionStruct.fromMap,
        ),
      );

  static MapKeyNonSubscriptionsStruct? maybeFromMap(dynamic data) => data is Map
      ? MapKeyNonSubscriptionsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'key': _key,
        'value': _value?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'key': serializeParam(
          _key,
          ParamType.String,
        ),
        'value': serializeParam(
          _value,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static MapKeyNonSubscriptionsStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      MapKeyNonSubscriptionsStruct(
        key: deserializeParam(
          data['key'],
          ParamType.String,
          false,
        ),
        value: deserializeStructParam<AdaptyNonSubscriptionStruct>(
          data['value'],
          ParamType.DataStruct,
          true,
          structBuilder: AdaptyNonSubscriptionStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'MapKeyNonSubscriptionsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is MapKeyNonSubscriptionsStruct &&
        key == other.key &&
        listEquality.equals(value, other.value);
  }

  @override
  int get hashCode => const ListEquality().hash([key, value]);
}

MapKeyNonSubscriptionsStruct createMapKeyNonSubscriptionsStruct({
  String? key,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    MapKeyNonSubscriptionsStruct(
      key: key,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

MapKeyNonSubscriptionsStruct? updateMapKeyNonSubscriptionsStruct(
  MapKeyNonSubscriptionsStruct? mapKeyNonSubscriptions, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    mapKeyNonSubscriptions
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addMapKeyNonSubscriptionsStructData(
  Map<String, dynamic> firestoreData,
  MapKeyNonSubscriptionsStruct? mapKeyNonSubscriptions,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (mapKeyNonSubscriptions == null) {
    return;
  }
  if (mapKeyNonSubscriptions.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue &&
      mapKeyNonSubscriptions.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final mapKeyNonSubscriptionsData = getMapKeyNonSubscriptionsFirestoreData(
      mapKeyNonSubscriptions, forFieldValue);
  final nestedData =
      mapKeyNonSubscriptionsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      mapKeyNonSubscriptions.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getMapKeyNonSubscriptionsFirestoreData(
  MapKeyNonSubscriptionsStruct? mapKeyNonSubscriptions, [
  bool forFieldValue = false,
]) {
  if (mapKeyNonSubscriptions == null) {
    return {};
  }
  final firestoreData = mapToFirestore(mapKeyNonSubscriptions.toMap());

  // Add any Firestore field values
  mapKeyNonSubscriptions.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getMapKeyNonSubscriptionsListFirestoreData(
  List<MapKeyNonSubscriptionsStruct>? mapKeyNonSubscriptionss,
) =>
    mapKeyNonSubscriptionss
        ?.map((e) => getMapKeyNonSubscriptionsFirestoreData(e, true))
        .toList() ??
    [];
