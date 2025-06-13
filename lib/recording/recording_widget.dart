import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/permissions_util.dart';
import '/index.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:record/record.dart';
import 'recording_model.dart';
export 'recording_model.dart';

class RecordingWidget extends StatefulWidget {
  const RecordingWidget({super.key});

  static String routeName = 'recording';
  static String routePath = '/recording';

  @override
  State<RecordingWidget> createState() => _RecordingWidgetState();
}

class _RecordingWidgetState extends State<RecordingWidget> {
  late RecordingModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RecordingModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
          title: Text(
            'Recorder',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  font: GoogleFonts.notoSansJp(
                    fontWeight:
                        FlutterFlowTheme.of(context).headlineMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                  ),
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).headlineMedium.fontWeight,
                  fontStyle:
                      FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 0.0,
        ),
        extendBodyBehindAppBar: true,
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFFFF6B9D),
                Color(0xFFFECA57),
              ],
              stops: [0.0, 1.0],
              begin: AlignmentDirectional(0.0, -1.0),
              end: AlignmentDirectional(0.0, 1.0),
            ),
          ),
          child: SafeArea(
            top: true,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Center(
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        if (FFAppState().isRecordingState)
                          Container(
                            width: 200.0,
                            height: 200.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Color(0xFFFF4757).withOpacity(0.3),
                                width: 2.0,
                              ),
                            ),
                          ),
                        InkWell(
                          onTap: () async {
                            if (!FFAppState().isRecordingState) {
                              await requestPermission(microphonePermission);
                              if (await getPermissionStatus(microphonePermission)) {
                                await startAudioRecording(
                                  context,
                                  audioRecorder: _model.audioRecorder ??= AudioRecorder(),
                                );

                                FFAppState().isRecordingState = true;
                                safeSetState(() {});
                              }
                            } else {
                              await stopAudioRecording(
                                audioRecorder: _model.audioRecorder,
                                audioName: 'recordedFileBytes',
                                onRecordingComplete: (audioFilePath, audioBytes) {
                                  _model.myrecording = audioFilePath;
                                  _model.recordedFileBytes = audioBytes;
                                },
                              );

                              FFAppState().isRecordingState = false;
                              safeSetState(() {});

                              context.pushNamed(
                                PostWidget.routeName,
                                queryParameters: {
                                  'postrecording': serializeParam(
                                    _model.myrecording,
                                    ParamType.String,
                                  ),
                                }.withoutNulls,
                              );
                            }
                          },
                          borderRadius: BorderRadius.circular(100.0),
                          child: Container(
                            width: 180.0,
                            height: 180.0,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: FFAppState().isRecordingState
                                    ? Color(0xFFFF4757)
                                    : Colors.white.withOpacity(0.3),
                                width: 3.0,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 20.0,
                                  color: Color(0x33000000),
                                  offset: Offset(
                                    0.0,
                                    10.0,
                                  ),
                                  spreadRadius: 0.0,
                                )
                              ],
                            ),
                            child: Center(
                              child: Icon(
                                FFAppState().isRecordingState
                                    ? Icons.stop_rounded
                                    : Icons.mic_rounded,
                                color: FFAppState().isRecordingState
                                    ? Color(0xFFFF4757)
                                    : Color(0xFF9E9E9E),
                                size: 64.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
