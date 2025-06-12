// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AdaptyProfileStruct extends FFFirebaseStruct {
  AdaptyProfileStruct({
    List<AdaptyAccessLevelIdentifiersStruct>? accessLevels,
    String? profileId,
    String? customerUserId,
    List<MapKeySubscriptionsStruct>? subscriptions,
    List<MapKeyNonSubscriptionsStruct>? nonSubscriptions,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _accessLevels = accessLevels,
        _profileId = profileId,
        _customerUserId = customerUserId,
        _subscriptions = subscriptions,
        _nonSubscriptions = nonSubscriptions,
        super(firestoreUtilData);

  // "accessLevels" field.
  List<AdaptyAccessLevelIdentifiersStruct>? _accessLevels;
  List<AdaptyAccessLevelIdentifiersStruct> get accessLevels =>
      _accessLevels ?? const [];
  set accessLevels(List<AdaptyAccessLevelIdentifiersStruct>? val) =>
      _accessLevels = val;

  void updateAccessLevels(
      Function(List<AdaptyAccessLevelIdentifiersStruct>) updateFn) {
    updateFn(_accessLevels ??= []);
  }

  bool hasAccessLevels() => _accessLevels != null;

  // "profileId" field.
  String? _profileId;
  String get profileId => _profileId ?? '';
  set profileId(String? val) => _profileId = val;

  bool hasProfileId() => _profileId != null;

  // "customerUserId" field.
  String? _customerUserId;
  String get customerUserId => _customerUserId ?? '';
  set customerUserId(String? val) => _customerUserId = val;

  bool hasCustomerUserId() => _customerUserId != null;

  // "subscriptions" field.
  List<MapKeySubscriptionsStruct>? _subscriptions;
  List<MapKeySubscriptionsStruct> get subscriptions =>
      _subscriptions ?? const [];
  set subscriptions(List<MapKeySubscriptionsStruct>? val) =>
      _subscriptions = val;

  void updateSubscriptions(Function(List<MapKeySubscriptionsStruct>) updateFn) {
    updateFn(_subscriptions ??= []);
  }

  bool hasSubscriptions() => _subscriptions != null;

  // "nonSubscriptions" field.
  List<MapKeyNonSubscriptionsStruct>? _nonSubscriptions;
  List<MapKeyNonSubscriptionsStruct> get nonSubscriptions =>
      _nonSubscriptions ?? const [];
  set nonSubscriptions(List<MapKeyNonSubscriptionsStruct>? val) =>
      _nonSubscriptions = val;

  void updateNonSubscriptions(
      Function(List<MapKeyNonSubscriptionsStruct>) updateFn) {
    updateFn(_nonSubscriptions ??= []);
  }

  bool hasNonSubscriptions() => _nonSubscriptions != null;

  static AdaptyProfileStruct fromMap(Map<String, dynamic> data) =>
      AdaptyProfileStruct(
        accessLevels: getStructList(
          data['accessLevels'],
          AdaptyAccessLevelIdentifiersStruct.fromMap,
        ),
        profileId: data['profileId'] as String?,
        customerUserId: data['customerUserId'] as String?,
        subscriptions: getStructList(
          data['subscriptions'],
          MapKeySubscriptionsStruct.fromMap,
        ),
        nonSubscriptions: getStructList(
          data['nonSubscriptions'],
          MapKeyNonSubscriptionsStruct.fromMap,
        ),
      );

  static AdaptyProfileStruct? maybeFromMap(dynamic data) => data is Map
      ? AdaptyProfileStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'accessLevels': _accessLevels?.map((e) => e.toMap()).toList(),
        'profileId': _profileId,
        'customerUserId': _customerUserId,
        'subscriptions': _subscriptions?.map((e) => e.toMap()).toList(),
        'nonSubscriptions': _nonSubscriptions?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'accessLevels': serializeParam(
          _accessLevels,
          ParamType.DataStruct,
          isList: true,
        ),
        'profileId': serializeParam(
          _profileId,
          ParamType.String,
        ),
        'customerUserId': serializeParam(
          _customerUserId,
          ParamType.String,
        ),
        'subscriptions': serializeParam(
          _subscriptions,
          ParamType.DataStruct,
          isList: true,
        ),
        'nonSubscriptions': serializeParam(
          _nonSubscriptions,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static AdaptyProfileStruct fromSerializableMap(Map<String, dynamic> data) =>
      AdaptyProfileStruct(
        accessLevels:
            deserializeStructParam<AdaptyAccessLevelIdentifiersStruct>(
          data['accessLevels'],
          ParamType.DataStruct,
          true,
          structBuilder: AdaptyAccessLevelIdentifiersStruct.fromSerializableMap,
        ),
        profileId: deserializeParam(
          data['profileId'],
          ParamType.String,
          false,
        ),
        customerUserId: deserializeParam(
          data['customerUserId'],
          ParamType.String,
          false,
        ),
        subscriptions: deserializeStructParam<MapKeySubscriptionsStruct>(
          data['subscriptions'],
          ParamType.DataStruct,
          true,
          structBuilder: MapKeySubscriptionsStruct.fromSerializableMap,
        ),
        nonSubscriptions: deserializeStructParam<MapKeyNonSubscriptionsStruct>(
          data['nonSubscriptions'],
          ParamType.DataStruct,
          true,
          structBuilder: MapKeyNonSubscriptionsStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'AdaptyProfileStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is AdaptyProfileStruct &&
        listEquality.equals(accessLevels, other.accessLevels) &&
        profileId == other.profileId &&
        customerUserId == other.customerUserId &&
        listEquality.equals(subscriptions, other.subscriptions) &&
        listEquality.equals(nonSubscriptions, other.nonSubscriptions);
  }

  @override
  int get hashCode => const ListEquality().hash([
        accessLevels,
        profileId,
        customerUserId,
        subscriptions,
        nonSubscriptions
      ]);
}

AdaptyProfileStruct createAdaptyProfileStruct({
  String? profileId,
  String? customerUserId,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AdaptyProfileStruct(
      profileId: profileId,
      customerUserId: customerUserId,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AdaptyProfileStruct? updateAdaptyProfileStruct(
  AdaptyProfileStruct? adaptyProfile, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    adaptyProfile
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAdaptyProfileStructData(
  Map<String, dynamic> firestoreData,
  AdaptyProfileStruct? adaptyProfile,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (adaptyProfile == null) {
    return;
  }
  if (adaptyProfile.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && adaptyProfile.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final adaptyProfileData =
      getAdaptyProfileFirestoreData(adaptyProfile, forFieldValue);
  final nestedData =
      adaptyProfileData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = adaptyProfile.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAdaptyProfileFirestoreData(
  AdaptyProfileStruct? adaptyProfile, [
  bool forFieldValue = false,
]) {
  if (adaptyProfile == null) {
    return {};
  }
  final firestoreData = mapToFirestore(adaptyProfile.toMap());

  // Add any Firestore field values
  adaptyProfile.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAdaptyProfileListFirestoreData(
  List<AdaptyProfileStruct>? adaptyProfiles,
) =>
    adaptyProfiles
        ?.map((e) => getAdaptyProfileFirestoreData(e, true))
        .toList() ??
    [];
