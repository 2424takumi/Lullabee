import '/flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'profile_image_model.dart';
export 'profile_image_model.dart';

class ProfileImageWidget extends StatefulWidget {
  const ProfileImageWidget({super.key});

  @override
  State<ProfileImageWidget> createState() => _ProfileImageWidgetState();
}

class _ProfileImageWidgetState extends State<ProfileImageWidget> {
  late ProfileImageModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProfileImageModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 65.0,
      height: 65.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).accent2,
        shape: BoxShape.circle,
        border: Border.all(
          color: FlutterFlowTheme.of(context).secondary,
          width: 2.0,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(2.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50.0),
          child: CachedNetworkImage(
            fadeInDuration: Duration(milliseconds: 500),
            fadeOutDuration: Duration(milliseconds: 500),
            imageUrl:
                'https://images.unsplash.com/photo-1531123414780-f74242c2b052?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDV8fHByb2ZpbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60',
            width: 60.0,
            height: 60.0,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
