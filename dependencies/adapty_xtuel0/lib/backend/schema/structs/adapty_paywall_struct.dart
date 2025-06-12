// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AdaptyPaywallStruct extends FFFirebaseStruct {
  AdaptyPaywallStruct({
    String? abTestName,
    bool? hasViewConfiguration,
    String? locale,
    String? name,
    String? placementId,
    String? remoteConfigString,
    int? revision,
    String? variationId,
    List<String>? vendorProductIds,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _abTestName = abTestName,
        _hasViewConfiguration = hasViewConfiguration,
        _locale = locale,
        _name = name,
        _placementId = placementId,
        _remoteConfigString = remoteConfigString,
        _revision = revision,
        _variationId = variationId,
        _vendorProductIds = vendorProductIds,
        super(firestoreUtilData);

  // "abTestName" field.
  String? _abTestName;
  String get abTestName => _abTestName ?? '';
  set abTestName(String? val) => _abTestName = val;

  bool hasAbTestName() => _abTestName != null;

  // "hasViewConfiguration" field.
  bool? _hasViewConfiguration;
  bool get hasViewConfiguration => _hasViewConfiguration ?? false;
  set hasViewConfiguration(bool? val) => _hasViewConfiguration = val;

  bool hasHasViewConfiguration() => _hasViewConfiguration != null;

  // "locale" field.
  String? _locale;
  String get locale => _locale ?? '';
  set locale(String? val) => _locale = val;

  bool hasLocale() => _locale != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "placementId" field.
  String? _placementId;
  String get placementId => _placementId ?? '';
  set placementId(String? val) => _placementId = val;

  bool hasPlacementId() => _placementId != null;

  // "remoteConfigString" field.
  String? _remoteConfigString;
  String get remoteConfigString => _remoteConfigString ?? '';
  set remoteConfigString(String? val) => _remoteConfigString = val;

  bool hasRemoteConfigString() => _remoteConfigString != null;

  // "revision" field.
  int? _revision;
  int get revision => _revision ?? 0;
  set revision(int? val) => _revision = val;

  void incrementRevision(int amount) => revision = revision + amount;

  bool hasRevision() => _revision != null;

  // "variationId" field.
  String? _variationId;
  String get variationId => _variationId ?? '';
  set variationId(String? val) => _variationId = val;

  bool hasVariationId() => _variationId != null;

  // "vendorProductIds" field.
  List<String>? _vendorProductIds;
  List<String> get vendorProductIds => _vendorProductIds ?? const [];
  set vendorProductIds(List<String>? val) => _vendorProductIds = val;

  void updateVendorProductIds(Function(List<String>) updateFn) {
    updateFn(_vendorProductIds ??= []);
  }

  bool hasVendorProductIds() => _vendorProductIds != null;

  static AdaptyPaywallStruct fromMap(Map<String, dynamic> data) =>
      AdaptyPaywallStruct(
        abTestName: data['abTestName'] as String?,
        hasViewConfiguration: data['hasViewConfiguration'] as bool?,
        locale: data['locale'] as String?,
        name: data['name'] as String?,
        placementId: data['placementId'] as String?,
        remoteConfigString: data['remoteConfigString'] as String?,
        revision: castToType<int>(data['revision']),
        variationId: data['variationId'] as String?,
        vendorProductIds: getDataList(data['vendorProductIds']),
      );

  static AdaptyPaywallStruct? maybeFromMap(dynamic data) => data is Map
      ? AdaptyPaywallStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'abTestName': _abTestName,
        'hasViewConfiguration': _hasViewConfiguration,
        'locale': _locale,
        'name': _name,
        'placementId': _placementId,
        'remoteConfigString': _remoteConfigString,
        'revision': _revision,
        'variationId': _variationId,
        'vendorProductIds': _vendorProductIds,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'abTestName': serializeParam(
          _abTestName,
          ParamType.String,
        ),
        'hasViewConfiguration': serializeParam(
          _hasViewConfiguration,
          ParamType.bool,
        ),
        'locale': serializeParam(
          _locale,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'placementId': serializeParam(
          _placementId,
          ParamType.String,
        ),
        'remoteConfigString': serializeParam(
          _remoteConfigString,
          ParamType.String,
        ),
        'revision': serializeParam(
          _revision,
          ParamType.int,
        ),
        'variationId': serializeParam(
          _variationId,
          ParamType.String,
        ),
        'vendorProductIds': serializeParam(
          _vendorProductIds,
          ParamType.String,
          isList: true,
        ),
      }.withoutNulls;

  static AdaptyPaywallStruct fromSerializableMap(Map<String, dynamic> data) =>
      AdaptyPaywallStruct(
        abTestName: deserializeParam(
          data['abTestName'],
          ParamType.String,
          false,
        ),
        hasViewConfiguration: deserializeParam(
          data['hasViewConfiguration'],
          ParamType.bool,
          false,
        ),
        locale: deserializeParam(
          data['locale'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        placementId: deserializeParam(
          data['placementId'],
          ParamType.String,
          false,
        ),
        remoteConfigString: deserializeParam(
          data['remoteConfigString'],
          ParamType.String,
          false,
        ),
        revision: deserializeParam(
          data['revision'],
          ParamType.int,
          false,
        ),
        variationId: deserializeParam(
          data['variationId'],
          ParamType.String,
          false,
        ),
        vendorProductIds: deserializeParam<String>(
          data['vendorProductIds'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'AdaptyPaywallStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is AdaptyPaywallStruct &&
        abTestName == other.abTestName &&
        hasViewConfiguration == other.hasViewConfiguration &&
        locale == other.locale &&
        name == other.name &&
        placementId == other.placementId &&
        remoteConfigString == other.remoteConfigString &&
        revision == other.revision &&
        variationId == other.variationId &&
        listEquality.equals(vendorProductIds, other.vendorProductIds);
  }

  @override
  int get hashCode => const ListEquality().hash([
        abTestName,
        hasViewConfiguration,
        locale,
        name,
        placementId,
        remoteConfigString,
        revision,
        variationId,
        vendorProductIds
      ]);
}

AdaptyPaywallStruct createAdaptyPaywallStruct({
  String? abTestName,
  bool? hasViewConfiguration,
  String? locale,
  String? name,
  String? placementId,
  String? remoteConfigString,
  int? revision,
  String? variationId,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AdaptyPaywallStruct(
      abTestName: abTestName,
      hasViewConfiguration: hasViewConfiguration,
      locale: locale,
      name: name,
      placementId: placementId,
      remoteConfigString: remoteConfigString,
      revision: revision,
      variationId: variationId,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AdaptyPaywallStruct? updateAdaptyPaywallStruct(
  AdaptyPaywallStruct? adaptyPaywall, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    adaptyPaywall
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAdaptyPaywallStructData(
  Map<String, dynamic> firestoreData,
  AdaptyPaywallStruct? adaptyPaywall,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (adaptyPaywall == null) {
    return;
  }
  if (adaptyPaywall.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && adaptyPaywall.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final adaptyPaywallData =
      getAdaptyPaywallFirestoreData(adaptyPaywall, forFieldValue);
  final nestedData =
      adaptyPaywallData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = adaptyPaywall.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAdaptyPaywallFirestoreData(
  AdaptyPaywallStruct? adaptyPaywall, [
  bool forFieldValue = false,
]) {
  if (adaptyPaywall == null) {
    return {};
  }
  final firestoreData = mapToFirestore(adaptyPaywall.toMap());

  // Add any Firestore field values
  adaptyPaywall.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAdaptyPaywallListFirestoreData(
  List<AdaptyPaywallStruct>? adaptyPaywalls,
) =>
    adaptyPaywalls
        ?.map((e) => getAdaptyPaywallFirestoreData(e, true))
        .toList() ??
    [];
