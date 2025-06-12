// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AdaptyProductSubscriptionsStruct extends FFFirebaseStruct {
  AdaptyProductSubscriptionsStruct({
    String? productId,
    AdaptySubscriptionStruct? subscription,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _productId = productId,
        _subscription = subscription,
        super(firestoreUtilData);

  // "product_id" field.
  String? _productId;
  String get productId => _productId ?? '';
  set productId(String? val) => _productId = val;

  bool hasProductId() => _productId != null;

  // "subscription" field.
  AdaptySubscriptionStruct? _subscription;
  AdaptySubscriptionStruct get subscription =>
      _subscription ?? AdaptySubscriptionStruct();
  set subscription(AdaptySubscriptionStruct? val) => _subscription = val;

  void updateSubscription(Function(AdaptySubscriptionStruct) updateFn) {
    updateFn(_subscription ??= AdaptySubscriptionStruct());
  }

  bool hasSubscription() => _subscription != null;

  static AdaptyProductSubscriptionsStruct fromMap(Map<String, dynamic> data) =>
      AdaptyProductSubscriptionsStruct(
        productId: data['product_id'] as String?,
        subscription: data['subscription'] is AdaptySubscriptionStruct
            ? data['subscription']
            : AdaptySubscriptionStruct.maybeFromMap(data['subscription']),
      );

  static AdaptyProductSubscriptionsStruct? maybeFromMap(dynamic data) => data
          is Map
      ? AdaptyProductSubscriptionsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'product_id': _productId,
        'subscription': _subscription?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'product_id': serializeParam(
          _productId,
          ParamType.String,
        ),
        'subscription': serializeParam(
          _subscription,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static AdaptyProductSubscriptionsStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      AdaptyProductSubscriptionsStruct(
        productId: deserializeParam(
          data['product_id'],
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
  String toString() => 'AdaptyProductSubscriptionsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AdaptyProductSubscriptionsStruct &&
        productId == other.productId &&
        subscription == other.subscription;
  }

  @override
  int get hashCode => const ListEquality().hash([productId, subscription]);
}

AdaptyProductSubscriptionsStruct createAdaptyProductSubscriptionsStruct({
  String? productId,
  AdaptySubscriptionStruct? subscription,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AdaptyProductSubscriptionsStruct(
      productId: productId,
      subscription: subscription ??
          (clearUnsetFields ? AdaptySubscriptionStruct() : null),
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AdaptyProductSubscriptionsStruct? updateAdaptyProductSubscriptionsStruct(
  AdaptyProductSubscriptionsStruct? adaptyProductSubscriptions, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    adaptyProductSubscriptions
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAdaptyProductSubscriptionsStructData(
  Map<String, dynamic> firestoreData,
  AdaptyProductSubscriptionsStruct? adaptyProductSubscriptions,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (adaptyProductSubscriptions == null) {
    return;
  }
  if (adaptyProductSubscriptions.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue &&
      adaptyProductSubscriptions.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final adaptyProductSubscriptionsData =
      getAdaptyProductSubscriptionsFirestoreData(
          adaptyProductSubscriptions, forFieldValue);
  final nestedData = adaptyProductSubscriptionsData
      .map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      adaptyProductSubscriptions.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAdaptyProductSubscriptionsFirestoreData(
  AdaptyProductSubscriptionsStruct? adaptyProductSubscriptions, [
  bool forFieldValue = false,
]) {
  if (adaptyProductSubscriptions == null) {
    return {};
  }
  final firestoreData = mapToFirestore(adaptyProductSubscriptions.toMap());

  // Handle nested data for "subscription" field.
  addAdaptySubscriptionStructData(
    firestoreData,
    adaptyProductSubscriptions.hasSubscription()
        ? adaptyProductSubscriptions.subscription
        : null,
    'subscription',
    forFieldValue,
  );

  // Add any Firestore field values
  adaptyProductSubscriptions.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAdaptyProductSubscriptionsListFirestoreData(
  List<AdaptyProductSubscriptionsStruct>? adaptyProductSubscriptionss,
) =>
    adaptyProductSubscriptionss
        ?.map((e) => getAdaptyProductSubscriptionsFirestoreData(e, true))
        .toList() ??
    [];
