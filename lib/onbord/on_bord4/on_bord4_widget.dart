import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'on_bord4_model.dart';
export 'on_bord4_model.dart';

class OnBord4Widget extends StatefulWidget {
  const OnBord4Widget({super.key});

  static String routeName = 'OnBord4';
  static String routePath = '/onBord4';

  @override
  State<OnBord4Widget> createState() => _OnBord4WidgetState();
}

class _OnBord4WidgetState extends State<OnBord4Widget> {
  late OnBord4Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OnBord4Model());
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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              constraints: BoxConstraints(
                minHeight: MediaQuery.of(context).size.height -
                    MediaQuery.of(context).padding.top -
                    MediaQuery.of(context).padding.bottom,
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20.0, 40.0, 20.0, 40.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      FFLocalizations.of(context).getText(
                        'kjxnvlk4' /* 選んで登録をすすめましょう */,
                      ),
                      style: FlutterFlowTheme.of(context).titleLarge.override(
                            font: GoogleFonts.notoSansJp(
                              fontWeight: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .fontWeight,
                              fontStyle:
                                  FlutterFlowTheme.of(context).titleLarge.fontStyle,
                            ),
                            letterSpacing: 0.0,
                            fontWeight:
                                FlutterFlowTheme.of(context).titleLarge.fontWeight,
                            fontStyle:
                                FlutterFlowTheme.of(context).titleLarge.fontStyle,
                          ),
                    ),
                    SizedBox(height: 40.0),
                    Container(
                      width: double.infinity,
                      constraints: BoxConstraints(
                        maxWidth: 300.0,
                      ),
                      child: AspectRatio(
                        aspectRatio: 1.0,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xFFF6F6F6),
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.asset(
                                  'assets/images/qr-code-37-da293_(1)_1.png',
                                  width: MediaQuery.of(context).size.width * 0.4,
                                  height: MediaQuery.of(context).size.width * 0.4,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'rnwo4vjo' /* 招待を受けた方 */,
                                  ),
                                  style:
                                      FlutterFlowTheme.of(context).titleLarge.override(
                                            font: GoogleFonts.notoSansJp(
                                              fontWeight: FlutterFlowTheme.of(context)
                                                  .titleLarge
                                                  .fontWeight,
                                              fontStyle: FlutterFlowTheme.of(context)
                                                  .titleLarge
                                                  .fontStyle,
                                            ),
                                            letterSpacing: 0.0,
                                            fontWeight: FlutterFlowTheme.of(context)
                                                .titleLarge
                                                .fontWeight,
                                            fontStyle: FlutterFlowTheme.of(context)
                                                .titleLarge
                                                .fontStyle,
                                          ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Container(
                      width: double.infinity,
                      constraints: BoxConstraints(
                        maxWidth: 300.0,
                      ),
                      child: AspectRatio(
                        aspectRatio: 1.0,
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed(RegisterPositionWidget.routeName);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFFF6F6F6),
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    'assets/images/family-1-57_1.png',
                                    width: MediaQuery.of(context).size.width * 0.4,
                                    height: MediaQuery.of(context).size.width * 0.4,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 16.0, 0.0, 0.0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      '6hliki2i' /* パパ・ママ
その他管理者の方 */
                                      ,
                                    ),
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .override(
                                          font: GoogleFonts.notoSansJp(
                                            fontWeight: FlutterFlowTheme.of(context)
                                                .titleLarge
                                                .fontWeight,
                                            fontStyle: FlutterFlowTheme.of(context)
                                                .titleLarge
                                                .fontStyle,
                                          ),
                                          letterSpacing: 0.0,
                                          fontWeight: FlutterFlowTheme.of(context)
                                              .titleLarge
                                              .fontWeight,
                                          fontStyle: FlutterFlowTheme.of(context)
                                              .titleLarge
                                              .fontStyle,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}