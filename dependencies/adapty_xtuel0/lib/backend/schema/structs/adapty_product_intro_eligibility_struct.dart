// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AdaptyProductIntroEligibilityStruct extends FFFirebaseStruct {
  AdaptyProductIntroEligibilityStruct({
    String? vendorProductId,
    AdaptyEligibilityEnum? eligibility,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _vendorProductId = vendorProductId,
        _eligibility = eligibility,
        super(firestoreUtilData);

  // "vendorProductId" field.
  String? _vendorProductId;
  String get vendorProductId => _vendorProductId ?? '';
  set vendorProductId(String? val) => _vendorProductId = val;

  bool hasVendorProductId() => _vendorProductId != null;

  // "eligibility" field.
  AdaptyEligibilityEnum? _eligibility;
  AdaptyEligibilityEnum get eligibility =>
      _eligibility ?? AdaptyEligibilityEnum.notApplicable;
  set eligibility(AdaptyEligibilityEnum? val) => _eligibility = val;

  bool hasEligibility() => _eligibility != null;

  static AdaptyProductIntroEligibilityStruct fromMap(
          Map<String, dynamic> data) =>
      AdaptyProductIntroEligibilityStruct(
        vendorProductId: data['vendorProductId'] as String?,
        eligibility: data['eligibility'] is AdaptyEligibilityEnum
            ? data['eligibility']
            : deserializeEnum<AdaptyEligibilityEnum>(data['eligibility']),
      );

  static AdaptyProductIntroEligibilityStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? AdaptyProductIntroEligibilityStruct.fromMap(
              data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'vendorProductId': _vendorProductId,
        'eligibility': _eligibility?.serialize(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'vendorProductId': serializeParam(
          _vendorProductId,
          ParamType.String,
        ),
        'eligibility': serializeParam(
          _eligibility,
          ParamType.Enum,
        ),
      }.withoutNulls;

  static AdaptyProductIntroEligibilityStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      AdaptyProductIntroEligibilityStruct(
        vendorProductId: deserializeParam(
          data['vendorProductId'],
          ParamType.String,
          false,
        ),
        eligibility: deserializeParam<AdaptyEligibilityEnum>(
          data['eligibility'],
          ParamType.Enum,
          false,
        ),
      );

  @override
  String toString() => 'AdaptyProductIntroEligibilityStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AdaptyProductIntroEligibilityStruct &&
        vendorProductId == other.vendorProductId &&
        eligibility == other.eligibility;
  }

  @override
  int get hashCode => const ListEquality().hash([vendorProductId, eligibility]);
}

AdaptyProductIntroEligibilityStruct createAdaptyProductIntroEligibilityStruct({
  String? vendorProductId,
  AdaptyEligibilityEnum? eligibility,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AdaptyProductIntroEligibilityStruct(
      vendorProductId: vendorProductId,
      eligibility: eligibility,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AdaptyProductIntroEligibilityStruct? updateAdaptyProductIntroEligibilityStruct(
  AdaptyProductIntroEligibilityStruct? adaptyProductIntroEligibility, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    adaptyProductIntroEligibility
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAdaptyProductIntroEligibilityStructData(
  Map<String, dynamic> firestoreData,
  AdaptyProductIntroEligibilityStruct? adaptyProductIntroEligibility,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (adaptyProductIntroEligibility == null) {
    return;
  }
  if (adaptyProductIntroEligibility.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue &&
      adaptyProductIntroEligibility.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final adaptyProductIntroEligibilityData =
      getAdaptyProductIntroEligibilityFirestoreData(
          adaptyProductIntroEligibility, forFieldValue);
  final nestedData = adaptyProductIntroEligibilityData
      .map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      adaptyProductIntroEligibility.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAdaptyProductIntroEligibilityFirestoreData(
  AdaptyProductIntroEligibilityStruct? adaptyProductIntroEligibility, [
  bool forFieldValue = false,
]) {
  if (adaptyProductIntroEligibility == null) {
    return {};
  }
  final firestoreData = mapToFirestore(adaptyProductIntroEligibility.toMap());

  // Add any Firestore field values
  adaptyProductIntroEligibility.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAdaptyProductIntroEligibilityListFirestoreData(
  List<AdaptyProductIntroEligibilityStruct>? adaptyProductIntroEligibilitys,
) =>
    adaptyProductIntroEligibilitys
        ?.map((e) => getAdaptyProductIntroEligibilityFirestoreData(e, true))
        .toList() ??
    [];
