import "package:shadcn_u_i_kit_v48jv9/backend/schema/enums/enums.dart"
    as shadcn_u_i_kit_v48jv9_enums;
import "package:adapty_xtuel0/backend/schema/enums/enums.dart"
    as adapty_xtuel0_enums;
import 'package:ff_commons/flutter_flow/enums.dart';
export 'package:ff_commons/flutter_flow/enums.dart';

/// どの立場の人か。ママ、パパなど
enum Position {
  mom,
  pap,
  other,
  noPosition,
}

T? deserializeEnum<T>(String? value) {
  switch (T) {
    case (Position):
      return Position.values.deserialize(value) as T?;
    case (shadcn_u_i_kit_v48jv9_enums.ButtonVariant):
      return shadcn_u_i_kit_v48jv9_enums.ButtonVariant.values.deserialize(value)
          as T?;
    case (shadcn_u_i_kit_v48jv9_enums.BadgeVariant):
      return shadcn_u_i_kit_v48jv9_enums.BadgeVariant.values.deserialize(value)
          as T?;
    case (adapty_xtuel0_enums.AdaptyPeriodUnitEnum):
      return adapty_xtuel0_enums.AdaptyPeriodUnitEnum.values.deserialize(value)
          as T?;
    case (adapty_xtuel0_enums.AdaptyPaymentModeEnum):
      return adapty_xtuel0_enums.AdaptyPaymentModeEnum.values.deserialize(value)
          as T?;
    case (adapty_xtuel0_enums.AdaptyEligibilityEnum):
      return adapty_xtuel0_enums.AdaptyEligibilityEnum.values.deserialize(value)
          as T?;
    case (adapty_xtuel0_enums.AdaptyRenewalTypeEnum):
      return adapty_xtuel0_enums.AdaptyRenewalTypeEnum.values.deserialize(value)
          as T?;
    case (adapty_xtuel0_enums.AdaptyGenderEnum):
      return adapty_xtuel0_enums.AdaptyGenderEnum.values.deserialize(value)
          as T?;
    case (adapty_xtuel0_enums.AdaptyATTStatus):
      return adapty_xtuel0_enums.AdaptyATTStatus.values.deserialize(value)
          as T?;
    case (adapty_xtuel0_enums.AdaptySubscriptionUpdateReplacementMode):
      return adapty_xtuel0_enums.AdaptySubscriptionUpdateReplacementMode.values
          .deserialize(value) as T?;
    default:
      return null;
  }
}
