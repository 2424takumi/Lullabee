// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MapKeySubscriptionsStruct extends FFFirebaseStruct {
  MapKeySubscriptionsStruct({
    String? key,
    AdaptySubscriptionStruct? subscription,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _key = key,
        _subscription = subscription,
        super(firestoreUtilData);

  // "key" field.
  String? _key;
  String get key => _key ?? '';
  set key(String? val) => _key = val;

  bool hasKey() => _key != null;

  // "subscription" field.
  AdaptySubscriptionStruct? _subscription;
  AdaptySubscriptionStruct get subscription =>
      _subscription ?? AdaptySubscriptionStruct();
  set subscription(AdaptySubscriptionStruct? val) => _subscription = val;

  void updateSubscription(Function(AdaptySubscriptionStruct) updateFn) {
    updateFn(_subscription ??= AdaptySubscriptionStruct());
  }

  bool hasSubscription() => _subscription != null;

  static MapKeySubscriptionsStruct fromMap(Map<String, dynamic> data) =>
      MapKeySubscriptionsStruct(
        key: data['key'] as String?,
        subscription: data['subscription'] is AdaptySubscriptionStruct
            ? data['subscription']
            : AdaptySubscriptionStruct.maybeFromMap(data['subscription']),
      );

  static MapKeySubscriptionsStruct? maybeFromMap(dynamic data) => data is Map
      ? MapKeySubscriptionsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'key': _key,
        'subscription': _subscription?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'key': serializeParam(
          _key,
          ParamType.String,
        ),
        'subscription': serializeParam(
          _subscription,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static MapKeySubscriptionsStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      MapKeySubscriptionsStruct(
        key: deserializeParam(
          data['key'],
          ParamType.String,
          false,
        ),
        subscription: deserializeStructParam(
          data['subscription'],
          ParamType.DataStruct,
          false,
          structBuilder: AdaptySubscriptionStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'MapKeySubscriptionsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MapKeySubscriptionsStruct &&
        key == other.key &&
        subscription == other.subscription;
  }

  @override
  int get hashCode => const ListEquality().hash([key, subscription]);
}

MapKeySubscriptionsStruct createMapKeySubscriptionsStruct({
  String? key,
  AdaptySubscriptionStruct? subscription,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    MapKeySubscriptionsStruct(
      key: key,
      subscription: subscription ??
          (clearUnsetFields ? AdaptySubscriptionStruct() : null),
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

MapKeySubscriptionsStruct? updateMapKeySubscriptionsStruct(
  MapKeySubscriptionsStruct? mapKeySubscriptions, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    mapKeySubscriptions
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addMapKeySubscriptionsStructData(
  Map<String, dynamic> firestoreData,
  MapKeySubscriptionsStruct? mapKeySubscriptions,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (mapKeySubscriptions == null) {
    return;
  }
  if (mapKeySubscriptions.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && mapKeySubscriptions.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final mapKeySubscriptionsData =
      getMapKeySubscriptionsFirestoreData(mapKeySubscriptions, forFieldValue);
  final nestedData =
      mapKeySubscriptionsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      mapKeySubscriptions.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getMapKeySubscriptionsFirestoreData(
  MapKeySubscriptionsStruct? mapKeySubscriptions, [
  bool forFieldValue = false,
]) {
  if (mapKeySubscriptions == null) {
    return {};
  }
  final firestoreData = mapToFirestore(mapKeySubscriptions.toMap());

  // Handle nested data for "subscription" field.
  addAdaptySubscriptionStructData(
    firestoreData,
    mapKeySubscriptions.hasSubscription()
        ? mapKeySubscriptions.subscription
        : null,
    'subscription',
    forFieldValue,
  );

  // Add any Firestore field values
  mapKeySubscriptions.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getMapKeySubscriptionsListFirestoreData(
  List<MapKeySubscriptionsStruct>? mapKeySubscriptionss,
) =>
    mapKeySubscriptionss
        ?.map((e) => getMapKeySubscriptionsFirestoreData(e, true))
        .toList() ??
    [];
