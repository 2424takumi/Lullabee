import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'splash_widget.dart' show SplashWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SplashModel extends FlutterFlowModel<SplashWidget> {
  ///  Local state fields for this page.

  AdaptyPaywallStruct? currentPaywall;
  void updateCurrentPaywallStruct(Function(AdaptyPaywallStruct) updateFn) {
    updateFn(currentPaywall ??= AdaptyPaywallStruct());
  }

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - getProfile] action in Button widget.
  AdaptyGetProfileResultStruct? getProfileResult;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();
  }

  /// Action blocks.
  Future getPaywallActionBlock(BuildContext context) async {
    AdaptyGetPaywallResultStruct? getPaywallResult;

    getPaywallResult = await actions.getPaywall(
      textController2.text,
      textController3.text,
    );
    if (getPaywallResult!.hasValue()) {
      currentPaywall = getPaywallResult?.value;
      return;
    } else {
      await showDialog(
        context: context,
        builder: (alertDialogContext) {
          return AlertDialog(
            title: Text('Error!'),
            content: Text(valueOrDefault<String>(
              getPaywallResult?.error?.errorMessage,
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
