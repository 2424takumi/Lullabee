// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AdaptyProfileParametersStruct extends FFFirebaseStruct {
  AdaptyProfileParametersStruct({
    String? firstName,
    String? lastName,
    AdaptyGenderEnum? gender,
    DateTime? birthday,
    String? email,
    String? phoneNumber,
    String? facebookAnonymousId,
    String? amplitudeUserId,
    String? amplitudeDeviceId,
    String? mixpanelUserId,
    String? appmetricaProfileId,
    String? appmetricaDeviceId,
    String? oneSignalPlayerId,
    String? pushwooshHWID,
    String? firebaseAppInstanceId,
    String? airbridgeDeviceId,
    AdaptyATTStatus? appTrackingTransparencyStatus,
    bool? analyticsDisabled,
    List<AdaptyCustomStringAttributeStruct>? customStringAttributes,
    List<AdaptyCustomDoubleAttributeStruct>? customDoubleAttributes,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _firstName = firstName,
        _lastName = lastName,
        _gender = gender,
        _birthday = birthday,
        _email = email,
        _phoneNumber = phoneNumber,
        _facebookAnonymousId = facebookAnonymousId,
        _amplitudeUserId = amplitudeUserId,
        _amplitudeDeviceId = amplitudeDeviceId,
        _mixpanelUserId = mixpanelUserId,
        _appmetricaProfileId = appmetricaProfileId,
        _appmetricaDeviceId = appmetricaDeviceId,
        _oneSignalPlayerId = oneSignalPlayerId,
        _pushwooshHWID = pushwooshHWID,
        _firebaseAppInstanceId = firebaseAppInstanceId,
        _airbridgeDeviceId = airbridgeDeviceId,
        _appTrackingTransparencyStatus = appTrackingTransparencyStatus,
        _analyticsDisabled = analyticsDisabled,
        _customStringAttributes = customStringAttributes,
        _customDoubleAttributes = customDoubleAttributes,
        super(firestoreUtilData);

  // "firstName" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  set firstName(String? val) => _firstName = val;

  bool hasFirstName() => _firstName != null;

  // "lastName" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  set lastName(String? val) => _lastName = val;

  bool hasLastName() => _lastName != null;

  // "gender" field.
  AdaptyGenderEnum? _gender;
  AdaptyGenderEnum get gender => _gender ?? AdaptyGenderEnum.none;
  set gender(AdaptyGenderEnum? val) => _gender = val;

  bool hasGender() => _gender != null;

  // "birthday" field.
  DateTime? _birthday;
  DateTime? get birthday => _birthday;
  set birthday(DateTime? val) => _birthday = val;

  bool hasBirthday() => _birthday != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "phoneNumber" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  set phoneNumber(String? val) => _phoneNumber = val;

  bool hasPhoneNumber() => _phoneNumber != null;

  // "facebookAnonymousId" field.
  String? _facebookAnonymousId;
  String get facebookAnonymousId => _facebookAnonymousId ?? '';
  set facebookAnonymousId(String? val) => _facebookAnonymousId = val;

  bool hasFacebookAnonymousId() => _facebookAnonymousId != null;

  // "amplitudeUserId" field.
  String? _amplitudeUserId;
  String get amplitudeUserId => _amplitudeUserId ?? '';
  set amplitudeUserId(String? val) => _amplitudeUserId = val;

  bool hasAmplitudeUserId() => _amplitudeUserId != null;

  // "amplitudeDeviceId" field.
  String? _amplitudeDeviceId;
  String get amplitudeDeviceId => _amplitudeDeviceId ?? '';
  set amplitudeDeviceId(String? val) => _amplitudeDeviceId = val;

  bool hasAmplitudeDeviceId() => _amplitudeDeviceId != null;

  // "mixpanelUserId" field.
  String? _mixpanelUserId;
  String get mixpanelUserId => _mixpanelUserId ?? '';
  set mixpanelUserId(String? val) => _mixpanelUserId = val;

  bool hasMixpanelUserId() => _mixpanelUserId != null;

  // "appmetricaProfileId" field.
  String? _appmetricaProfileId;
  String get appmetricaProfileId => _appmetricaProfileId ?? '';
  set appmetricaProfileId(String? val) => _appmetricaProfileId = val;

  bool hasAppmetricaProfileId() => _appmetricaProfileId != null;

  // "appmetricaDeviceId" field.
  String? _appmetricaDeviceId;
  String get appmetricaDeviceId => _appmetricaDeviceId ?? '';
  set appmetricaDeviceId(String? val) => _appmetricaDeviceId = val;

  bool hasAppmetricaDeviceId() => _appmetricaDeviceId != null;

  // "oneSignalPlayerId" field.
  String? _oneSignalPlayerId;
  String get oneSignalPlayerId => _oneSignalPlayerId ?? '';
  set oneSignalPlayerId(String? val) => _oneSignalPlayerId = val;

  bool hasOneSignalPlayerId() => _oneSignalPlayerId != null;

  // "pushwooshHWID" field.
  String? _pushwooshHWID;
  String get pushwooshHWID => _pushwooshHWID ?? '';
  set pushwooshHWID(String? val) => _pushwooshHWID = val;

  bool hasPushwooshHWID() => _pushwooshHWID != null;

  // "firebaseAppInstanceId" field.
  String? _firebaseAppInstanceId;
  String get firebaseAppInstanceId => _firebaseAppInstanceId ?? '';
  set firebaseAppInstanceId(String? val) => _firebaseAppInstanceId = val;

  bool hasFirebaseAppInstanceId() => _firebaseAppInstanceId != null;

  // "airbridgeDeviceId" field.
  String? _airbridgeDeviceId;
  String get airbridgeDeviceId => _airbridgeDeviceId ?? '';
  set airbridgeDeviceId(String? val) => _airbridgeDeviceId = val;

  bool hasAirbridgeDeviceId() => _airbridgeDeviceId != null;

  // "appTrackingTransparencyStatus" field.
  AdaptyATTStatus? _appTrackingTransparencyStatus;
  AdaptyATTStatus get appTrackingTransparencyStatus =>
      _appTrackingTransparencyStatus ?? AdaptyATTStatus.notDetermined;
  set appTrackingTransparencyStatus(AdaptyATTStatus? val) =>
      _appTrackingTransparencyStatus = val;

  bool hasAppTrackingTransparencyStatus() =>
      _appTrackingTransparencyStatus != null;

  // "analyticsDisabled" field.
  bool? _analyticsDisabled;
  bool get analyticsDisabled => _analyticsDisabled ?? false;
  set analyticsDisabled(bool? val) => _analyticsDisabled = val;

  bool hasAnalyticsDisabled() => _analyticsDisabled != null;

  // "customStringAttributes" field.
  List<AdaptyCustomStringAttributeStruct>? _customStringAttributes;
  List<AdaptyCustomStringAttributeStruct> get customStringAttributes =>
      _customStringAttributes ?? const [];
  set customStringAttributes(List<AdaptyCustomStringAttributeStruct>? val) =>
      _customStringAttributes = val;

  void updateCustomStringAttributes(
      Function(List<AdaptyCustomStringAttributeStruct>) updateFn) {
    updateFn(_customStringAttributes ??= []);
  }

  bool hasCustomStringAttributes() => _customStringAttributes != null;

  // "customDoubleAttributes" field.
  List<AdaptyCustomDoubleAttributeStruct>? _customDoubleAttributes;
  List<AdaptyCustomDoubleAttributeStruct> get customDoubleAttributes =>
      _customDoubleAttributes ?? const [];
  set customDoubleAttributes(List<AdaptyCustomDoubleAttributeStruct>? val) =>
      _customDoubleAttributes = val;

  void updateCustomDoubleAttributes(
      Function(List<AdaptyCustomDoubleAttributeStruct>) updateFn) {
    updateFn(_customDoubleAttributes ??= []);
  }

  bool hasCustomDoubleAttributes() => _customDoubleAttributes != null;

  static AdaptyProfileParametersStruct fromMap(Map<String, dynamic> data) =>
      AdaptyProfileParametersStruct(
        firstName: data['firstName'] as String?,
        lastName: data['lastName'] as String?,
        gender: data['gender'] is AdaptyGenderEnum
            ? data['gender']
            : deserializeEnum<AdaptyGenderEnum>(data['gender']),
        birthday: data['birthday'] as DateTime?,
        email: data['email'] as String?,
        phoneNumber: data['phoneNumber'] as String?,
        facebookAnonymousId: data['facebookAnonymousId'] as String?,
        amplitudeUserId: data['amplitudeUserId'] as String?,
        amplitudeDeviceId: data['amplitudeDeviceId'] as String?,
        mixpanelUserId: data['mixpanelUserId'] as String?,
        appmetricaProfileId: data['appmetricaProfileId'] as String?,
        appmetricaDeviceId: data['appmetricaDeviceId'] as String?,
        oneSignalPlayerId: data['oneSignalPlayerId'] as String?,
        pushwooshHWID: data['pushwooshHWID'] as String?,
        firebaseAppInstanceId: data['firebaseAppInstanceId'] as String?,
        airbridgeDeviceId: data['airbridgeDeviceId'] as String?,
        appTrackingTransparencyStatus:
            data['appTrackingTransparencyStatus'] is AdaptyATTStatus
                ? data['appTrackingTransparencyStatus']
                : deserializeEnum<AdaptyATTStatus>(
                    data['appTrackingTransparencyStatus']),
        analyticsDisabled: data['analyticsDisabled'] as bool?,
        customStringAttributes: getStructList(
          data['customStringAttributes'],
          AdaptyCustomStringAttributeStruct.fromMap,
        ),
        customDoubleAttributes: getStructList(
          data['customDoubleAttributes'],
          AdaptyCustomDoubleAttributeStruct.fromMap,
        ),
      );

  static AdaptyProfileParametersStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? AdaptyProfileParametersStruct.fromMap(data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'firstName': _firstName,
        'lastName': _lastName,
        'gender': _gender?.serialize(),
        'birthday': _birthday,
        'email': _email,
        'phoneNumber': _phoneNumber,
        'facebookAnonymousId': _facebookAnonymousId,
        'amplitudeUserId': _amplitudeUserId,
        'amplitudeDeviceId': _amplitudeDeviceId,
        'mixpanelUserId': _mixpanelUserId,
        'appmetricaProfileId': _appmetricaProfileId,
        'appmetricaDeviceId': _appmetricaDeviceId,
        'oneSignalPlayerId': _oneSignalPlayerId,
        'pushwooshHWID': _pushwooshHWID,
        'firebaseAppInstanceId': _firebaseAppInstanceId,
        'airbridgeDeviceId': _airbridgeDeviceId,
        'appTrackingTransparencyStatus':
            _appTrackingTransparencyStatus?.serialize(),
        'analyticsDisabled': _analyticsDisabled,
        'customStringAttributes':
            _customStringAttributes?.map((e) => e.toMap()).toList(),
        'customDoubleAttributes':
            _customDoubleAttributes?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'firstName': serializeParam(
          _firstName,
          ParamType.String,
        ),
        'lastName': serializeParam(
          _lastName,
          ParamType.String,
        ),
        'gender': serializeParam(
          _gender,
          ParamType.Enum,
        ),
        'birthday': serializeParam(
          _birthday,
          ParamType.DateTime,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'phoneNumber': serializeParam(
          _phoneNumber,
          ParamType.String,
        ),
        'facebookAnonymousId': serializeParam(
          _facebookAnonymousId,
          ParamType.String,
        ),
        'amplitudeUserId': serializeParam(
          _amplitudeUserId,
          ParamType.String,
        ),
        'amplitudeDeviceId': serializeParam(
          _amplitudeDeviceId,
          ParamType.String,
        ),
        'mixpanelUserId': serializeParam(
          _mixpanelUserId,
          ParamType.String,
        ),
        'appmetricaProfileId': serializeParam(
          _appmetricaProfileId,
          ParamType.String,
        ),
        'appmetricaDeviceId': serializeParam(
          _appmetricaDeviceId,
          ParamType.String,
        ),
        'oneSignalPlayerId': serializeParam(
          _oneSignalPlayerId,
          ParamType.String,
        ),
        'pushwooshHWID': serializeParam(
          _pushwooshHWID,
          ParamType.String,
        ),
        'firebaseAppInstanceId': serializeParam(
          _firebaseAppInstanceId,
          ParamType.String,
        ),
        'airbridgeDeviceId': serializeParam(
          _airbridgeDeviceId,
          ParamType.String,
        ),
        'appTrackingTransparencyStatus': serializeParam(
          _appTrackingTransparencyStatus,
          ParamType.Enum,
        ),
        'analyticsDisabled': serializeParam(
          _analyticsDisabled,
          ParamType.bool,
        ),
        'customStringAttributes': serializeParam(
          _customStringAttributes,
          ParamType.DataStruct,
          isList: true,
        ),
        'customDoubleAttributes': serializeParam(
          _customDoubleAttributes,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static AdaptyProfileParametersStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      AdaptyProfileParametersStruct(
        firstName: deserializeParam(
          data['firstName'],
          ParamType.String,
          false,
        ),
        lastName: deserializeParam(
          data['lastName'],
          ParamType.String,
          false,
        ),
        gender: deserializeParam<AdaptyGenderEnum>(
          data['gender'],
          ParamType.Enum,
          false,
        ),
        birthday: deserializeParam(
          data['birthday'],
          ParamType.DateTime,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        phoneNumber: deserializeParam(
          data['phoneNumber'],
          ParamType.String,
          false,
        ),
        facebookAnonymousId: deserializeParam(
          data['facebookAnonymousId'],
          ParamType.String,
          false,
        ),
        amplitudeUserId: deserializeParam(
          data['amplitudeUserId'],
          ParamType.String,
          false,
        ),
        amplitudeDeviceId: deserializeParam(
          data['amplitudeDeviceId'],
          ParamType.String,
          false,
        ),
        mixpanelUserId: deserializeParam(
          data['mixpanelUserId'],
          ParamType.String,
          false,
        ),
        appmetricaProfileId: deserializeParam(
          data['appmetricaProfileId'],
          ParamType.String,
          false,
        ),
        appmetricaDeviceId: deserializeParam(
          data['appmetricaDeviceId'],
          ParamType.String,
          false,
        ),
        oneSignalPlayerId: deserializeParam(
          data['oneSignalPlayerId'],
          ParamType.String,
          false,
        ),
        pushwooshHWID: deserializeParam(
          data['pushwooshHWID'],
          ParamType.String,
          false,
        ),
        firebaseAppInstanceId: deserializeParam(
          data['firebaseAppInstanceId'],
          ParamType.String,
          false,
        ),
        airbridgeDeviceId: deserializeParam(
          data['airbridgeDeviceId'],
          ParamType.String,
          false,
        ),
        appTrackingTransparencyStatus: deserializeParam<AdaptyATTStatus>(
          data['appTrackingTransparencyStatus'],
          ParamType.Enum,
          false,
        ),
        analyticsDisabled: deserializeParam(
          data['analyticsDisabled'],
          ParamType.bool,
          false,
        ),
        customStringAttributes:
            deserializeStructParam<AdaptyCustomStringAttributeStruct>(
          data['customStringAttributes'],
          ParamType.DataStruct,
          true,
          structBuilder: AdaptyCustomStringAttributeStruct.fromSerializableMap,
        ),
        customDoubleAttributes:
            deserializeStructParam<AdaptyCustomDoubleAttributeStruct>(
          data['customDoubleAttributes'],
          ParamType.DataStruct,
          true,
          structBuilder: AdaptyCustomDoubleAttributeStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'AdaptyProfileParametersStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is AdaptyProfileParametersStruct &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        gender == other.gender &&
        birthday == other.birthday &&
        email == other.email &&
        phoneNumber == other.phoneNumber &&
        facebookAnonymousId == other.facebookAnonymousId &&
        amplitudeUserId == other.amplitudeUserId &&
        amplitudeDeviceId == other.amplitudeDeviceId &&
        mixpanelUserId == other.mixpanelUserId &&
        appmetricaProfileId == other.appmetricaProfileId &&
        appmetricaDeviceId == other.appmetricaDeviceId &&
        oneSignalPlayerId == other.oneSignalPlayerId &&
        pushwooshHWID == other.pushwooshHWID &&
        firebaseAppInstanceId == other.firebaseAppInstanceId &&
        airbridgeDeviceId == other.airbridgeDeviceId &&
        appTrackingTransparencyStatus == other.appTrackingTransparencyStatus &&
        analyticsDisabled == other.analyticsDisabled &&
        listEquality.equals(
            customStringAttributes, other.customStringAttributes) &&
        listEquality.equals(
            customDoubleAttributes, other.customDoubleAttributes);
  }

  @override
  int get hashCode => const ListEquality().hash([
        firstName,
        lastName,
        gender,
        birthday,
        email,
        phoneNumber,
        facebookAnonymousId,
        amplitudeUserId,
        amplitudeDeviceId,
        mixpanelUserId,
        appmetricaProfileId,
        appmetricaDeviceId,
        oneSignalPlayerId,
        pushwooshHWID,
        firebaseAppInstanceId,
        airbridgeDeviceId,
        appTrackingTransparencyStatus,
        analyticsDisabled,
        customStringAttributes,
        customDoubleAttributes
      ]);
}

AdaptyProfileParametersStruct createAdaptyProfileParametersStruct({
  String? firstName,
  String? lastName,
  AdaptyGenderEnum? gender,
  DateTime? birthday,
  String? email,
  String? phoneNumber,
  String? facebookAnonymousId,
  String? amplitudeUserId,
  String? amplitudeDeviceId,
  String? mixpanelUserId,
  String? appmetricaProfileId,
  String? appmetricaDeviceId,
  String? oneSignalPlayerId,
  String? pushwooshHWID,
  String? firebaseAppInstanceId,
  String? airbridgeDeviceId,
  AdaptyATTStatus? appTrackingTransparencyStatus,
  bool? analyticsDisabled,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AdaptyProfileParametersStruct(
      firstName: firstName,
      lastName: lastName,
      gender: gender,
      birthday: birthday,
      email: email,
      phoneNumber: phoneNumber,
      facebookAnonymousId: facebookAnonymousId,
      amplitudeUserId: amplitudeUserId,
      amplitudeDeviceId: amplitudeDeviceId,
      mixpanelUserId: mixpanelUserId,
      appmetricaProfileId: appmetricaProfileId,
      appmetricaDeviceId: appmetricaDeviceId,
      oneSignalPlayerId: oneSignalPlayerId,
      pushwooshHWID: pushwooshHWID,
      firebaseAppInstanceId: firebaseAppInstanceId,
      airbridgeDeviceId: airbridgeDeviceId,
      appTrackingTransparencyStatus: appTrackingTransparencyStatus,
      analyticsDisabled: analyticsDisabled,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AdaptyProfileParametersStruct? updateAdaptyProfileParametersStruct(
  AdaptyProfileParametersStruct? adaptyProfileParameters, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    adaptyProfileParameters
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAdaptyProfileParametersStructData(
  Map<String, dynamic> firestoreData,
  AdaptyProfileParametersStruct? adaptyProfileParameters,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (adaptyProfileParameters == null) {
    return;
  }
  if (adaptyProfileParameters.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue &&
      adaptyProfileParameters.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final adaptyProfileParametersData = getAdaptyProfileParametersFirestoreData(
      adaptyProfileParameters, forFieldValue);
  final nestedData =
      adaptyProfileParametersData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      adaptyProfileParameters.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAdaptyProfileParametersFirestoreData(
  AdaptyProfileParametersStruct? adaptyProfileParameters, [
  bool forFieldValue = false,
]) {
  if (adaptyProfileParameters == null) {
    return {};
  }
  final firestoreData = mapToFirestore(adaptyProfileParameters.toMap());

  // Add any Firestore field values
  adaptyProfileParameters.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAdaptyProfileParametersListFirestoreData(
  List<AdaptyProfileParametersStruct>? adaptyProfileParameterss,
) =>
    adaptyProfileParameterss
        ?.map((e) => getAdaptyProfileParametersFirestoreData(e, true))
        .toList() ??
    [];
