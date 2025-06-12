import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'recording_widget.dart' show RecordingWidget;
import 'package:flutter/material.dart';
import 'package:record/record.dart';

class RecordingModel extends FlutterFlowModel<RecordingWidget> {
  ///  State fields for stateful widgets in this page.

  AudioRecorder? audioRecorder;
  String? myrecording;
  FFUploadedFile recordedFileBytes =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
