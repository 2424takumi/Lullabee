import '/flutter_flow/flutter_flow_util.dart';
import 'login_mail_widget.dart' show LoginMailWidget;
import 'package:flutter/material.dart';

class LoginMailModel extends FlutterFlowModel<LoginMailWidget> {
  final unfocusNode = FocusNode();
  
  TextEditingController? emailController;
  String? Function(BuildContext, String?)? emailControllerValidator;
  FocusNode? emailFocusNode;
  
  TextEditingController? passwordController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordControllerValidator;
  FocusNode? passwordFocusNode;

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
  }

  @override
  void dispose() {
    emailController?.dispose();
    emailFocusNode?.dispose();
    passwordController?.dispose();
    passwordFocusNode?.dispose();
  }
}