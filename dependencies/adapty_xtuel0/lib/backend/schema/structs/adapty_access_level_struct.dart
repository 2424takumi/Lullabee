// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AdaptyAccessLevelStruct extends FFFirebaseStruct {
  AdaptyAccessLevelStruct({
    DateTime? activatedAt,
    String? activeIntroductoryOfferType,
    String? activePromotionalOfferId,
    String? activePromotionalOfferType,
    DateTime? billingIssueDetectedAt,
    String? cancellationReason,
    DateTime? expiresAt,
    String? id,
    bool? isActive,
    bool? isInGracePeriod,
    bool? isLifetime,
    bool? isRefund,
    String? offerId,
    DateTime? renewedAt,
    DateTime? startsAt,
    String? store,
    DateTime? unsubscribedAt,
    String? vendorProductId,
    bool? willRenew,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _activatedAt = activatedAt,
        _activeIntroductoryOfferType = activeIntroductoryOfferType,
        _activePromotionalOfferId = activePromotionalOfferId,
        _activePromotionalOfferType = activePromotionalOfferType,
        _billingIssueDetectedAt = billingIssueDetectedAt,
        _cancellationReason = cancellationReason,
        _expiresAt = expiresAt,
        _id = id,
        _isActive = isActive,
        _isInGracePeriod = isInGracePeriod,
        _isLifetime = isLifetime,
        _isRefund = isRefund,
        _offerId = offerId,
        _renewedAt = renewedAt,
        _startsAt = startsAt,
        _store = store,
        _unsubscribedAt = unsubscribedAt,
        _vendorProductId = vendorProductId,
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

  // "billingIssueDetectedAt" field.
  DateTime? _billingIssueDetectedAt;
  DateTime? get billingIssueDetectedAt => _billingIssueDetectedAt;
  set billingIssueDetectedAt(DateTime? val) => _billingIssueDetectedAt = val;

  bool hasBillingIssueDetectedAt() => _billingIssueDetectedAt != null;

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

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

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

  // "offerId" field.
  String? _offerId;
  String get offerId => _offerId ?? '';
  set offerId(String? val) => _offerId = val;

  bool hasOfferId() => _offerId != null;

  // "renewedAt" field.
  DateTime? _renewedAt;
  DateTime? get renewedAt => _renewedAt;
  set renewedAt(DateTime? val) => _renewedAt = val;

  bool hasRenewedAt() => _renewedAt != null;

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

  // "unsubscribedAt" field.
  DateTime? _unsubscribedAt;
  DateTime? get unsubscribedAt => _unsubscribedAt;
  set unsubscribedAt(DateTime? val) => _unsubscribedAt = val;

  bool hasUnsubscribedAt() => _unsubscribedAt != null;

  // "vendorProductId" field.
  String? _vendorProductId;
  String get vendorProductId => _vendorProductId ?? '';
  set vendorProductId(String? val) => _vendorProductId = val;

  bool hasVendorProductId() => _vendorProductId != null;

  // "willRenew" field.
  bool? _willRenew;
  bool get willRenew => _willRenew ?? false;
  set willRenew(bool? val) => _willRenew = val;

  bool hasWillRenew() => _willRenew != null;

  static AdaptyAccessLevelStruct fromMap(Map<String, dynamic> data) =>
      AdaptyAccessLevelStruct(
        activatedAt: data['activatedAt'] as DateTime?,
        activeIntroductoryOfferType:
            data['activeIntroductoryOfferType'] as String?,
        activePromotionalOfferId: data['activePromotionalOfferId'] as String?,
        activePromotionalOfferType:
            data['activePromotionalOfferType'] as String?,
        billingIssueDetectedAt: data['billingIssueDetectedAt'] as DateTime?,
        cancellationReason: data['cancellationReason'] as String?,
        expiresAt: data['expiresAt'] as DateTime?,
        id: data['id'] as String?,
        isActive: data['isActive'] as bool?,
        isInGracePeriod: data['isInGracePeriod'] as bool?,
        isLifetime: data['isLifetime'] as bool?,
        isRefund: data['isRefund'] as bool?,
        offerId: data['offerId'] as String?,
        renewedAt: data['renewedAt'] as DateTime?,
        startsAt: data['startsAt'] as DateTime?,
        store: data['store'] as String?,
        unsubscribedAt: data['unsubscribedAt'] as DateTime?,
        vendorProductId: data['vendorProductId'] as String?,
        willRenew: data['willRenew'] as bool?,
      );

  static AdaptyAccessLevelStruct? maybeFromMap(dynamic data) => data is Map
      ? AdaptyAccessLevelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'activatedAt': _activatedAt,
        'activeIntroductoryOfferType': _activeIntroductoryOfferType,
        'activePromotionalOfferId': _activePromotionalOfferId,
        'activePromotionalOfferType': _activePromotionalOfferType,
        'billingIssueDetectedAt': _billingIssueDetectedAt,
        'cancellationReason': _cancellationReason,
        'expiresAt': _expiresAt,
        'id': _id,
        'isActive': _isActive,
        'isInGracePeriod': _isInGracePeriod,
        'isLifetime': _isLifetime,
        'isRefund': _isRefund,
        'offerId': _offerId,
        'renewedAt': _renewedAt,
        'startsAt': _startsAt,
        'store': _store,
        'unsubscribedAt': _unsubscribedAt,
        'vendorProductId': _vendorProductId,
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
        'billingIssueDetectedAt': serializeParam(
          _billingIssueDetectedAt,
          ParamType.DateTime,
        ),
        'cancellationReason': serializeParam(
          _cancellationReason,
          ParamType.String,
        ),
        'expiresAt': serializeParam(
          _expiresAt,
          ParamType.DateTime,
        ),
        'id': serializeParam(
          _id,
          ParamType.String,
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
        'offerId': serializeParam(
          _offerId,
          ParamType.String,
        ),
        'renewedAt': serializeParam(
          _renewedAt,
          ParamType.DateTime,
        ),
        'startsAt': serializeParam(
          _startsAt,
          ParamType.DateTime,
        ),
        'store': serializeParam(
          _store,
          ParamType.String,
        ),
        'unsubscribedAt': serializeParam(
          _unsubscribedAt,
          ParamType.DateTime,
        ),
        'vendorProductId': serializeParam(
          _vendorProductId,
          ParamType.String,
        ),
        'willRenew': serializeParam(
          _willRenew,
          ParamType.bool,
        ),
      }.withoutNulls;

  static AdaptyAccessLevelStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      AdaptyAccessLevelStruct(
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
        billingIssueDetectedAt: deserializeParam(
          data['billingIssueDetectedAt'],
          ParamType.DateTime,
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
        id: deserializeParam(
          data['id'],
          ParamType.String,
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
        offerId: deserializeParam(
          data['offerId'],
          ParamType.String,
          false,
        ),
        renewedAt: deserializeParam(
          data['renewedAt'],
          ParamType.DateTime,
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
        unsubscribedAt: deserializeParam(
          data['unsubscribedAt'],
          ParamType.DateTime,
          false,
        ),
        vendorProductId: deserializeParam(
          data['vendorProductId'],
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
  String toString() => 'AdaptyAccessLevelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AdaptyAccessLevelStruct &&
        activatedAt == other.activatedAt &&
        activeIntroductoryOfferType == other.activeIntroductoryOfferType &&
        activePromotionalOfferId == other.activePromotionalOfferId &&
        activePromotionalOfferType == other.activePromotionalOfferType &&
        billingIssueDetectedAt == other.billingIssueDetectedAt &&
        cancellationReason == other.cancellationReason &&
        expiresAt == other.expiresAt &&
        id == other.id &&
        isActive == other.isActive &&
        isInGracePeriod == other.isInGracePeriod &&
        isLifetime == other.isLifetime &&
        isRefund == other.isRefund &&
        offerId == other.offerId &&
        renewedAt == other.renewedAt &&
        startsAt == other.startsAt &&
        store == other.store &&
        unsubscribedAt == other.unsubscribedAt &&
        vendorProductId == other.vendorProductId &&
        willRenew == other.willRenew;
  }

  @override
  int get hashCode => const ListEquality().hash([
        activatedAt,
        activeIntroductoryOfferType,
        activePromotionalOfferId,
        activePromotionalOfferType,
        billingIssueDetectedAt,
        cancellationReason,
        expiresAt,
        id,
        isActive,
        isInGracePeriod,
        isLifetime,
        isRefund,
        offerId,
        renewedAt,
        startsAt,
        store,
        unsubscribedAt,
        vendorProductId,
        willRenew
      ]);
}

AdaptyAccessLevelStruct createAdaptyAccessLevelStruct({
  DateTime? activatedAt,
  String? activeIntroductoryOfferType,
  String? activePromotionalOfferId,
  String? activePromotionalOfferType,
  DateTime? billingIssueDetectedAt,
  String? cancellationReason,
  DateTime? expiresAt,
  String? id,
  bool? isActive,
  bool? isInGracePeriod,
  bool? isLifetime,
  bool? isRefund,
  String? offerId,
  DateTime? renewedAt,
  DateTime? startsAt,
  String? store,
  DateTime? unsubscribedAt,
  String? vendorProductId,
  bool? willRenew,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AdaptyAccessLevelStruct(
      activatedAt: activatedAt,
      activeIntroductoryOfferType: activeIntroductoryOfferType,
      activePromotionalOfferId: activePromotionalOfferId,
      activePromotionalOfferType: activePromotionalOfferType,
      billingIssueDetectedAt: billingIssueDetectedAt,
      cancellationReason: cancellationReason,
      expiresAt: expiresAt,
      id: id,
      isActive: isActive,
      isInGracePeriod: isInGracePeriod,
      isLifetime: isLifetime,
      isRefund: isRefund,
      offerId: offerId,
      renewedAt: renewedAt,
      startsAt: startsAt,
      store: store,
      unsubscribedAt: unsubscribedAt,
      vendorProductId: vendorProductId,
      willRenew: willRenew,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AdaptyAccessLevelStruct? updateAdaptyAccessLevelStruct(
  AdaptyAccessLevelStruct? adaptyAccessLevel, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    adaptyAccessLevel
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAdaptyAccessLevelStructData(
  Map<String, dynamic> firestoreData,
  AdaptyAccessLevelStruct? adaptyAccessLevel,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (adaptyAccessLevel == null) {
    return;
  }
  if (adaptyAccessLevel.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && adaptyAccessLevel.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final adaptyAccessLevelData =
      getAdaptyAccessLevelFirestoreData(adaptyAccessLevel, forFieldValue);
  final nestedData =
      adaptyAccessLevelData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = adaptyAccessLevel.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAdaptyAccessLevelFirestoreData(
  AdaptyAccessLevelStruct? adaptyAccessLevel, [
  bool forFieldValue = false,
]) {
  if (adaptyAccessLevel == null) {
    return {};
  }
  final firestoreData = mapToFirestore(adaptyAccessLevel.toMap());

  // Add any Firestore field values
  adaptyAccessLevel.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAdaptyAccessLevelListFirestoreData(
  List<AdaptyAccessLevelStruct>? adaptyAccessLevels,
) =>
    adaptyAccessLevels
        ?.map((e) => getAdaptyAccessLevelFirestoreData(e, true))
        .toList() ??
    [];
