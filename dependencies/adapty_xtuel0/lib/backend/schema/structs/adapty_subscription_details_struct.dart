// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AdaptySubscriptionDetailsStruct extends FFFirebaseStruct {
  AdaptySubscriptionDetailsStruct({
    String? androidBasePlanId,
    AdaptyEligibilityEnum? androidIntroductoryOfferEligibility,
    String? androidOfferId,
    List<String>? androidOfferTags,
    List<AdaptySubscriptionPhaseStruct>? introductoryOffer,
    String? localizedSubscriptionPeriod,
    AdaptySubscriptionPhaseStruct? promotionalOffer,
    bool? promotionalOfferEligibility,
    String? promotionalOfferId,
    AdaptyRenewalTypeEnum? renewalType,
    String? subscriptionGroupIdentifier,
    AdaptySubscriptionPeriodStruct? subscriptionPeriod,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _androidBasePlanId = androidBasePlanId,
        _androidIntroductoryOfferEligibility =
            androidIntroductoryOfferEligibility,
        _androidOfferId = androidOfferId,
        _androidOfferTags = androidOfferTags,
        _introductoryOffer = introductoryOffer,
        _localizedSubscriptionPeriod = localizedSubscriptionPeriod,
        _promotionalOffer = promotionalOffer,
        _promotionalOfferEligibility = promotionalOfferEligibility,
        _promotionalOfferId = promotionalOfferId,
        _renewalType = renewalType,
        _subscriptionGroupIdentifier = subscriptionGroupIdentifier,
        _subscriptionPeriod = subscriptionPeriod,
        super(firestoreUtilData);

  // "androidBasePlanId" field.
  String? _androidBasePlanId;
  String get androidBasePlanId => _androidBasePlanId ?? '';
  set androidBasePlanId(String? val) => _androidBasePlanId = val;

  bool hasAndroidBasePlanId() => _androidBasePlanId != null;

  // "androidIntroductoryOfferEligibility" field.
  AdaptyEligibilityEnum? _androidIntroductoryOfferEligibility;
  AdaptyEligibilityEnum? get androidIntroductoryOfferEligibility =>
      _androidIntroductoryOfferEligibility;
  set androidIntroductoryOfferEligibility(AdaptyEligibilityEnum? val) =>
      _androidIntroductoryOfferEligibility = val;

  bool hasAndroidIntroductoryOfferEligibility() =>
      _androidIntroductoryOfferEligibility != null;

  // "androidOfferId" field.
  String? _androidOfferId;
  String get androidOfferId => _androidOfferId ?? '';
  set androidOfferId(String? val) => _androidOfferId = val;

  bool hasAndroidOfferId() => _androidOfferId != null;

  // "androidOfferTags" field.
  List<String>? _androidOfferTags;
  List<String> get androidOfferTags => _androidOfferTags ?? const [];
  set androidOfferTags(List<String>? val) => _androidOfferTags = val;

  void updateAndroidOfferTags(Function(List<String>) updateFn) {
    updateFn(_androidOfferTags ??= []);
  }

  bool hasAndroidOfferTags() => _androidOfferTags != null;

  // "introductoryOffer" field.
  List<AdaptySubscriptionPhaseStruct>? _introductoryOffer;
  List<AdaptySubscriptionPhaseStruct> get introductoryOffer =>
      _introductoryOffer ?? const [];
  set introductoryOffer(List<AdaptySubscriptionPhaseStruct>? val) =>
      _introductoryOffer = val;

  void updateIntroductoryOffer(
      Function(List<AdaptySubscriptionPhaseStruct>) updateFn) {
    updateFn(_introductoryOffer ??= []);
  }

  bool hasIntroductoryOffer() => _introductoryOffer != null;

  // "localizedSubscriptionPeriod" field.
  String? _localizedSubscriptionPeriod;
  String get localizedSubscriptionPeriod => _localizedSubscriptionPeriod ?? '';
  set localizedSubscriptionPeriod(String? val) =>
      _localizedSubscriptionPeriod = val;

  bool hasLocalizedSubscriptionPeriod() => _localizedSubscriptionPeriod != null;

  // "promotionalOffer" field.
  AdaptySubscriptionPhaseStruct? _promotionalOffer;
  AdaptySubscriptionPhaseStruct get promotionalOffer =>
      _promotionalOffer ?? AdaptySubscriptionPhaseStruct();
  set promotionalOffer(AdaptySubscriptionPhaseStruct? val) =>
      _promotionalOffer = val;

  void updatePromotionalOffer(
      Function(AdaptySubscriptionPhaseStruct) updateFn) {
    updateFn(_promotionalOffer ??= AdaptySubscriptionPhaseStruct());
  }

  bool hasPromotionalOffer() => _promotionalOffer != null;

  // "promotionalOfferEligibility" field.
  bool? _promotionalOfferEligibility;
  bool get promotionalOfferEligibility => _promotionalOfferEligibility ?? false;
  set promotionalOfferEligibility(bool? val) =>
      _promotionalOfferEligibility = val;

  bool hasPromotionalOfferEligibility() => _promotionalOfferEligibility != null;

  // "promotionalOfferId" field.
  String? _promotionalOfferId;
  String get promotionalOfferId => _promotionalOfferId ?? '';
  set promotionalOfferId(String? val) => _promotionalOfferId = val;

  bool hasPromotionalOfferId() => _promotionalOfferId != null;

  // "renewalType" field.
  AdaptyRenewalTypeEnum? _renewalType;
  AdaptyRenewalTypeEnum? get renewalType => _renewalType;
  set renewalType(AdaptyRenewalTypeEnum? val) => _renewalType = val;

  bool hasRenewalType() => _renewalType != null;

  // "subscriptionGroupIdentifier" field.
  String? _subscriptionGroupIdentifier;
  String get subscriptionGroupIdentifier => _subscriptionGroupIdentifier ?? '';
  set subscriptionGroupIdentifier(String? val) =>
      _subscriptionGroupIdentifier = val;

  bool hasSubscriptionGroupIdentifier() => _subscriptionGroupIdentifier != null;

  // "subscriptionPeriod" field.
  AdaptySubscriptionPeriodStruct? _subscriptionPeriod;
  AdaptySubscriptionPeriodStruct get subscriptionPeriod =>
      _subscriptionPeriod ?? AdaptySubscriptionPeriodStruct();
  set subscriptionPeriod(AdaptySubscriptionPeriodStruct? val) =>
      _subscriptionPeriod = val;

  void updateSubscriptionPeriod(
      Function(AdaptySubscriptionPeriodStruct) updateFn) {
    updateFn(_subscriptionPeriod ??= AdaptySubscriptionPeriodStruct());
  }

  bool hasSubscriptionPeriod() => _subscriptionPeriod != null;

  static AdaptySubscriptionDetailsStruct fromMap(Map<String, dynamic> data) =>
      AdaptySubscriptionDetailsStruct(
        androidBasePlanId: data['androidBasePlanId'] as String?,
        androidIntroductoryOfferEligibility:
            data['androidIntroductoryOfferEligibility'] is AdaptyEligibilityEnum
                ? data['androidIntroductoryOfferEligibility']
                : deserializeEnum<AdaptyEligibilityEnum>(
                    data['androidIntroductoryOfferEligibility']),
        androidOfferId: data['androidOfferId'] as String?,
        androidOfferTags: getDataList(data['androidOfferTags']),
        introductoryOffer: getStructList(
          data['introductoryOffer'],
          AdaptySubscriptionPhaseStruct.fromMap,
        ),
        localizedSubscriptionPeriod:
            data['localizedSubscriptionPeriod'] as String?,
        promotionalOffer:
            data['promotionalOffer'] is AdaptySubscriptionPhaseStruct
                ? data['promotionalOffer']
                : AdaptySubscriptionPhaseStruct.maybeFromMap(
                    data['promotionalOffer']),
        promotionalOfferEligibility:
            data['promotionalOfferEligibility'] as bool?,
        promotionalOfferId: data['promotionalOfferId'] as String?,
        renewalType: data['renewalType'] is AdaptyRenewalTypeEnum
            ? data['renewalType']
            : deserializeEnum<AdaptyRenewalTypeEnum>(data['renewalType']),
        subscriptionGroupIdentifier:
            data['subscriptionGroupIdentifier'] as String?,
        subscriptionPeriod:
            data['subscriptionPeriod'] is AdaptySubscriptionPeriodStruct
                ? data['subscriptionPeriod']
                : AdaptySubscriptionPeriodStruct.maybeFromMap(
                    data['subscriptionPeriod']),
      );

  static AdaptySubscriptionDetailsStruct? maybeFromMap(dynamic data) => data
          is Map
      ? AdaptySubscriptionDetailsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'androidBasePlanId': _androidBasePlanId,
        'androidIntroductoryOfferEligibility':
            _androidIntroductoryOfferEligibility?.serialize(),
        'androidOfferId': _androidOfferId,
        'androidOfferTags': _androidOfferTags,
        'introductoryOffer': _introductoryOffer?.map((e) => e.toMap()).toList(),
        'localizedSubscriptionPeriod': _localizedSubscriptionPeriod,
        'promotionalOffer': _promotionalOffer?.toMap(),
        'promotionalOfferEligibility': _promotionalOfferEligibility,
        'promotionalOfferId': _promotionalOfferId,
        'renewalType': _renewalType?.serialize(),
        'subscriptionGroupIdentifier': _subscriptionGroupIdentifier,
        'subscriptionPeriod': _subscriptionPeriod?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'androidBasePlanId': serializeParam(
          _androidBasePlanId,
          ParamType.String,
        ),
        'androidIntroductoryOfferEligibility': serializeParam(
          _androidIntroductoryOfferEligibility,
          ParamType.Enum,
        ),
        'androidOfferId': serializeParam(
          _androidOfferId,
          ParamType.String,
        ),
        'androidOfferTags': serializeParam(
          _androidOfferTags,
          ParamType.String,
          isList: true,
        ),
        'introductoryOffer': serializeParam(
          _introductoryOffer,
          ParamType.DataStruct,
          isList: true,
        ),
        'localizedSubscriptionPeriod': serializeParam(
          _localizedSubscriptionPeriod,
          ParamType.String,
        ),
        'promotionalOffer': serializeParam(
          _promotionalOffer,
          ParamType.DataStruct,
        ),
        'promotionalOfferEligibility': serializeParam(
          _promotionalOfferEligibility,
          ParamType.bool,
        ),
        'promotionalOfferId': serializeParam(
          _promotionalOfferId,
          ParamType.String,
        ),
        'renewalType': serializeParam(
          _renewalType,
          ParamType.Enum,
        ),
        'subscriptionGroupIdentifier': serializeParam(
          _subscriptionGroupIdentifier,
          ParamType.String,
        ),
        'subscriptionPeriod': serializeParam(
          _subscriptionPeriod,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static AdaptySubscriptionDetailsStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      AdaptySubscriptionDetailsStruct(
        androidBasePlanId: deserializeParam(
          data['androidBasePlanId'],
          ParamType.String,
          false,
        ),
        androidIntroductoryOfferEligibility:
            deserializeParam<AdaptyEligibilityEnum>(
          data['androidIntroductoryOfferEligibility'],
          ParamType.Enum,
          false,
        ),
        androidOfferId: deserializeParam(
          data['androidOfferId'],
          ParamType.String,
          false,
        ),
        androidOfferTags: deserializeParam<String>(
          data['androidOfferTags'],
          ParamType.String,
          true,
        ),
        introductoryOffer:
            deserializeStructParam<AdaptySubscriptionPhaseStruct>(
          data['introductoryOffer'],
          ParamType.DataStruct,
          true,
          structBuilder: AdaptySubscriptionPhaseStruct.fromSerializableMap,
        ),
        localizedSubscriptionPeriod: deserializeParam(
          data['localizedSubscriptionPeriod'],
          ParamType.String,
          false,
        ),
        promotionalOffer: deserializeStructParam(
          data['promotionalOffer'],
          ParamType.DataStruct,
          false,
          structBuilder: AdaptySubscriptionPhaseStruct.fromSerializableMap,
        ),
        promotionalOfferEligibility: deserializeParam(
          data['promotionalOfferEligibility'],
          ParamType.bool,
          false,
        ),
        promotionalOfferId: deserializeParam(
          data['promotionalOfferId'],
          ParamType.String,
          false,
        ),
        renewalType: deserializeParam<AdaptyRenewalTypeEnum>(
          data['renewalType'],
          ParamType.Enum,
          false,
        ),
        subscriptionGroupIdentifier: deserializeParam(
          data['subscriptionGroupIdentifier'],
          ParamType.String,
          false,
        ),
        subscriptionPeriod: deserializeStructParam(
          data['subscriptionPeriod'],
          ParamType.DataStruct,
          false,
          structBuilder: AdaptySubscriptionPeriodStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'AdaptySubscriptionDetailsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is AdaptySubscriptionDetailsStruct &&
        androidBasePlanId == other.androidBasePlanId &&
        androidIntroductoryOfferEligibility ==
            other.androidIntroductoryOfferEligibility &&
        androidOfferId == other.androidOfferId &&
        listEquality.equals(androidOfferTags, other.androidOfferTags) &&
        listEquality.equals(introductoryOffer, other.introductoryOffer) &&
        localizedSubscriptionPeriod == other.localizedSubscriptionPeriod &&
        promotionalOffer == other.promotionalOffer &&
        promotionalOfferEligibility == other.promotionalOfferEligibility &&
        promotionalOfferId == other.promotionalOfferId &&
        renewalType == other.renewalType &&
        subscriptionGroupIdentifier == other.subscriptionGroupIdentifier &&
        subscriptionPeriod == other.subscriptionPeriod;
  }

  @override
  int get hashCode => const ListEquality().hash([
        androidBasePlanId,
        androidIntroductoryOfferEligibility,
        androidOfferId,
        androidOfferTags,
        introductoryOffer,
        localizedSubscriptionPeriod,
        promotionalOffer,
        promotionalOfferEligibility,
        promotionalOfferId,
        renewalType,
        subscriptionGroupIdentifier,
        subscriptionPeriod
      ]);
}

AdaptySubscriptionDetailsStruct createAdaptySubscriptionDetailsStruct({
  String? androidBasePlanId,
  AdaptyEligibilityEnum? androidIntroductoryOfferEligibility,
  String? androidOfferId,
  String? localizedSubscriptionPeriod,
  AdaptySubscriptionPhaseStruct? promotionalOffer,
  bool? promotionalOfferEligibility,
  String? promotionalOfferId,
  AdaptyRenewalTypeEnum? renewalType,
  String? subscriptionGroupIdentifier,
  AdaptySubscriptionPeriodStruct? subscriptionPeriod,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AdaptySubscriptionDetailsStruct(
      androidBasePlanId: androidBasePlanId,
      androidIntroductoryOfferEligibility: androidIntroductoryOfferEligibility,
      androidOfferId: androidOfferId,
      localizedSubscriptionPeriod: localizedSubscriptionPeriod,
      promotionalOffer: promotionalOffer ??
          (clearUnsetFields ? AdaptySubscriptionPhaseStruct() : null),
      promotionalOfferEligibility: promotionalOfferEligibility,
      promotionalOfferId: promotionalOfferId,
      renewalType: renewalType,
      subscriptionGroupIdentifier: subscriptionGroupIdentifier,
      subscriptionPeriod: subscriptionPeriod ??
          (clearUnsetFields ? AdaptySubscriptionPeriodStruct() : null),
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AdaptySubscriptionDetailsStruct? updateAdaptySubscriptionDetailsStruct(
  AdaptySubscriptionDetailsStruct? adaptySubscriptionDetails, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    adaptySubscriptionDetails
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAdaptySubscriptionDetailsStructData(
  Map<String, dynamic> firestoreData,
  AdaptySubscriptionDetailsStruct? adaptySubscriptionDetails,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (adaptySubscriptionDetails == null) {
    return;
  }
  if (adaptySubscriptionDetails.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue &&
      adaptySubscriptionDetails.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final adaptySubscriptionDetailsData =
      getAdaptySubscriptionDetailsFirestoreData(
          adaptySubscriptionDetails, forFieldValue);
  final nestedData =
      adaptySubscriptionDetailsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      adaptySubscriptionDetails.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAdaptySubscriptionDetailsFirestoreData(
  AdaptySubscriptionDetailsStruct? adaptySubscriptionDetails, [
  bool forFieldValue = false,
]) {
  if (adaptySubscriptionDetails == null) {
    return {};
  }
  final firestoreData = mapToFirestore(adaptySubscriptionDetails.toMap());

  // Handle nested data for "promotionalOffer" field.
  addAdaptySubscriptionPhaseStructData(
    firestoreData,
    adaptySubscriptionDetails.hasPromotionalOffer()
        ? adaptySubscriptionDetails.promotionalOffer
        : null,
    'promotionalOffer',
    forFieldValue,
  );

  // Handle nested data for "subscriptionPeriod" field.
  addAdaptySubscriptionPeriodStructData(
    firestoreData,
    adaptySubscriptionDetails.hasSubscriptionPeriod()
        ? adaptySubscriptionDetails.subscriptionPeriod
        : null,
    'subscriptionPeriod',
    forFieldValue,
  );

  // Add any Firestore field values
  adaptySubscriptionDetails.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAdaptySubscriptionDetailsListFirestoreData(
  List<AdaptySubscriptionDetailsStruct>? adaptySubscriptionDetailss,
) =>
    adaptySubscriptionDetailss
        ?.map((e) => getAdaptySubscriptionDetailsFirestoreData(e, true))
        .toList() ??
    [];
