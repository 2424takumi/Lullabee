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
import '/custom_code/actions/get_paywall_products.dart';
import '/custom_code/actions/get_profile.dart';

Future<AdaptyMakePurchaseResultStruct> makePurchase(
  AdaptyPaywallProductStruct product,
  AdaptySubscriptionUpdateParametersStruct? subscriptionUpdateParams,
  bool? isOfferPersonalized,
) async {
  final cachedProduct =
      getCachedProduct(product.paywallVariationId, product.vendorProductId);

  if (cachedProduct == null) {
    return AdaptyMakePurchaseResultStruct(
      error: AdaptyErrorStruct(
        errorCode: -1,
        errorMessage: "Product not found",
      ),
    );
  }

  try {
    final profile = await Adapty().makePurchase(
      product: cachedProduct,
      subscriptionUpdateParams: subscriptionUpdateParams?.toAdaptyStruct(),
      isOfferPersonalized: isOfferPersonalized,
    );

    if (profile != null) {
      return AdaptyMakePurchaseResultStruct(
        profile: profile.toFFStruct(),
      );
    } else {
      return AdaptyMakePurchaseResultStruct(
        error: AdaptyErrorStruct(
          errorCode: -1,
          errorMessage: "Purchase failed",
        ),
      );
    }
  } catch (e) {
    return AdaptyMakePurchaseResultStruct(
      error: AdaptyErrorStruct(
        errorCode: 0,
        errorMessage: e.toString(),
      ),
    );
  }
}

extension on AdaptySubscriptionUpdateParametersStruct {
  AdaptyAndroidSubscriptionUpdateParameters toAdaptyStruct() {
    AdaptyAndroidSubscriptionUpdateReplacementMode adaptyReplacementMode;

    switch (this.replacementMode) {
      case AdaptySubscriptionUpdateReplacementMode.withTimeProration:
        adaptyReplacementMode =
            AdaptyAndroidSubscriptionUpdateReplacementMode.withTimeProration;
      case AdaptySubscriptionUpdateReplacementMode.chargeProratedPrice:
        adaptyReplacementMode =
            AdaptyAndroidSubscriptionUpdateReplacementMode.chargeProratedPrice;
      case AdaptySubscriptionUpdateReplacementMode.withoutProration:
        adaptyReplacementMode =
            AdaptyAndroidSubscriptionUpdateReplacementMode.withoutProration;
      case AdaptySubscriptionUpdateReplacementMode.deferred:
        adaptyReplacementMode =
            AdaptyAndroidSubscriptionUpdateReplacementMode.deferred;
      case AdaptySubscriptionUpdateReplacementMode.chargeFullPrice:
        adaptyReplacementMode =
            AdaptyAndroidSubscriptionUpdateReplacementMode.chargeFullPrice;
    }

    return AdaptyAndroidSubscriptionUpdateParameters(
      oldSubVendorProductId,
      adaptyReplacementMode,
    );
  }
}
