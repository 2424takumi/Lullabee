// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AdaptyPaywallProductStruct extends FFFirebaseStruct {
  AdaptyPaywallProductStruct({
    String? vendorProductId,
    String? localizedDescription,
    String? localizedTitle,
    String? regionCode,
    bool? isFamilyShareable,
    String? paywallVariationId,
    String? paywallABTestName,
    String? paywallName,
    AdaptyPriceStruct? price,
    AdaptySubscriptionDetailsStruct? subscriptionDetails,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _vendorProductId = vendorProductId,
        _localizedDescription = localizedDescription,
        _localizedTitle = localizedTitle,
        _regionCode = regionCode,
        _isFamilyShareable = isFamilyShareable,
        _paywallVariationId = paywallVariationId,
        _paywallABTestName = paywallABTestName,
        _paywallName = paywallName,
        _price = price,
        _subscriptionDetails = subscriptionDetails,
        super(firestoreUtilData);

  // "vendorProductId" field.
  String? _vendorProductId;
  String get vendorProductId => _vendorProductId ?? '';
  set vendorProductId(String? val) => _vendorProductId = val;

  bool hasVendorProductId() => _vendorProductId != null;

  // "localizedDescription" field.
  String? _localizedDescription;
  String get localizedDescription => _localizedDescription ?? '';
  set localizedDescription(String? val) => _localizedDescription = val;

  bool hasLocalizedDescription() => _localizedDescription != null;

  // "localizedTitle" field.
  String? _localizedTitle;
  String get localizedTitle => _localizedTitle ?? '';
  set localizedTitle(String? val) => _localizedTitle = val;

  bool hasLocalizedTitle() => _localizedTitle != null;

  // "regionCode" field.
  String? _regionCode;
  String get regionCode => _regionCode ?? '';
  set regionCode(String? val) => _regionCode = val;

  bool hasRegionCode() => _regionCode != null;

  // "isFamilyShareable" field.
  bool? _isFamilyShareable;
  bool get isFamilyShareable => _isFamilyShareable ?? true;
  set isFamilyShareable(bool? val) => _isFamilyShareable = val;

  bool hasIsFamilyShareable() => _isFamilyShareable != null;

  // "paywallVariationId" field.
  String? _paywallVariationId;
  String get paywallVariationId => _paywallVariationId ?? '';
  set paywallVariationId(String? val) => _paywallVariationId = val;

  bool hasPaywallVariationId() => _paywallVariationId != null;

  // "paywallABTestName" field.
  String? _paywallABTestName;
  String get paywallABTestName => _paywallABTestName ?? '';
  set paywallABTestName(String? val) => _paywallABTestName = val;

  bool hasPaywallABTestName() => _paywallABTestName != null;

  // "paywallName" field.
  String? _paywallName;
  String get paywallName => _paywallName ?? '';
  set paywallName(String? val) => _paywallName = val;

  bool hasPaywallName() => _paywallName != null;

  // "price" field.
  AdaptyPriceStruct? _price;
  AdaptyPriceStruct get price => _price ?? AdaptyPriceStruct();
  set price(AdaptyPriceStruct? val) => _price = val;

  void updatePrice(Function(AdaptyPriceStruct) updateFn) {
    updateFn(_price ??= AdaptyPriceStruct());
  }

  bool hasPrice() => _price != null;

  // "subscriptionDetails" field.
  AdaptySubscriptionDetailsStruct? _subscriptionDetails;
  AdaptySubscriptionDetailsStruct get subscriptionDetails =>
      _subscriptionDetails ?? AdaptySubscriptionDetailsStruct();
  set subscriptionDetails(AdaptySubscriptionDetailsStruct? val) =>
      _subscriptionDetails = val;

  void updateSubscriptionDetails(
      Function(AdaptySubscriptionDetailsStruct) updateFn) {
    updateFn(_subscriptionDetails ??= AdaptySubscriptionDetailsStruct());
  }

  bool hasSubscriptionDetails() => _subscriptionDetails != null;

  static AdaptyPaywallProductStruct fromMap(Map<String, dynamic> data) =>
      AdaptyPaywallProductStruct(
        vendorProductId: data['vendorProductId'] as String?,
        localizedDescription: data['localizedDescription'] as String?,
        localizedTitle: data['localizedTitle'] as String?,
        regionCode: data['regionCode'] as String?,
        isFamilyShareable: data['isFamilyShareable'] as bool?,
        paywallVariationId: data['paywallVariationId'] as String?,
        paywallABTestName: data['paywallABTestName'] as String?,
        paywallName: data['paywallName'] as String?,
        price: data['price'] is AdaptyPriceStruct
            ? data['price']
            : AdaptyPriceStruct.maybeFromMap(data['price']),
        subscriptionDetails:
            data['subscriptionDetails'] is AdaptySubscriptionDetailsStruct
                ? data['subscriptionDetails']
                : AdaptySubscriptionDetailsStruct.maybeFromMap(
                    data['subscriptionDetails']),
      );

  static AdaptyPaywallProductStruct? maybeFromMap(dynamic data) => data is Map
      ? AdaptyPaywallProductStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'vendorProductId': _vendorProductId,
        'localizedDescription': _localizedDescription,
        'localizedTitle': _localizedTitle,
        'regionCode': _regionCode,
        'isFamilyShareable': _isFamilyShareable,
        'paywallVariationId': _paywallVariationId,
        'paywallABTestName': _paywallABTestName,
        'paywallName': _paywallName,
        'price': _price?.toMap(),
        'subscriptionDetails': _subscriptionDetails?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'vendorProductId': serializeParam(
          _vendorProductId,
          ParamType.String,
        ),
        'localizedDescription': serializeParam(
          _localizedDescription,
          ParamType.String,
        ),
        'localizedTitle': serializeParam(
          _localizedTitle,
          ParamType.String,
        ),
        'regionCode': serializeParam(
          _regionCode,
          ParamType.String,
        ),
        'isFamilyShareable': serializeParam(
          _isFamilyShareable,
          ParamType.bool,
        ),
        'paywallVariationId': serializeParam(
          _paywallVariationId,
          ParamType.String,
        ),
        'paywallABTestName': serializeParam(
          _paywallABTestName,
          ParamType.String,
        ),
        'paywallName': serializeParam(
          _paywallName,
          ParamType.String,
        ),
        'price': serializeParam(
          _price,
          ParamType.DataStruct,
        ),
        'subscriptionDetails': serializeParam(
          _subscriptionDetails,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static AdaptyPaywallProductStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      AdaptyPaywallProductStruct(
        vendorProductId: deserializeParam(
          data['vendorProductId'],
          ParamType.String,
          false,
        ),
        localizedDescription: deserializeParam(
          data['localizedDescription'],
          ParamType.String,
          false,
        ),
        localizedTitle: deserializeParam(
          data['localizedTitle'],
          ParamType.String,
          false,
        ),
        regionCode: deserializeParam(
          data['regionCode'],
          ParamType.String,
          false,
        ),
        isFamilyShareable: deserializeParam(
          data['isFamilyShareable'],
          ParamType.bool,
          false,
        ),
        paywallVariationId: deserializeParam(
          data['paywallVariationId'],
          ParamType.String,
          false,
        ),
        paywallABTestName: deserializeParam(
          data['paywallABTestName'],
          ParamType.String,
          false,
        ),
        paywallName: deserializeParam(
          data['paywallName'],
          ParamType.String,
          false,
        ),
        price: deserializeStructParam(
          data['price'],
          ParamType.DataStruct,
          false,
          structBuilder: AdaptyPriceStruct.fromSerializableMap,
        ),
        subscriptionDetails: deserializeStructParam(
          data['subscriptionDetails'],
          ParamType.DataStruct,
          false,
          structBuilder: AdaptySubscriptionDetailsStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'AdaptyPaywallProductStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AdaptyPaywallProductStruct &&
        vendorProductId == other.vendorProductId &&
        localizedDescription == other.localizedDescription &&
        localizedTitle == other.localizedTitle &&
        regionCode == other.regionCode &&
        isFamilyShareable == other.isFamilyShareable &&
        paywallVariationId == other.paywallVariationId &&
        paywallABTestName == other.paywallABTestName &&
        paywallName == other.paywallName &&
        price == other.price &&
        subscriptionDetails == other.subscriptionDetails;
  }

  @override
  int get hashCode => const ListEquality().hash([
        vendorProductId,
        localizedDescription,
        localizedTitle,
        regionCode,
        isFamilyShareable,
        paywallVariationId,
        paywallABTestName,
        paywallName,
        price,
        subscriptionDetails
      ]);
}

AdaptyPaywallProductStruct createAdaptyPaywallProductStruct({
  String? vendorProductId,
  String? localizedDescription,
  String? localizedTitle,
  String? regionCode,
  bool? isFamilyShareable,
  String? paywallVariationId,
  String? paywallABTestName,
  String? paywallName,
  AdaptyPriceStruct? price,
  AdaptySubscriptionDetailsStruct? subscriptionDetails,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AdaptyPaywallProductStruct(
      vendorProductId: vendorProductId,
      localizedDescription: localizedDescription,
      localizedTitle: localizedTitle,
      regionCode: regionCode,
      isFamilyShareable: isFamilyShareable,
      paywallVariationId: paywallVariationId,
      paywallABTestName: paywallABTestName,
      paywallName: paywallName,
      price: price ?? (clearUnsetFields ? AdaptyPriceStruct() : null),
      subscriptionDetails: subscriptionDetails ??
          (clearUnsetFields ? AdaptySubscriptionDetailsStruct() : null),
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AdaptyPaywallProductStruct? updateAdaptyPaywallProductStruct(
  AdaptyPaywallProductStruct? adaptyPaywallProduct, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    adaptyPaywallProduct
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAdaptyPaywallProductStructData(
  Map<String, dynamic> firestoreData,
  AdaptyPaywallProductStruct? adaptyPaywallProduct,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (adaptyPaywallProduct == null) {
    return;
  }
  if (adaptyPaywallProduct.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && adaptyPaywallProduct.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final adaptyPaywallProductData =
      getAdaptyPaywallProductFirestoreData(adaptyPaywallProduct, forFieldValue);
  final nestedData =
      adaptyPaywallProductData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      adaptyPaywallProduct.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAdaptyPaywallProductFirestoreData(
  AdaptyPaywallProductStruct? adaptyPaywallProduct, [
  bool forFieldValue = false,
]) {
  if (adaptyPaywallProduct == null) {
    return {};
  }
  final firestoreData = mapToFirestore(adaptyPaywallProduct.toMap());

  // Handle nested data for "price" field.
  addAdaptyPriceStructData(
    firestoreData,
    adaptyPaywallProduct.hasPrice() ? adaptyPaywallProduct.price : null,
    'price',
    forFieldValue,
  );

  // Handle nested data for "subscriptionDetails" field.
  addAdaptySubscriptionDetailsStructData(
    firestoreData,
    adaptyPaywallProduct.hasSubscriptionDetails()
        ? adaptyPaywallProduct.subscriptionDetails
        : null,
    'subscriptionDetails',
    forFieldValue,
  );

  // Add any Firestore field values
  adaptyPaywallProduct.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAdaptyPaywallProductListFirestoreData(
  List<AdaptyPaywallProductStruct>? adaptyPaywallProducts,
) =>
    adaptyPaywallProducts
        ?.map((e) => getAdaptyPaywallProductFirestoreData(e, true))
        .toList() ??
    [];
