// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:adapty_flutter/adapty_flutter.dart';
import '/custom_code/actions/get_profile.dart';

Future<AdaptyErrorStruct?> updateProfile(
  AdaptyProfileParametersStruct params,
) async {
  final builder = AdaptyProfileParametersBuilder()
    ..setFirstName(params.hasFirstName() ? params.firstName : null)
    ..setLastName(params.hasLastName() ? params.lastName : null)
    ..setBirthday(params.birthday)
    ..setGender(params.gender.toAdaptyGender())
    ..setEmail(params.hasEmail() ? params.email : null)
    ..setAirbridgeDeviceId(
        params.hasAirbridgeDeviceId() ? params.airbridgeDeviceId : null)
    ..setPhoneNumber(params.hasPhoneNumber() ? params.phoneNumber : null)
    ..setFacebookAnonymousId(
        params.hasFacebookAnonymousId() ? params.facebookAnonymousId : null)
    ..setAmplitudeUserId(
        params.hasAmplitudeUserId() ? params.amplitudeUserId : null)
    ..setAmplitudeDeviceId(
        params.hasAmplitudeDeviceId() ? params.amplitudeDeviceId : null)
    ..setMixpanelUserId(
        params.hasMixpanelUserId() ? params.mixpanelUserId : null)
    ..setAppmetricaProfileId(
        params.hasAppmetricaProfileId() ? params.appmetricaProfileId : null)
    ..setAppmetricaDeviceId(
        params.hasAppmetricaDeviceId() ? params.appmetricaDeviceId : null)
    ..setOneSignalPlayerId(
        params.hasOneSignalPlayerId() ? params.oneSignalPlayerId : null)
    ..setPushwooshHWID(params.hasPushwooshHWID() ? params.pushwooshHWID : null)
    ..setFirebaseAppInstanceId(
        params.hasFirebaseAppInstanceId() ? params.firebaseAppInstanceId : null)
    ..setAirbridgeDeviceId(
        params.hasAirbridgeDeviceId() ? params.airbridgeDeviceId : null)
    ..setAppTrackingTransparencyStatus(
        params.appTrackingTransparencyStatus.toAdaptyStatus())
    ..setAnalyticsDisabled(params.analyticsDisabled);

  for (var stringParam in params.customStringAttributes) {
    builder.setCustomStringAttribute(stringParam.value, stringParam.key);
  }

  for (var doubleParam in params.customDoubleAttributes) {
    builder.setCustomDoubleAttribute(doubleParam.value, doubleParam.key);
  }

  try {
    await Adapty().updateProfile(builder.build());
    return null;
  } on AdaptyError catch (adaptyError) {
    return adaptyError.toFFStruct();
  } catch (e) {
    return AdaptyErrorStruct(
      errorCode: 0,
      errorMessage: e.toString(),
    );
  }
}

extension AdaptyATTStatusToFFEnum on AdaptyATTStatus {
  AdaptyIOSAppTrackingTransparencyStatus toAdaptyStatus() {
    switch (this) {
      case AdaptyATTStatus.notDetermined:
        return AdaptyIOSAppTrackingTransparencyStatus.notDetermined;
      case AdaptyATTStatus.restricted:
        return AdaptyIOSAppTrackingTransparencyStatus.restricted;
      case AdaptyATTStatus.denied:
        return AdaptyIOSAppTrackingTransparencyStatus.denied;
      case AdaptyATTStatus.authorized:
        return AdaptyIOSAppTrackingTransparencyStatus.authorized;
    }
  }
}

extension AdaptyGenderEnumToFFEnum on AdaptyGenderEnum {
  AdaptyProfileGender? toAdaptyGender() {
    switch (this) {
      case AdaptyGenderEnum.female:
        return AdaptyProfileGender.female;
      case AdaptyGenderEnum.male:
        return AdaptyProfileGender.male;
      case AdaptyGenderEnum.other:
        return AdaptyProfileGender.other;
      case AdaptyGenderEnum.none:
        return null;
    }
  }
}
