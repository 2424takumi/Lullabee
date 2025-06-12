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

Future<AdaptyGetProfileResultStruct> getProfile() async {
  try {
    final result = await Adapty().getProfile();

    return AdaptyGetProfileResultStruct(profile: result.toFFStruct());
  } on AdaptyError catch (adaptyError) {
    return AdaptyGetProfileResultStruct(error: adaptyError.toFFStruct());
  } catch (e) {
    return AdaptyGetProfileResultStruct(
      error: AdaptyErrorStruct(
        errorCode: 0,
        errorMessage: e.toString(),
      ),
    );
  }
}

extension AdaptyErrorToFFStruct on AdaptyError {
  AdaptyErrorStruct toFFStruct() {
    return AdaptyErrorStruct(
      errorCode: code,
      errorMessage: message,
    );
  }
}

extension AdaptyProfileToFFStruct on AdaptyProfile {
  AdaptyProfileStruct toFFStruct() {
    return AdaptyProfileStruct(
      profileId: profileId,
      customerUserId: customerUserId,
      accessLevels: accessLevels.entries
          .map(
            (entry) => AdaptyAccessLevelIdentifiersStruct(
              accessLevelIdentifier: entry.key,
              accessLevel: entry.value.toFFStruct(),
            ),
          )
          .toList(),
      subscriptions: subscriptions.entries
          .map(
            (entry) => MapKeySubscriptionsStruct(
              key: entry.key,
              subscription: entry.value.toFFStruct(),
            ),
          )
          .toList(),
      nonSubscriptions: nonSubscriptions.entries
          .map(
            (entry) => MapKeyNonSubscriptionsStruct(
              key: entry.key,
              value: entry.value.map((item) => item.toFFStruct()).toList(),
            ),
          )
          .toList(),
    );
  }
}

extension AdaptySubscriptionToFFStruct on AdaptySubscription {
  AdaptySubscriptionStruct toFFStruct() {
    return AdaptySubscriptionStruct(
      store: store,
      vendorProductId: vendorProductId,
      vendorTransactionId: vendorTransactionId,
      vendorOriginalTransactionId: vendorOriginalTransactionId,
      isActive: isActive,
      isLifetime: isLifetime,
      activatedAt: activatedAt,
      renewedAt: renewedAt,
      expiresAt: expiresAt,
      startsAt: startsAt,
      unsubscribedAt: unsubscribedAt,
      billingIssueDetectedAt: billingIssueDetectedAt,
      isInGracePeriod: isInGracePeriod,
      isSandbox: isSandbox,
      isRefund: isRefund,
      willRenew: willRenew,
      activeIntroductoryOfferType: activeIntroductoryOfferType,
      activePromotionalOfferType: activePromotionalOfferType,
      activePromotionalOfferId: activePromotionalOfferId,
      offerId: offerId,
      cancellationReason: cancellationReason,
    );
  }
}

extension AdaptyNonSubscriptionToFFStruct on AdaptyNonSubscription {
  AdaptyNonSubscriptionStruct toFFStruct() {
    return AdaptyNonSubscriptionStruct(
      purchaseId: purchaseId,
      store: store,
      vendorProductId: vendorProductId,
      vendorTransactionId: vendorTransactionId,
      purchasedAt: purchasedAt,
      isSandbox: isSandbox,
      isRefund: isRefund,
      isConsumable: isConsumable,
    );
  }
}

extension AdaptyAccessLevelToFFStruct on AdaptyAccessLevel {
  AdaptyAccessLevelStruct toFFStruct() {
    return AdaptyAccessLevelStruct(
      id: id,
      isActive: isActive,
      vendorProductId: vendorProductId,
      store: store,
      activatedAt: activatedAt,
      renewedAt: renewedAt,
      expiresAt: expiresAt,
      isLifetime: isLifetime,
      activeIntroductoryOfferType: activeIntroductoryOfferType,
      activePromotionalOfferType: activePromotionalOfferType,
      activePromotionalOfferId: activePromotionalOfferId,
      offerId: offerId,
      willRenew: willRenew,
      isInGracePeriod: isInGracePeriod,
      unsubscribedAt: unsubscribedAt,
      billingIssueDetectedAt: billingIssueDetectedAt,
      startsAt: startsAt,
      cancellationReason: cancellationReason,
      isRefund: isRefund,
    );
  }
}
