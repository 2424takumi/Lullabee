// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AdaptyProductNonsubscriptionsStruct extends FFFirebaseStruct {
  AdaptyProductNonsubscriptionsStruct({
    String? productId,
    AdaptyNonSubscriptionStruct? nonsubscriptions,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _productId = productId,
        _nonsubscriptions = nonsubscriptions,
        super(firestoreUtilData);

  // "product_id" field.
  String? _productId;
  String get productId => _productId ?? '';
  set productId(String? val) => _productId = val;

  bool hasProductId() => _productId != null;

  // "nonsubscriptions" field.
  AdaptyNonSubscriptionStruct? _nonsubscriptions;
  AdaptyNonSubscriptionStruct get nonsubscriptions =>
      _nonsubscriptions ?? AdaptyNonSubscriptionStruct();
  set nonsubscriptions(AdaptyNonSubscriptionStruct? val) =>
      _nonsubscriptions = val;

  void updateNonsubscriptions(Function(AdaptyNonSubscriptionStruct) updateFn) {
    updateFn(_nonsubscriptions ??= AdaptyNonSubscriptionStruct());
  }

  bool hasNonsubscriptions() => _nonsubscriptions != null;

  static AdaptyProductNonsubscriptionsStruct fromMap(
          Map<String, dynamic> data) =>
      AdaptyProductNonsubscriptionsStruct(
        productId: data['product_id'] as String?,
        nonsubscriptions:
            data['nonsubscriptions'] is AdaptyNonSubscriptionStruct
                ? data['nonsubscriptions']
                : AdaptyNonSubscriptionStruct.maybeFromMap(
                    data['nonsubscriptions']),
      );

  static AdaptyProductNonsubscriptionsStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? AdaptyProductNonsubscriptionsStruct.fromMap(
              data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'product_id': _productId,
        'nonsubscriptions': _nonsubscriptions?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'product_id': serializeParam(
          _productId,
          ParamType.String,
        ),
        'nonsubscriptions': serializeParam(
          _nonsubscriptions,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static AdaptyProductNonsubscriptionsStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      AdaptyProductNonsubscriptionsStruct(
        productId: deserializeParam(
          data['product_id'],
          ParamType.String,
          false,
        ),
        nonsubscriptions: deserializeStructParam(
          data['nonsubscriptions'],
          ParamType.DataStruct,
          false,
          structBuilder: AdaptyNonSubscriptionStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'AdaptyProductNonsubscriptionsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AdaptyProductNonsubscriptionsStruct &&
        productId == other.productId &&
        nonsubscriptions == other.nonsubscriptions;
  }

  @override
  int get hashCode => const ListEquality().hash([productId, nonsubscriptions]);
}

AdaptyProductNonsubscriptionsStruct createAdaptyProductNonsubscriptionsStruct({
  String? productId,
  AdaptyNonSubscriptionStruct? nonsubscriptions,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AdaptyProductNonsubscriptionsStruct(
      productId: productId,
      nonsubscriptions: nonsubscriptions ??
          (clearUnsetFields ? AdaptyNonSubscriptionStruct() : null),
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AdaptyProductNonsubscriptionsStruct? updateAdaptyProductNonsubscriptionsStruct(
  AdaptyProductNonsubscriptionsStruct? adaptyProductNonsubscriptions, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    adaptyProductNonsubscriptions
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAdaptyProductNonsubscriptionsStructData(
  Map<String, dynamic> firestoreData,
  AdaptyProductNonsubscriptionsStruct? adaptyProductNonsubscriptions,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (adaptyProductNonsubscriptions == null) {
    return;
  }
  if (adaptyProductNonsubscriptions.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue &&
      adaptyProductNonsubscriptions.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final adaptyProductNonsubscriptionsData =
      getAdaptyProductNonsubscriptionsFirestoreData(
          adaptyProductNonsubscriptions, forFieldValue);
  final nestedData = adaptyProductNonsubscriptionsData
      .map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      adaptyProductNonsubscriptions.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAdaptyProductNonsubscriptionsFirestoreData(
  AdaptyProductNonsubscriptionsStruct? adaptyProductNonsubscriptions, [
  bool forFieldValue = false,
]) {
  if (adaptyProductNonsubscriptions == null) {
    return {};
  }
  final firestoreData = mapToFirestore(adaptyProductNonsubscriptions.toMap());

  // Handle nested data for "nonsubscriptions" field.
  addAdaptyNonSubscriptionStructData(
    firestoreData,
    adaptyProductNonsubscriptions.hasNonsubscriptions()
        ? adaptyProductNonsubscriptions.nonsubscriptions
        : null,
    'nonsubscriptions',
    forFieldValue,
  );

  // Add any Firestore field values
  adaptyProductNonsubscriptions.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAdaptyProductNonsubscriptionsListFirestoreData(
  List<AdaptyProductNonsubscriptionsStruct>? adaptyProductNonsubscriptionss,
) =>
    adaptyProductNonsubscriptionss
        ?.map((e) => getAdaptyProductNonsubscriptionsFirestoreData(e, true))
        .toList() ??
    [];
