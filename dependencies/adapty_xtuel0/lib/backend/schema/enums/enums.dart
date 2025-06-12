import 'package:collection/collection.dart';
import 'package:ff_commons/flutter_flow/enums.dart';
export 'package:ff_commons/flutter_flow/enums.dart';

enum AdaptyPeriodUnitEnum {
  day,
  week,
  month,
  year,
  unknown,
}

enum AdaptyPaymentModeEnum {
  payAsYouGo,
  payUpFront,
  freeTrial,
  unknown,
}

enum AdaptyEligibilityEnum {
  ineligible,
  eligible,
  notApplicable,
}

enum AdaptyRenewalTypeEnum {
  prepaid,
  autorenewable,
}

enum AdaptyGenderEnum {
  none,
  female,
  male,
  other,
}

enum AdaptyATTStatus {
  notDetermined,
  restricted,
  denied,
  authorized,
}

enum AdaptySubscriptionUpdateReplacementMode {
  withTimeProration,
  chargeProratedPrice,
  withoutProration,
  deferred,
  chargeFullPrice,
}

T? deserializeEnum<T>(String? value) {
  switch (T) {
    case (AdaptyPeriodUnitEnum):
      return AdaptyPeriodUnitEnum.values.deserialize(value) as T?;
    case (AdaptyPaymentModeEnum):
      return AdaptyPaymentModeEnum.values.deserialize(value) as T?;
    case (AdaptyEligibilityEnum):
      return AdaptyEligibilityEnum.values.deserialize(value) as T?;
    case (AdaptyRenewalTypeEnum):
      return AdaptyRenewalTypeEnum.values.deserialize(value) as T?;
    case (AdaptyGenderEnum):
      return AdaptyGenderEnum.values.deserialize(value) as T?;
    case (AdaptyATTStatus):
      return AdaptyATTStatus.values.deserialize(value) as T?;
    case (AdaptySubscriptionUpdateReplacementMode):
      return AdaptySubscriptionUpdateReplacementMode.values.deserialize(value)
          as T?;
    default:
      return null;
  }
}
