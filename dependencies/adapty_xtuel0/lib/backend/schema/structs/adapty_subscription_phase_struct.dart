// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AdaptySubscriptionPhaseStruct extends FFFirebaseStruct {
  AdaptySubscriptionPhaseStruct({
    String? identifier,
    String? localizedNumberOfPeriods,
    String? localizedSubscriptionPeriod,
    int? numberOfPeriods,
    AdaptyPaymentModeEnum? paymentMode,
    AdaptyPriceStruct? price,
    AdaptySubscriptionPeriodStruct? subscriptionPeriod,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _identifier = identifier,
        _localizedNumberOfPeriods = localizedNumberOfPeriods,
        _localizedSubscriptionPeriod = localizedSubscriptionPeriod,
        _numberOfPeriods = numberOfPeriods,
        _paymentMode = paymentMode,
        _price = price,
        _subscriptionPeriod = subscriptionPeriod,
        super(firestoreUtilData);

  // "identifier" field.
  String? _identifier;
  String get identifier => _identifier ?? '';
  set identifier(String? val) => _identifier = val;

  bool hasIdentifier() => _identifier != null;

  // "localizedNumberOfPeriods" field.
  String? _localizedNumberOfPeriods;
  String get localizedNumberOfPeriods => _localizedNumberOfPeriods ?? '';
  set localizedNumberOfPeriods(String? val) => _localizedNumberOfPeriods = val;

  bool hasLocalizedNumberOfPeriods() => _localizedNumberOfPeriods != null;

  // "localizedSubscriptionPeriod" field.
  String? _localizedSubscriptionPeriod;
  String get localizedSubscriptionPeriod => _localizedSubscriptionPeriod ?? '';
  set localizedSubscriptionPeriod(String? val) =>
      _localizedSubscriptionPeriod = val;

  bool hasLocalizedSubscriptionPeriod() => _localizedSubscriptionPeriod != null;

  // "numberOfPeriods" field.
  int? _numberOfPeriods;
  int get numberOfPeriods => _numberOfPeriods ?? 0;
  set numberOfPeriods(int? val) => _numberOfPeriods = val;

  void incrementNumberOfPeriods(int amount) =>
      numberOfPeriods = numberOfPeriods + amount;

  bool hasNumberOfPeriods() => _numberOfPeriods != null;

  // "paymentMode" field.
  AdaptyPaymentModeEnum? _paymentMode;
  AdaptyPaymentModeEnum? get paymentMode => _paymentMode;
  set paymentMode(AdaptyPaymentModeEnum? val) => _paymentMode = val;

  bool hasPaymentMode() => _paymentMode != null;

  // "price" field.
  AdaptyPriceStruct? _price;
  AdaptyPriceStruct get price => _price ?? AdaptyPriceStruct();
  set price(AdaptyPriceStruct? val) => _price = val;

  void updatePrice(Function(AdaptyPriceStruct) updateFn) {
    updateFn(_price ??= AdaptyPriceStruct());
  }

  bool hasPrice() => _price != null;

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

  static AdaptySubscriptionPhaseStruct fromMap(Map<String, dynamic> data) =>
      AdaptySubscriptionPhaseStruct(
        identifier: data['identifier'] as String?,
        localizedNumberOfPeriods: data['localizedNumberOfPeriods'] as String?,
        localizedSubscriptionPeriod:
            data['localizedSubscriptionPeriod'] as String?,
        numberOfPeriods: castToType<int>(data['numberOfPeriods']),
        paymentMode: data['paymentMode'] is AdaptyPaymentModeEnum
            ? data['paymentMode']
            : deserializeEnum<AdaptyPaymentModeEnum>(data['paymentMode']),
        price: data['price'] is AdaptyPriceStruct
            ? data['price']
            : AdaptyPriceStruct.maybeFromMap(data['price']),
        subscriptionPeriod:
            data['subscriptionPeriod'] is AdaptySubscriptionPeriodStruct
                ? data['subscriptionPeriod']
                : AdaptySubscriptionPeriodStruct.maybeFromMap(
                    data['subscriptionPeriod']),
      );

  static AdaptySubscriptionPhaseStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? AdaptySubscriptionPhaseStruct.fromMap(data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'identifier': _identifier,
        'localizedNumberOfPeriods': _localizedNumberOfPeriods,
        'localizedSubscriptionPeriod': _localizedSubscriptionPeriod,
        'numberOfPeriods': _numberOfPeriods,
        'paymentMode': _paymentMode?.serialize(),
        'price': _price?.toMap(),
        'subscriptionPeriod': _subscriptionPeriod?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'identifier': serializeParam(
          _identifier,
          ParamType.String,
        ),
        'localizedNumberOfPeriods': serializeParam(
          _localizedNumberOfPeriods,
          ParamType.String,
        ),
        'localizedSubscriptionPeriod': serializeParam(
          _localizedSubscriptionPeriod,
          ParamType.String,
        ),
        'numberOfPeriods': serializeParam(
          _numberOfPeriods,
          ParamType.int,
        ),
        'paymentMode': serializeParam(
          _paymentMode,
          ParamType.Enum,
        ),
        'price': serializeParam(
          _price,
          ParamType.DataStruct,
        ),
        'subscriptionPeriod': serializeParam(
          _subscriptionPeriod,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static AdaptySubscriptionPhaseStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      AdaptySubscriptionPhaseStruct(
        identifier: deserializeParam(
          data['identifier'],
          ParamType.String,
          false,
        ),
        localizedNumberOfPeriods: deserializeParam(
          data['localizedNumberOfPeriods'],
          ParamType.String,
          false,
        ),
        localizedSubscriptionPeriod: deserializeParam(
          data['localizedSubscriptionPeriod'],
          ParamType.String,
          false,
        ),
        numberOfPeriods: deserializeParam(
          data['numberOfPeriods'],
          ParamType.int,
          false,
        ),
        paymentMode: deserializeParam<AdaptyPaymentModeEnum>(
          data['paymentMode'],
          ParamType.Enum,
          false,
        ),
        price: deserializeStructParam(
          data['price'],
          ParamType.DataStruct,
          false,
          structBuilder: AdaptyPriceStruct.fromSerializableMap,
        ),
        subscriptionPeriod: deserializeStructParam(
          data['subscriptionPeriod'],
          ParamType.DataStruct,
          false,
          structBuilder: AdaptySubscriptionPeriodStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'AdaptySubscriptionPhaseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AdaptySubscriptionPhaseStruct &&
        identifier == other.identifier &&
        localizedNumberOfPeriods == other.localizedNumberOfPeriods &&
        localizedSubscriptionPeriod == other.localizedSubscriptionPeriod &&
        numberOfPeriods == other.numberOfPeriods &&
        paymentMode == other.paymentMode &&
        price == other.price &&
        subscriptionPeriod == other.subscriptionPeriod;
  }

  @override
  int get hashCode => const ListEquality().hash([
        identifier,
        localizedNumberOfPeriods,
        localizedSubscriptionPeriod,
        numberOfPeriods,
        paymentMode,
        price,
        subscriptionPeriod
      ]);
}

AdaptySubscriptionPhaseStruct createAdaptySubscriptionPhaseStruct({
  String? identifier,
  String? localizedNumberOfPeriods,
  String? localizedSubscriptionPeriod,
  int? numberOfPeriods,
  AdaptyPaymentModeEnum? paymentMode,
  AdaptyPriceStruct? price,
  AdaptySubscriptionPeriodStruct? subscriptionPeriod,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AdaptySubscriptionPhaseStruct(
      identifier: identifier,
      localizedNumberOfPeriods: localizedNumberOfPeriods,
      localizedSubscriptionPeriod: localizedSubscriptionPeriod,
      numberOfPeriods: numberOfPeriods,
      paymentMode: paymentMode,
      price: price ?? (clearUnsetFields ? AdaptyPriceStruct() : null),
      subscriptionPeriod: subscriptionPeriod ??
          (clearUnsetFields ? AdaptySubscriptionPeriodStruct() : null),
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AdaptySubscriptionPhaseStruct? updateAdaptySubscriptionPhaseStruct(
  AdaptySubscriptionPhaseStruct? adaptySubscriptionPhase, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    adaptySubscriptionPhase
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAdaptySubscriptionPhaseStructData(
  Map<String, dynamic> firestoreData,
  AdaptySubscriptionPhaseStruct? adaptySubscriptionPhase,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (adaptySubscriptionPhase == null) {
    return;
  }
  if (adaptySubscriptionPhase.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue &&
      adaptySubscriptionPhase.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final adaptySubscriptionPhaseData = getAdaptySubscriptionPhaseFirestoreData(
      adaptySubscriptionPhase, forFieldValue);
  final nestedData =
      adaptySubscriptionPhaseData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      adaptySubscriptionPhase.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAdaptySubscriptionPhaseFirestoreData(
  AdaptySubscriptionPhaseStruct? adaptySubscriptionPhase, [
  bool forFieldValue = false,
]) {
  if (adaptySubscriptionPhase == null) {
    return {};
  }
  final firestoreData = mapToFirestore(adaptySubscriptionPhase.toMap());

  // Handle nested data for "price" field.
  addAdaptyPriceStructData(
    firestoreData,
    adaptySubscriptionPhase.hasPrice() ? adaptySubscriptionPhase.price : null,
    'price',
    forFieldValue,
  );

  // Handle nested data for "subscriptionPeriod" field.
  addAdaptySubscriptionPeriodStructData(
    firestoreData,
    adaptySubscriptionPhase.hasSubscriptionPeriod()
        ? adaptySubscriptionPhase.subscriptionPeriod
        : null,
    'subscriptionPeriod',
    forFieldValue,
  );

  // Add any Firestore field values
  adaptySubscriptionPhase.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAdaptySubscriptionPhaseListFirestoreData(
  List<AdaptySubscriptionPhaseStruct>? adaptySubscriptionPhases,
) =>
    adaptySubscriptionPhases
        ?.map((e) => getAdaptySubscriptionPhaseFirestoreData(e, true))
        .toList() ??
    [];
