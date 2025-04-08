import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'confim_delete_model.dart';
export 'confim_delete_model.dart';

/// RIDER IS DELETING HIS ACCOUNT WE ARE RECONFORMING BY SAYING ONCE U DELETE
/// U CANT SEE UR RIDE HOSTORY AND EVERYTHING WILL BE DELETED
class ConfimDeleteWidget extends StatefulWidget {
  const ConfimDeleteWidget({super.key});

  @override
  State<ConfimDeleteWidget> createState() => _ConfimDeleteWidgetState();
}

class _ConfimDeleteWidgetState extends State<ConfimDeleteWidget> {
  late ConfimDeleteModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ConfimDeleteModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 24.0),
        child: Container(
          width: MediaQuery.sizeOf(context).width * 0.9,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).primaryBackground,
            boxShadow: [
              BoxShadow(
                blurRadius: 4.0,
                color: Color(0x33000000),
                offset: Offset(
                  0.0,
                  2.0,
                ),
                spreadRadius: 0.0,
              )
            ],
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.warning_rounded,
                          color: FlutterFlowTheme.of(context).error,
                          size: 50.0,
                        ),
                      ].divide(SizedBox(width: 10.0)),
                    ),
                    Text(
                      FFLocalizations.of(context).getText(
                        'dcf8y03f' /* Are you sure you want to delet... */,
                      ),
                      style:
                          FlutterFlowTheme.of(context).headlineSmall.override(
                                fontFamily: 'Outfit',
                                color: FlutterFlowTheme.of(context).error,
                                letterSpacing: 0.0,
                              ),
                    ),
                    Text(
                      FFLocalizations.of(context).getText(
                        'fgzaj1tv' /* This action cannot be undone. ... */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            letterSpacing: 0.0,
                          ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Icon(
                              Icons.cancel_rounded,
                              color: FlutterFlowTheme.of(context).error,
                              size: 20.0,
                            ),
                            Text(
                              FFLocalizations.of(context).getText(
                                'fohy2do5' /* Your ride history will be perm... */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ].divide(SizedBox(width: 8.0)),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Icon(
                              Icons.cancel_rounded,
                              color: FlutterFlowTheme.of(context).error,
                              size: 20.0,
                            ),
                            Text(
                              FFLocalizations.of(context).getText(
                                '7n8dv2l5' /* All personal information will ... */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ].divide(SizedBox(width: 8.0)),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Icon(
                              Icons.cancel_rounded,
                              color: FlutterFlowTheme.of(context).error,
                              size: 20.0,
                            ),
                            Text(
                              FFLocalizations.of(context).getText(
                                'g8gwn6eg' /* You'll lose access to any cred... */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ].divide(SizedBox(width: 8.0)),
                        ),
                      ].divide(SizedBox(height: 12.0)),
                    ),
                    Text(
                      FFLocalizations.of(context).getText(
                        'o8o839jt' /* Please confirm that you unders... */,
                      ),
                      style: FlutterFlowTheme.of(context).bodySmall.override(
                            fontFamily: 'Readex Pro',
                            color: FlutterFlowTheme.of(context).secondaryText,
                            letterSpacing: 0.0,
                          ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FFButtonWidget(
                          onPressed: () {
                            print('Button pressed ...');
                          },
                          text: FFLocalizations.of(context).getText(
                            'bgadsd9x' /* Cancel */,
                          ),
                          options: FFButtonOptions(
                            padding: EdgeInsets.all(20.0),
                            iconPadding: EdgeInsets.all(0.0),
                            color: FlutterFlowTheme.of(context).primaryText,
                            textStyle:
                                FlutterFlowTheme.of(context).bodyLarge.override(
                                      fontFamily: 'Readex Pro',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      letterSpacing: 0.0,
                                    ),
                            elevation: 2.0,
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                        ),
                        FFButtonWidget(
                          onPressed: () async {
                            await authManager.deleteUser(context);

                            context.goNamedAuth(
                                A1IntroWidget.routeName, context.mounted);
                          },
                          text: FFLocalizations.of(context).getText(
                            'v274z644' /* Delete Account */,
                          ),
                          options: FFButtonOptions(
                            padding: EdgeInsets.all(20.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).error,
                            textStyle:
                                FlutterFlowTheme.of(context).bodyLarge.override(
                                      fontFamily: 'Readex Pro',
                                      color: FlutterFlowTheme.of(context).info,
                                      letterSpacing: 0.0,
                                    ),
                            elevation: 0.0,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                        ),
                      ].divide(SizedBox(width: 16.0)),
                    ),
                  ].divide(SizedBox(height: 24.0)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
