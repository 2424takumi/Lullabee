// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AdaptyNonSubscriptionStruct extends FFFirebaseStruct {
  AdaptyNonSubscriptionStruct({
    bool? isConsumable,
    bool? isOneTime,
    bool? isRefund,
    bool? isSandbox,
    String? purchaseId,
    String? store,
    String? vendorProductId,
    String? vendorTransactionId,
    DateTime? purchasedAt,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _isConsumable = isConsumable,
        _isOneTime = isOneTime,
        _isRefund = isRefund,
        _isSandbox = isSandbox,
        _purchaseId = purchaseId,
        _store = store,
        _vendorProductId = vendorProductId,
        _vendorTransactionId = vendorTransactionId,
        _purchasedAt = purchasedAt,
        super(firestoreUtilData);

  // "isConsumable" field.
  bool? _isConsumable;
  bool get isConsumable => _isConsumable ?? false;
  set isConsumable(bool? val) => _isConsumable = val;

  bool hasIsConsumable() => _isConsumable != null;

  // "isOneTime" field.
  bool? _isOneTime;
  bool get isOneTime => _isOneTime ?? false;
  set isOneTime(bool? val) => _isOneTime = val;

  bool hasIsOneTime() => _isOneTime != null;

  // "isRefund" field.
  bool? _isRefund;
  bool get isRefund => _isRefund ?? false;
  set isRefund(bool? val) => _isRefund = val;

  bool hasIsRefund() => _isRefund != null;

  // "isSandbox" field.
  bool? _isSandbox;
  bool get isSandbox => _isSandbox ?? false;
  set isSandbox(bool? val) => _isSandbox = val;

  bool hasIsSandbox() => _isSandbox != null;

  // "purchaseId" field.
  String? _purchaseId;
  String get purchaseId => _purchaseId ?? '';
  set purchaseId(String? val) => _purchaseId = val;

  bool hasPurchaseId() => _purchaseId != null;

  // "store" field.
  String? _store;
  String get store => _store ?? '';
  set store(String? val) => _store = val;

  bool hasStore() => _store != null;

  // "vendorProductId" field.
  String? _vendorProductId;
  String get vendorProductId => _vendorProductId ?? '';
  set vendorProductId(String? val) => _vendorProductId = val;

  bool hasVendorProductId() => _vendorProductId != null;

  // "vendorTransactionId" field.
  String? _vendorTransactionId;
  String get vendorTransactionId => _vendorTransactionId ?? '';
  set vendorTransactionId(String? val) => _vendorTransactionId = val;

  bool hasVendorTransactionId() => _vendorTransactionId != null;

  // "purchasedAt" field.
  DateTime? _purchasedAt;
  DateTime? get purchasedAt => _purchasedAt;
  set purchasedAt(DateTime? val) => _purchasedAt = val;

  bool hasPurchasedAt() => _purchasedAt != null;

  static AdaptyNonSubscriptionStruct fromMap(Map<String, dynamic> data) =>
      AdaptyNonSubscriptionStruct(
        isConsumable: data['isConsumable'] as bool?,
        isOneTime: data['isOneTime'] as bool?,
        isRefund: data['isRefund'] as bool?,
        isSandbox: data['isSandbox'] as bool?,
        purchaseId: data['purchaseId'] as String?,
        store: data['store'] as String?,
        vendorProductId: data['vendorProductId'] as String?,
        vendorTransactionId: data['vendorTransactionId'] as String?,
        purchasedAt: data['purchasedAt'] as DateTime?,
      );

  static AdaptyNonSubscriptionStruct? maybeFromMap(dynamic data) => data is Map
      ? AdaptyNonSubscriptionStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'isConsumable': _isConsumable,
        'isOneTime': _isOneTime,
        'isRefund': _isRefund,
        'isSandbox': _isSandbox,
        'purchaseId': _purchaseId,
        'store': _store,
        'vendorProductId': _vendorProductId,
        'vendorTransactionId': _vendorTransactionId,
        'purchasedAt': _purchasedAt,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'isConsumable': serializeParam(
          _isConsumable,
          ParamType.bool,
        ),
        'isOneTime': serializeParam(
          _isOneTime,
          ParamType.bool,
        ),
        'isRefund': serializeParam(
          _isRefund,
          ParamType.bool,
        ),
        'isSandbox': serializeParam(
          _isSandbox,
          ParamType.bool,
        ),
        'purchaseId': serializeParam(
          _purchaseId,
          ParamType.String,
        ),
        'store': serializeParam(
          _store,
          ParamType.String,
        ),
        'vendorProductId': serializeParam(
          _vendorProductId,
          ParamType.String,
        ),
        'vendorTransactionId': serializeParam(
          _vendorTransactionId,
          ParamType.String,
        ),
        'purchasedAt': serializeParam(
          _purchasedAt,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static AdaptyNonSubscriptionStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      AdaptyNonSubscriptionStruct(
        isConsumable: deserializeParam(
          data['isConsumable'],
          ParamType.bool,
          false,
        ),
        isOneTime: deserializeParam(
          data['isOneTime'],
          ParamType.bool,
          false,
        ),
        isRefund: deserializeParam(
          data['isRefund'],
          ParamType.bool,
          false,
        ),
        isSandbox: deserializeParam(
          data['isSandbox'],
          ParamType.bool,
          false,
        ),
        purchaseId: deserializeParam(
          data['purchaseId'],
          ParamType.String,
          false,
        ),
        store: deserializeParam(
          data['store'],
          ParamType.String,
          false,
        ),
        vendorProductId: deserializeParam(
          data['vendorProductId'],
          ParamType.String,
          false,
        ),
        vendorTransactionId: deserializeParam(
          data['vendorTransactionId'],
          ParamType.String,
          false,
        ),
        purchasedAt: deserializeParam(
          data['purchasedAt'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'AdaptyNonSubscriptionStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AdaptyNonSubscriptionStruct &&
        isConsumable == other.isConsumable &&
        isOneTime == other.isOneTime &&
        isRefund == other.isRefund &&
        isSandbox == other.isSandbox &&
        purchaseId == other.purchaseId &&
        store == other.store &&
        vendorProductId == other.vendorProductId &&
        vendorTransactionId == other.vendorTransactionId &&
        purchasedAt == other.purchasedAt;
  }

  @override
  int get hashCode => const ListEquality().hash([
        isConsumable,
        isOneTime,
        isRefund,
        isSandbox,
        purchaseId,
        store,
        vendorProductId,
        vendorTransactionId,
        purchasedAt
      ]);
}

AdaptyNonSubscriptionStruct createAdaptyNonSubscriptionStruct({
  bool? isConsumable,
  bool? isOneTime,
  bool? isRefund,
  bool? isSandbox,
  String? purchaseId,
  String? store,
  String? vendorProductId,
  String? vendorTransactionId,
  DateTime? purchasedAt,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AdaptyNonSubscriptionStruct(
      isConsumable: isConsumable,
      isOneTime: isOneTime,
      isRefund: isRefund,
      isSandbox: isSandbox,
      purchaseId: purchaseId,
      store: store,
      vendorProductId: vendorProductId,
      vendorTransactionId: vendorTransactionId,
      purchasedAt: purchasedAt,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AdaptyNonSubscriptionStruct? updateAdaptyNonSubscriptionStruct(
  AdaptyNonSubscriptionStruct? adaptyNonSubscription, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    adaptyNonSubscription
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAdaptyNonSubscriptionStructData(
  Map<String, dynamic> firestoreData,
  AdaptyNonSubscriptionStruct? adaptyNonSubscription,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (adaptyNonSubscription == null) {
    return;
  }
  if (adaptyNonSubscription.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue &&
      adaptyNonSubscription.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final adaptyNonSubscriptionData = getAdaptyNonSubscriptionFirestoreData(
      adaptyNonSubscription, forFieldValue);
  final nestedData =
      adaptyNonSubscriptionData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      adaptyNonSubscription.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAdaptyNonSubscriptionFirestoreData(
  AdaptyNonSubscriptionStruct? adaptyNonSubscription, [
  bool forFieldValue = false,
]) {
  if (adaptyNonSubscription == null) {
    return {};
  }
  final firestoreData = mapToFirestore(adaptyNonSubscription.toMap());

  // Add any Firestore field values
  adaptyNonSubscription.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAdaptyNonSubscriptionListFirestoreData(
  List<AdaptyNonSubscriptionStruct>? adaptyNonSubscriptions,
) =>
    adaptyNonSubscriptions
        ?.map((e) => getAdaptyNonSubscriptionFirestoreData(e, true))
        .toList() ??
    [];
