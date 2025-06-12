import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import 'paywall_page_widget.dart' show PaywallPageWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PaywallPageModel extends FlutterFlowModel<PaywallPageWidget> {
  ///  Local state fields for this page.

  List<AdaptyPaywallProductStruct> currentProducts = [];
  void addToCurrentProducts(AdaptyPaywallProductStruct item) =>
      currentProducts.add(item);
  void removeFromCurrentProducts(AdaptyPaywallProductStruct item) =>
      currentProducts.remove(item);
  void removeAtIndexFromCurrentProducts(int index) =>
      currentProducts.removeAt(index);
  void insertAtIndexInCurrentProducts(
          int index, AdaptyPaywallProductStruct item) =>
      currentProducts.insert(index, item);
  void updateCurrentProductsAtIndex(
          int index, Function(AdaptyPaywallProductStruct) updateFn) =>
      currentProducts[index] = updateFn(currentProducts[index]);

  List<AdaptyProductIntroEligibilityStruct> currentIntroEligibilities = [];
  void addToCurrentIntroEligibilities(
          AdaptyProductIntroEligibilityStruct item) =>
      currentIntroEligibilities.add(item);
  void removeFromCurrentIntroEligibilities(
          AdaptyProductIntroEligibilityStruct item) =>
      currentIntroEligibilities.remove(item);
  void removeAtIndexFromCurrentIntroEligibilities(int index) =>
      currentIntroEligibilities.removeAt(index);
  void insertAtIndexInCurrentIntroEligibilities(
          int index, AdaptyProductIntroEligibilityStruct item) =>
      currentIntroEligibilities.insert(index, item);
  void updateCurrentIntroEligibilitiesAtIndex(
          int index, Function(AdaptyProductIntroEligibilityStruct) updateFn) =>
      currentIntroEligibilities[index] =
          updateFn(currentIntroEligibilities[index]);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Action blocks.
  Future getProductsActionBlock(BuildContext context) async {
    AdaptyGetProductsResultStruct? currentPaywallProducts;

    currentPaywallProducts = await actions.getPaywallProducts(
      widget!.paywall!,
    );
    if (currentPaywallProducts!.hasValue()) {
      currentProducts = currentPaywallProducts!.value
          .toList()
          .cast<AdaptyPaywallProductStruct>();
      return;
    } else {
      await showDialog(
        context: context,
        builder: (alertDialogContext) {
          return AlertDialog(
            title: Text('Error!'),
            content: Text(valueOrDefault<String>(
              currentPaywallProducts?.error?.errorMessage,
              'message: null',
            )),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(alertDialogContext),
                child: Text('Ok'),
              ),
            ],
          );
        },
      );
      return;
    }
  }

  Future getProductsEligibilitiesActionBlock(BuildContext context) async {
    AdaptyGetIntroEligibilitiesResultStruct? currentProductsIntroElegibilities;

    currentProductsIntroElegibilities =
        await actions.getProductsIntroductoryOfferEligibility(
      currentProducts.toList(),
    );
    if (currentProductsIntroElegibilities!.hasValue()) {
      currentIntroEligibilities = currentProductsIntroElegibilities!.value
          .toList()
          .cast<AdaptyProductIntroEligibilityStruct>();
      return;
    } else {
      await showDialog(
        context: context,
        builder: (alertDialogContext) {
          return AlertDialog(
            title: Text('Error!'),
            content: Text(valueOrDefault<String>(
              currentProductsIntroElegibilities?.error?.errorMessage,
              'message: null',
            )),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(alertDialogContext),
                child: Text('Ok'),
              ),
            ],
          );
        },
      );
      return;
    }
  }
}
