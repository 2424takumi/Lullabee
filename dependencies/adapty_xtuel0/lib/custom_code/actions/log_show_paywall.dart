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
import '/custom_code/actions/get_paywall.dart';
import '/custom_code/actions/get_profile.dart';

Future<AdaptyErrorStruct?> logShowPaywall(
  AdaptyPaywallStruct paywall,
) async {
  final cachedPaywall = getCachedPaywall(
    paywall.variationId,
    paywall.locale,
  );

  if (cachedPaywall == null) {
    return AdaptyErrorStruct(
      errorCode: -1,
      errorMessage: "Paywall not found",
    );
  }

  try {
    await Adapty().logShowPaywall(paywall: cachedPaywall);
    return null;
  } on AdaptyError catch (adaptyError) {
    return adaptyError.toFFStruct();
  } catch (e) {
    return AdaptyErrorStruct(
      errorCode: 0,
      errorMessage: "Unknown Plugin Error",
    );
  }
}
