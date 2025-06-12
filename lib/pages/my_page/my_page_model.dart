import '/custom_component/profile_image/profile_image_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'my_page_widget.dart' show MyPageWidget;
import 'package:flutter/material.dart';

class MyPageModel extends FlutterFlowModel<MyPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for ProfileImage component.
  late ProfileImageModel profileImageModel;

  @override
  void initState(BuildContext context) {
    profileImageModel = createModel(context, () => ProfileImageModel());
  }

  @override
  void dispose() {
    profileImageModel.dispose();
  }
}
