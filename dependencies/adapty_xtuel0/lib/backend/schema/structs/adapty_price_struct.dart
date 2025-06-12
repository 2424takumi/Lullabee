// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AdaptyPriceStruct extends FFFirebaseStruct {
  AdaptyPriceStruct({
    double? amount,
    String? currencyCode,
    String? currencySymbol,
    String? localizedString,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _amount = amount,
        _currencyCode = currencyCode,
        _currencySymbol = currencySymbol,
        _localizedString = localizedString,
        super(firestoreUtilData);

  // "amount" field.
  double? _amount;
  double get amount => _amount ?? 0.0;
  set amount(double? val) => _amount = val;

  void incrementAmount(double amount) => amount = amount + amount;

  bool hasAmount() => _amount != null;

  // "currencyCode" field.
  String? _currencyCode;
  String get currencyCode => _currencyCode ?? '';
  set currencyCode(String? val) => _currencyCode = val;

  bool hasCurrencyCode() => _currencyCode != null;

  // "currencySymbol" field.
  String? _currencySymbol;
  String get currencySymbol => _currencySymbol ?? '';
  set currencySymbol(String? val) => _currencySymbol = val;

  bool hasCurrencySymbol() => _currencySymbol != null;

  // "localizedString" field.
  String? _localizedString;
  String get localizedString => _localizedString ?? '';
  set localizedString(String? val) => _localizedString = val;

  bool hasLocalizedString() => _localizedString != null;

  static AdaptyPriceStruct fromMap(Map<String, dynamic> data) =>
      AdaptyPriceStruct(
        amount: castToType<double>(data['amount']),
        currencyCode: data['currencyCode'] as String?,
        currencySymbol: data['currencySymbol'] as String?,
        localizedString: data['localizedString'] as String?,
      );

  static AdaptyPriceStruct? maybeFromMap(dynamic data) => data is Map
      ? AdaptyPriceStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'amount': _amount,
        'currencyCode': _currencyCode,
        'currencySymbol': _currencySymbol,
        'localizedString': _localizedString,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'amount': serializeParam(
          _amount,
          ParamType.double,
        ),
        'currencyCode': serializeParam(
          _currencyCode,
          ParamType.String,
        ),
        'currencySymbol': serializeParam(
          _currencySymbol,
          ParamType.String,
        ),
        'localizedString': serializeParam(
          _localizedString,
          ParamType.String,
        ),
      }.withoutNulls;

  static AdaptyPriceStruct fromSerializableMap(Map<String, dynamic> data) =>
      AdaptyPriceStruct(
        amount: deserializeParam(
          data['amount'],
          ParamType.double,
          false,
        ),
        currencyCode: deserializeParam(
          data['currencyCode'],
          ParamType.String,
          false,
        ),
        currencySymbol: deserializeParam(
          data['currencySymbol'],
          ParamType.String,
          false,
        ),
        localizedString: deserializeParam(
          data['localizedString'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AdaptyPriceStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AdaptyPriceStruct &&
        amount == other.amount &&
        currencyCode == other.currencyCode &&
        currencySymbol == other.currencySymbol &&
        localizedString == other.localizedString;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([amount, currencyCode, currencySymbol, localizedString]);
}

AdaptyPriceStruct createAdaptyPriceStruct({
  double? amount,
  String? currencyCode,
  String? currencySymbol,
  String? localizedString,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AdaptyPriceStruct(
      amount: amount,
      currencyCode: currencyCode,
      currencySymbol: currencySymbol,
      localizedString: localizedString,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AdaptyPriceStruct? updateAdaptyPriceStruct(
  AdaptyPriceStruct? adaptyPrice, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    adaptyPrice
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAdaptyPriceStructData(
  Map<String, dynamic> firestoreData,
  AdaptyPriceStruct? adaptyPrice,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (adaptyPrice == null) {
    return;
  }
  if (adaptyPrice.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && adaptyPrice.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final adaptyPriceData =
      getAdaptyPriceFirestoreData(adaptyPrice, forFieldValue);
  final nestedData =
      adaptyPriceData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = adaptyPrice.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAdaptyPriceFirestoreData(
  AdaptyPriceStruct? adaptyPrice, [
  bool forFieldValue = false,
]) {
  if (adaptyPrice == null) {
    return {};
  }
  final firestoreData = mapToFirestore(adaptyPrice.toMap());

  // Add any Firestore field values
  adaptyPrice.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAdaptyPriceListFirestoreData(
  List<AdaptyPriceStruct>? adaptyPrices,
) =>
    adaptyPrices?.map((e) => getAdaptyPriceFirestoreData(e, true)).toList() ??
    [];
