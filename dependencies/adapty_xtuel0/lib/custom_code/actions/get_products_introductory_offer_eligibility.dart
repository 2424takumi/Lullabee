// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:collection/collection.dart';

import 'package:adapty_flutter/adapty_flutter.dart';
import '/custom_code/actions/get_paywall_products.dart';

Future<AdaptyGetIntroEligibilitiesResultStruct>
    getProductsIntroductoryOfferEligibility(
  List<AdaptyPaywallProductStruct> products,
) async {
  final adaptyProducts = products
      .map(
        (p) => getCachedProduct(
          p.paywallVariationId,
          p.vendorProductId,
        ),
      )
      .whereNotNull()
      .toList();

  try {
    final result = await Adapty().getProductsIntroductoryOfferEligibility(
      products: adaptyProducts,
    );

    final flatResult = result.entries
        .map(
          (e) => AdaptyProductIntroEligibilityStruct(
            vendorProductId: e.key,
            eligibility: e.value.toFFEnum(),
          ),
        )
        .toList();

    return AdaptyGetIntroEligibilitiesResultStruct(
      value: flatResult,
    );
  } catch (e) {
    return AdaptyGetIntroEligibilitiesResultStruct(
      error: AdaptyErrorStruct(
        errorCode: 0,
        errorMessage: e.toString(),
      ),
    );
  }
}

extension AdaptyEligibilityToFFEnum on AdaptyEligibility {
  AdaptyEligibilityEnum toFFEnum() {
    switch (this) {
      case AdaptyEligibility.eligible:
        return AdaptyEligibilityEnum.eligible;
      case AdaptyEligibility.ineligible:
        return AdaptyEligibilityEnum.ineligible;
      case AdaptyEligibility.notApplicable:
        return AdaptyEligibilityEnum.notApplicable;
    }
  }
}
