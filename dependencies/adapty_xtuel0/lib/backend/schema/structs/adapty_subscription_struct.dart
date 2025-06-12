// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AdaptySubscriptionStruct extends FFFirebaseStruct {
  AdaptySubscriptionStruct({
    DateTime? activatedAt,
    String? activeIntroductoryOfferType,
    String? activePromotionalOfferId,
    String? activePromotionalOfferType,
    String? cancellationReason,
    DateTime? expiresAt,
    DateTime? renewedAt,
    DateTime? unsubscribedAt,
    DateTime? billingIssueDetectedAt,
    bool? isActive,
    bool? isInGracePeriod,
    bool? isLifetime,
    bool? isRefund,
    bool? isSandbox,
    String? offerId,
    DateTime? startsAt,
    String? store,
    String? vendorOriginalTransactionId,
    String? vendorProductId,
    String? vendorTransactionId,
    bool? willRenew,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _activatedAt = activatedAt,
        _activeIntroductoryOfferType = activeIntroductoryOfferType,
        _activePromotionalOfferId = activePromotionalOfferId,
        _activePromotionalOfferType = activePromotionalOfferType,
        _cancellationReason = cancellationReason,
        _expiresAt = expiresAt,
        _renewedAt = renewedAt,
        _unsubscribedAt = unsubscribedAt,
        _billingIssueDetectedAt = billingIssueDetectedAt,
        _isActive = isActive,
        _isInGracePeriod = isInGracePeriod,
        _isLifetime = isLifetime,
        _isRefund = isRefund,
        _isSandbox = isSandbox,
        _offerId = offerId,
        _startsAt = startsAt,
        _store = store,
        _vendorOriginalTransactionId = vendorOriginalTransactionId,
        _vendorProductId = vendorProductId,
        _vendorTransactionId = vendorTransactionId,
        _willRenew = willRenew,
        super(firestoreUtilData);

  // "activatedAt" field.
  DateTime? _activatedAt;
  DateTime? get activatedAt => _activatedAt;
  set activatedAt(DateTime? val) => _activatedAt = val;

  bool hasActivatedAt() => _activatedAt != null;

  // "activeIntroductoryOfferType" field.
  String? _activeIntroductoryOfferType;
  String get activeIntroductoryOfferType => _activeIntroductoryOfferType ?? '';
  set activeIntroductoryOfferType(String? val) =>
      _activeIntroductoryOfferType = val;

  bool hasActiveIntroductoryOfferType() => _activeIntroductoryOfferType != null;

  // "activePromotionalOfferId" field.
  String? _activePromotionalOfferId;
  String get activePromotionalOfferId => _activePromotionalOfferId ?? '';
  set activePromotionalOfferId(String? val) => _activePromotionalOfferId = val;

  bool hasActivePromotionalOfferId() => _activePromotionalOfferId != null;

  // "activePromotionalOfferType" field.
  String? _activePromotionalOfferType;
  String get activePromotionalOfferType => _activePromotionalOfferType ?? '';
  set activePromotionalOfferType(String? val) =>
      _activePromotionalOfferType = val;

  bool hasActivePromotionalOfferType() => _activePromotionalOfferType != null;

  // "cancellationReason" field.
  String? _cancellationReason;
  String get cancellationReason => _cancellationReason ?? '';
  set cancellationReason(String? val) => _cancellationReason = val;

  bool hasCancellationReason() => _cancellationReason != null;

  // "expiresAt" field.
  DateTime? _expiresAt;
  DateTime? get expiresAt => _expiresAt;
  set expiresAt(DateTime? val) => _expiresAt = val;

  bool hasExpiresAt() => _expiresAt != null;

  // "renewedAt" field.
  DateTime? _renewedAt;
  DateTime? get renewedAt => _renewedAt;
  set renewedAt(DateTime? val) => _renewedAt = val;

  bool hasRenewedAt() => _renewedAt != null;

  // "unsubscribedAt" field.
  DateTime? _unsubscribedAt;
  DateTime? get unsubscribedAt => _unsubscribedAt;
  set unsubscribedAt(DateTime? val) => _unsubscribedAt = val;

  bool hasUnsubscribedAt() => _unsubscribedAt != null;

  // "billingIssueDetectedAt" field.
  DateTime? _billingIssueDetectedAt;
  DateTime? get billingIssueDetectedAt => _billingIssueDetectedAt;
  set billingIssueDetectedAt(DateTime? val) => _billingIssueDetectedAt = val;

  bool hasBillingIssueDetectedAt() => _billingIssueDetectedAt != null;

  // "isActive" field.
  bool? _isActive;
  bool get isActive => _isActive ?? false;
  set isActive(bool? val) => _isActive = val;

  bool hasIsActive() => _isActive != null;

  // "isInGracePeriod" field.
  bool? _isInGracePeriod;
  bool get isInGracePeriod => _isInGracePeriod ?? false;
  set isInGracePeriod(bool? val) => _isInGracePeriod = val;

  bool hasIsInGracePeriod() => _isInGracePeriod != null;

  // "isLifetime" field.
  bool? _isLifetime;
  bool get isLifetime => _isLifetime ?? false;
  set isLifetime(bool? val) => _isLifetime = val;

  bool hasIsLifetime() => _isLifetime != null;

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

  // "offerId" field.
  String? _offerId;
  String get offerId => _offerId ?? '';
  set offerId(String? val) => _offerId = val;

  bool hasOfferId() => _offerId != null;

  // "startsAt" field.
  DateTime? _startsAt;
  DateTime? get startsAt => _startsAt;
  set startsAt(DateTime? val) => _startsAt = val;

  bool hasStartsAt() => _startsAt != null;

  // "store" field.
  String? _store;
  String get store => _store ?? '';
  set store(String? val) => _store = val;

  bool hasStore() => _store != null;

  // "vendorOriginalTransactionId" field.
  String? _vendorOriginalTransactionId;
  String get vendorOriginalTransactionId => _vendorOriginalTransactionId ?? '';
  set vendorOriginalTransactionId(String? val) =>
      _vendorOriginalTransactionId = val;

  bool hasVendorOriginalTransactionId() => _vendorOriginalTransactionId != null;

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

  // "willRenew" field.
  bool? _willRenew;
  bool get willRenew => _willRenew ?? false;
  set willRenew(bool? val) => _willRenew = val;

  bool hasWillRenew() => _willRenew != null;

  static AdaptySubscriptionStruct fromMap(Map<String, dynamic> data) =>
      AdaptySubscriptionStruct(
        activatedAt: data['activatedAt'] as DateTime?,
        activeIntroductoryOfferType:
            data['activeIntroductoryOfferType'] as String?,
        activePromotionalOfferId: data['activePromotionalOfferId'] as String?,
        activePromotionalOfferType:
            data['activePromotionalOfferType'] as String?,
        cancellationReason: data['cancellationReason'] as String?,
        expiresAt: data['expiresAt'] as DateTime?,
        renewedAt: data['renewedAt'] as DateTime?,
        unsubscribedAt: data['unsubscribedAt'] as DateTime?,
        billingIssueDetectedAt: data['billingIssueDetectedAt'] as DateTime?,
        isActive: data['isActive'] as bool?,
        isInGracePeriod: data['isInGracePeriod'] as bool?,
        isLifetime: data['isLifetime'] as bool?,
        isRefund: data['isRefund'] as bool?,
        isSandbox: data['isSandbox'] as bool?,
        offerId: data['offerId'] as String?,
        startsAt: data['startsAt'] as DateTime?,
        store: data['store'] as String?,
        vendorOriginalTransactionId:
            data['vendorOriginalTransactionId'] as String?,
        vendorProductId: data['vendorProductId'] as String?,
        vendorTransactionId: data['vendorTransactionId'] as String?,
        willRenew: data['willRenew'] as bool?,
      );

  static AdaptySubscriptionStruct? maybeFromMap(dynamic data) => data is Map
      ? AdaptySubscriptionStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'activatedAt': _activatedAt,
        'activeIntroductoryOfferType': _activeIntroductoryOfferType,
        'activePromotionalOfferId': _activePromotionalOfferId,
        'activePromotionalOfferType': _activePromotionalOfferType,
        'cancellationReason': _cancellationReason,
        'expiresAt': _expiresAt,
        'renewedAt': _renewedAt,
        'unsubscribedAt': _unsubscribedAt,
        'billingIssueDetectedAt': _billingIssueDetectedAt,
        'isActive': _isActive,
        'isInGracePeriod': _isInGracePeriod,
        'isLifetime': _isLifetime,
        'isRefund': _isRefund,
        'isSandbox': _isSandbox,
        'offerId': _offerId,
        'startsAt': _startsAt,
        'store': _store,
        'vendorOriginalTransactionId': _vendorOriginalTransactionId,
        'vendorProductId': _vendorProductId,
        'vendorTransactionId': _vendorTransactionId,
        'willRenew': _willRenew,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'activatedAt': serializeParam(
          _activatedAt,
          ParamType.DateTime,
        ),
        'activeIntroductoryOfferType': serializeParam(
          _activeIntroductoryOfferType,
          ParamType.String,
        ),
        'activePromotionalOfferId': serializeParam(
          _activePromotionalOfferId,
          ParamType.String,
        ),
        'activePromotionalOfferType': serializeParam(
          _activePromotionalOfferType,
          ParamType.String,
        ),
        'cancellationReason': serializeParam(
          _cancellationReason,
          ParamType.String,
        ),
        'expiresAt': serializeParam(
          _expiresAt,
          ParamType.DateTime,
        ),
        'renewedAt': serializeParam(
          _renewedAt,
          ParamType.DateTime,
        ),
        'unsubscribedAt': serializeParam(
          _unsubscribedAt,
          ParamType.DateTime,
        ),
        'billingIssueDetectedAt': serializeParam(
          _billingIssueDetectedAt,
          ParamType.DateTime,
        ),
        'isActive': serializeParam(
          _isActive,
          ParamType.bool,
        ),
        'isInGracePeriod': serializeParam(
          _isInGracePeriod,
          ParamType.bool,
        ),
        'isLifetime': serializeParam(
          _isLifetime,
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
        'offerId': serializeParam(
          _offerId,
          ParamType.String,
        ),
        'startsAt': serializeParam(
          _startsAt,
          ParamType.DateTime,
        ),
        'store': serializeParam(
          _store,
          ParamType.String,
        ),
        'vendorOriginalTransactionId': serializeParam(
          _vendorOriginalTransactionId,
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
        'willRenew': serializeParam(
          _willRenew,
          ParamType.bool,
        ),
      }.withoutNulls;

  static AdaptySubscriptionStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      AdaptySubscriptionStruct(
        activatedAt: deserializeParam(
          data['activatedAt'],
          ParamType.DateTime,
          false,
        ),
        activeIntroductoryOfferType: deserializeParam(
          data['activeIntroductoryOfferType'],
          ParamType.String,
          false,
        ),
        activePromotionalOfferId: deserializeParam(
          data['activePromotionalOfferId'],
          ParamType.String,
          false,
        ),
        activePromotionalOfferType: deserializeParam(
          data['activePromotionalOfferType'],
          ParamType.String,
          false,
        ),
        cancellationReason: deserializeParam(
          data['cancellationReason'],
          ParamType.String,
          false,
        ),
        expiresAt: deserializeParam(
          data['expiresAt'],
          ParamType.DateTime,
          false,
        ),
        renewedAt: deserializeParam(
          data['renewedAt'],
          ParamType.DateTime,
          false,
        ),
        unsubscribedAt: deserializeParam(
          data['unsubscribedAt'],
          ParamType.DateTime,
          false,
        ),
        billingIssueDetectedAt: deserializeParam(
          data['billingIssueDetectedAt'],
          ParamType.DateTime,
          false,
        ),
        isActive: deserializeParam(
          data['isActive'],
          ParamType.bool,
          false,
        ),
        isInGracePeriod: deserializeParam(
          data['isInGracePeriod'],
          ParamType.bool,
          false,
        ),
        isLifetime: deserializeParam(
          data['isLifetime'],
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
        offerId: deserializeParam(
          data['offerId'],
          ParamType.String,
          false,
        ),
        startsAt: deserializeParam(
          data['startsAt'],
          ParamType.DateTime,
          false,
        ),
        store: deserializeParam(
          data['store'],
          ParamType.String,
          false,
        ),
        vendorOriginalTransactionId: deserializeParam(
          data['vendorOriginalTransactionId'],
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
        willRenew: deserializeParam(
          data['willRenew'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'AdaptySubscriptionStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AdaptySubscriptionStruct &&
        activatedAt == other.activatedAt &&
        activeIntroductoryOfferType == other.activeIntroductoryOfferType &&
        activePromotionalOfferId == other.activePromotionalOfferId &&
        activePromotionalOfferType == other.activePromotionalOfferType &&
        cancellationReason == other.cancellationReason &&
        expiresAt == other.expiresAt &&
        renewedAt == other.renewedAt &&
        unsubscribedAt == other.unsubscribedAt &&
        billingIssueDetectedAt == other.billingIssueDetectedAt &&
        isActive == other.isActive &&
        isInGracePeriod == other.isInGracePeriod &&
        isLifetime == other.isLifetime &&
        isRefund == other.isRefund &&
        isSandbox == other.isSandbox &&
        offerId == other.offerId &&
        startsAt == other.startsAt &&
        store == other.store &&
        vendorOriginalTransactionId == other.vendorOriginalTransactionId &&
        vendorProductId == other.vendorProductId &&
        vendorTransactionId == other.vendorTransactionId &&
        willRenew == other.willRenew;
  }

  @override
  int get hashCode => const ListEquality().hash([
        activatedAt,
        activeIntroductoryOfferType,
        activePromotionalOfferId,
        activePromotionalOfferType,
        cancellationReason,
        expiresAt,
        renewedAt,
        unsubscribedAt,
        billingIssueDetectedAt,
        isActive,
        isInGracePeriod,
        isLifetime,
        isRefund,
        isSandbox,
        offerId,
        startsAt,
        store,
        vendorOriginalTransactionId,
        vendorProductId,
        vendorTransactionId,
        willRenew
      ]);
}

AdaptySubscriptionStruct createAdaptySubscriptionStruct({
  DateTime? activatedAt,
  String? activeIntroductoryOfferType,
  String? activePromotionalOfferId,
  String? activePromotionalOfferType,
  String? cancellationReason,
  DateTime? expiresAt,
  DateTime? renewedAt,
  DateTime? unsubscribedAt,
  DateTime? billingIssueDetectedAt,
  bool? isActive,
  bool? isInGracePeriod,
  bool? isLifetime,
  bool? isRefund,
  bool? isSandbox,
  String? offerId,
  DateTime? startsAt,
  String? store,
  String? vendorOriginalTransactionId,
  String? vendorProductId,
  String? vendorTransactionId,
  bool? willRenew,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AdaptySubscriptionStruct(
      activatedAt: activatedAt,
      activeIntroductoryOfferType: activeIntroductoryOfferType,
      activePromotionalOfferId: activePromotionalOfferId,
      activePromotionalOfferType: activePromotionalOfferType,
      cancellationReason: cancellationReason,
      expiresAt: expiresAt,
      renewedAt: renewedAt,
      unsubscribedAt: unsubscribedAt,
      billingIssueDetectedAt: billingIssueDetectedAt,
      isActive: isActive,
      isInGracePeriod: isInGracePeriod,
      isLifetime: isLifetime,
      isRefund: isRefund,
      isSandbox: isSandbox,
      offerId: offerId,
      startsAt: startsAt,
      store: store,
      vendorOriginalTransactionId: vendorOriginalTransactionId,
      vendorProductId: vendorProductId,
      vendorTransactionId: vendorTransactionId,
      willRenew: willRenew,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AdaptySubscriptionStruct? updateAdaptySubscriptionStruct(
  AdaptySubscriptionStruct? adaptySubscription, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    adaptySubscription
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAdaptySubscriptionStructData(
  Map<String, dynamic> firestoreData,
  AdaptySubscriptionStruct? adaptySubscription,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (adaptySubscription == null) {
    return;
  }
  if (adaptySubscription.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && adaptySubscription.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final adaptySubscriptionData =
      getAdaptySubscriptionFirestoreData(adaptySubscription, forFieldValue);
  final nestedData =
      adaptySubscriptionData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      adaptySubscription.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAdaptySubscriptionFirestoreData(
  AdaptySubscriptionStruct? adaptySubscription, [
  bool forFieldValue = false,
]) {
  if (adaptySubscription == null) {
    return {};
  }
  final firestoreData = mapToFirestore(adaptySubscription.toMap());

  // Add any Firestore field values
  adaptySubscription.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAdaptySubscriptionListFirestoreData(
  List<AdaptySubscriptionStruct>? adaptySubscriptions,
) =>
    adaptySubscriptions
        ?.map((e) => getAdaptySubscriptionFirestoreData(e, true))
        .toList() ??
    [];
