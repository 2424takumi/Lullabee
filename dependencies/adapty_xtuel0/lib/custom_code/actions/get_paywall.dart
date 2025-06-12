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

var _paywallsCache = Map<String, AdaptyPaywall>();

void _cachePaywall(AdaptyPaywall paywall) {
  final uid = '${paywall.variationId}+${paywall.locale}';
  _paywallsCache[uid] = paywall;
}

AdaptyPaywall? getCachedPaywall(
  String variationId,
  String locale,
) {
  final uid = '${variationId}+${locale}';
  return _paywallsCache[uid];
}

Future<AdaptyGetPaywallResultStruct?> getPaywall(
  String placementId,
  String? locale,
) async {
  try {
    final result = await Adapty().getPaywall(
      placementId: placementId,
      locale: locale,
    );

    _cachePaywall(result);

    return AdaptyGetPaywallResultStruct(
      value: result.toFFStruct(),
    );
  } on AdaptyError catch (adaptyError) {
    return AdaptyGetPaywallResultStruct(
      error: adaptyError.toFFStruct(),
    );
  } catch (e) {
    return AdaptyGetPaywallResultStruct(
      error: AdaptyErrorStruct(
        errorCode: 0,
        errorMessage: e.toString(),
      ),
    );
  }
}

extension AdaptyPaywallToFFStruct on AdaptyPaywall {
  AdaptyPaywallStruct toFFStruct() {
    return AdaptyPaywallStruct(
      placementId: placementId,
      name: name,
      abTestName: abTestName,
      variationId: variationId,
      revision: revision,
      locale: locale,
      vendorProductIds: vendorProductIds,
    );
  }
}
