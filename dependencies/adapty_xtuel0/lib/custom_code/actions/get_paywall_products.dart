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
import '/custom_code/actions/get_products_introductory_offer_eligibility.dart';

var _productsCache = Map<String, AdaptyPaywallProduct>();

void _cacheProduct(AdaptyPaywallProduct product) {
  _productsCache[product.paywallVariationId + "+" + product.vendorProductId] =
      product;
}

AdaptyPaywallProduct? getCachedProduct(
  String paywallVariationId,
  String vendorProductId,
) {
  return _productsCache[paywallVariationId + "+" + vendorProductId];
}

Future<AdaptyGetProductsResultStruct> getPaywallProducts(
    AdaptyPaywallStruct paywall) async {
  try {
    final restoredPaywall = await Adapty().getPaywall(
        placementId: paywall.placementId,
        locale: paywall.locale,
        fetchPolicy: AdaptyPaywallFetchPolicy.returnCacheDataElseLoad);

    final products =
        await Adapty().getPaywallProducts(paywall: restoredPaywall);

    for (var product in products) {
      _cacheProduct(product);
    }

    return AdaptyGetProductsResultStruct(
      value: products.map((element) => element.toFFStruct()).toList(),
    );
  } on AdaptyError catch (adaptyError) {
    return AdaptyGetProductsResultStruct(
      error: adaptyError.toFFStruct(),
    );
  } catch (e) {
    return AdaptyGetProductsResultStruct(
      error: AdaptyErrorStruct(
        errorCode: 0,
        errorMessage: e.toString(),
      ),
    );
  }
}

extension AdaptyPaywallProductToFFStruct on AdaptyPaywallProduct {
  AdaptyPaywallProductStruct toFFStruct() {
    return AdaptyPaywallProductStruct(
      vendorProductId: vendorProductId,
      localizedDescription: localizedDescription,
      localizedTitle: localizedTitle,
      regionCode: regionCode,
      isFamilyShareable: isFamilyShareable,
      paywallVariationId: paywallVariationId,
      paywallABTestName: paywallABTestName,
      paywallName: paywallName,
      price: price.toFFStruct(),
      subscriptionDetails: subscriptionDetails?.toFFStruct(),
    );
  }
}

extension AdaptySubscriptionDetailsToFFStruct on AdaptySubscriptionDetails {
  AdaptySubscriptionDetailsStruct toFFStruct() {
    return AdaptySubscriptionDetailsStruct(
      subscriptionGroupIdentifier: subscriptionGroupIdentifier,
      androidIntroductoryOfferEligibility:
          androidIntroductoryOfferEligibility?.toFFEnum(),
      androidBasePlanId: androidBasePlanId,
      androidOfferId: androidOfferId,
      androidOfferTags: androidOfferTags,
      introductoryOffer: introductoryOffer.map((e) => e.toFFStruct()).toList(),
      promotionalOffer: promotionalOffer?.toFFStruct(),
      renewalType: renewalType.toFFEnum(),
      subscriptionPeriod: subscriptionPeriod.toFFStruct(),
      localizedSubscriptionPeriod: localizedSubscriptionPeriod,
    );
  }
}

extension AdaptySubscriptionPhaseToFFStruct on AdaptySubscriptionPhase {
  AdaptySubscriptionPhaseStruct toFFStruct() {
    return AdaptySubscriptionPhaseStruct(
      price: price.toFFStruct(),
      identifier: identifier,
      numberOfPeriods: numberOfPeriods,
      paymentMode: paymentMode.toFFEnum(),
      subscriptionPeriod: subscriptionPeriod.toFFStruct(),
      localizedSubscriptionPeriod: localizedSubscriptionPeriod,
      localizedNumberOfPeriods: localizedNumberOfPeriods,
    );
  }
}

extension AdaptyPriceToFFStruct on AdaptyPrice {
  AdaptyPriceStruct toFFStruct() {
    return AdaptyPriceStruct(
      amount: amount,
      currencyCode: currencyCode,
      currencySymbol: currencySymbol,
      localizedString: localizedString,
    );
  }
}

extension AdaptyPaymentModeToFFEnum on AdaptyPaymentMode {
  AdaptyPaymentModeEnum toFFEnum() {
    switch (this) {
      case AdaptyPaymentMode.freeTrial:
        return AdaptyPaymentModeEnum.freeTrial;
      case AdaptyPaymentMode.payAsYouGo:
        return AdaptyPaymentModeEnum.payAsYouGo;
      case AdaptyPaymentMode.payUpFront:
        return AdaptyPaymentModeEnum.payUpFront;
      case AdaptyPaymentMode.unknown:
        return AdaptyPaymentModeEnum.unknown;
    }
  }
}

extension AdaptySubscriptionPeriodToFFEnumToFFStruct
    on AdaptySubscriptionPeriod {
  AdaptySubscriptionPeriodStruct toFFStruct() {
    return AdaptySubscriptionPeriodStruct(
      unit: unit.toFFEnum(),
      numberOfUnits: numberOfUnits,
    );
  }
}

extension AdaptyPeriodUnitToFFEnum on AdaptyPeriodUnit {
  AdaptyPeriodUnitEnum toFFEnum() {
    switch (this) {
      case AdaptyPeriodUnit.day:
        return AdaptyPeriodUnitEnum.day;
      case AdaptyPeriodUnit.month:
        return AdaptyPeriodUnitEnum.month;
      case AdaptyPeriodUnit.week:
        return AdaptyPeriodUnitEnum.week;
      case AdaptyPeriodUnit.year:
        return AdaptyPeriodUnitEnum.year;
      case AdaptyPeriodUnit.unknown:
        return AdaptyPeriodUnitEnum.unknown;
    }
  }
}

extension AdaptyRenewalTypeToFFEnum on AdaptyRenewalType {
  AdaptyRenewalTypeEnum toFFEnum() {
    switch (this) {
      case AdaptyRenewalType.autorenewable:
        return AdaptyRenewalTypeEnum.autorenewable;
      case AdaptyRenewalType.prepaid:
        return AdaptyRenewalTypeEnum.prepaid;
    }
  }
}
