import '/components/text_input_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'register_user_name_widget.dart' show RegisterUserNameWidget;
import 'package:flutter/material.dart';

class RegisterUserNameModel extends FlutterFlowModel<RegisterUserNameWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for textInput component.
  late TextInputModel textInputModel;

  @override
  void initState(BuildContext context) {
    textInputModel = createModel(context, () => TextInputModel());
  }

  @override
  void dispose() {
    textInputModel.dispose();
  }
}
