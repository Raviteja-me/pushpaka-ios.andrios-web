import '/auth/firebase_auth/auth_util.dart';
import '/components/confim_delete_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'a6user_profile_to_edit_model.dart';
export 'a6user_profile_to_edit_model.dart';

/// create a omponent whre user see his details like gender name and
/// mobilenumber with beaytiful icons black and white
class A6userProfileToEditWidget extends StatefulWidget {
  const A6userProfileToEditWidget({super.key});

  @override
  State<A6userProfileToEditWidget> createState() =>
      _A6userProfileToEditWidgetState();
}

class _A6userProfileToEditWidgetState extends State<A6userProfileToEditWidget> {
  late A6userProfileToEditModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => A6userProfileToEditModel());

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
      child: Container(
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryBackground,
          borderRadius: BorderRadius.circular(24.0),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: 50.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryText,
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: Icon(
                      Icons.person,
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      size: 30.0,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AuthUserStreamWidget(
                          builder: (context) => Text(
                            currentUserDisplayName,
                            style: FlutterFlowTheme.of(context)
                                .headlineSmall
                                .override(
                                  fontFamily: 'Outfit',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                        Text(
                          FFLocalizations.of(context).getText(
                            'p6tieyh9' /* Personal Details */,
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodySmall
                              .override(
                                fontFamily: 'Readex Pro',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                letterSpacing: 0.0,
                              ),
                        ),
                      ],
                    ),
                  ),
                ].divide(SizedBox(width: 12.0)),
              ),
              Container(
                height: 1.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).alternate,
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Icon(
                    Icons.wc,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 40.0,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          FFLocalizations.of(context).getText(
                            'hg4sttv7' /* Gender */,
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodySmall
                              .override(
                                fontFamily: 'Readex Pro',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                fontSize: 16.0,
                                letterSpacing: 0.0,
                              ),
                        ),
                        AuthUserStreamWidget(
                          builder: (context) => Text(
                            valueOrDefault(currentUserDocument?.gender, ''),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontSize: 20.0,
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ].divide(SizedBox(width: 12.0)),
              ),
              Container(
                height: 1.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).alternate,
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Icon(
                    Icons.phone,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 40.0,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          FFLocalizations.of(context).getText(
                            'dq7ig3lg' /* Mobile Number */,
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodySmall
                              .override(
                                fontFamily: 'Readex Pro',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                fontSize: 16.0,
                                letterSpacing: 0.0,
                              ),
                        ),
                        AuthUserStreamWidget(
                          builder: (context) => Text(
                            currentPhoneNumber,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontSize: 20.0,
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ].divide(SizedBox(width: 12.0)),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(4.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        await showModalBottomSheet(
                          isScrollControlled: true,
                          backgroundColor: Colors.transparent,
                          enableDrag: false,
                          context: context,
                          builder: (context) {
                            return Padding(
                              padding: MediaQuery.viewInsetsOf(context),
                              child: ConfimDeleteWidget(),
                            );
                          },
                        ).then((value) => safeSetState(() {}));
                      },
                      text: FFLocalizations.of(context).getText(
                        '26fav7zq' /* Delete Profile */,
                      ),
                      options: FFButtonOptions(
                        width: 141.0,
                        height: 42.0,
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: Color(0xFFA90000),
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                        elevation: 3.0,
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(12.0),
                    child: FFButtonWidget(
                      onPressed: () {
                        print('Button pressed ...');
                      },
                      text: FFLocalizations.of(context).getText(
                        '3qy7v7pt' /* Edit Profile */,
                      ),
                      options: FFButtonOptions(
                        width: 141.0,
                        height: 42.0,
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).primaryText,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Readex Pro',
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  letterSpacing: 0.0,
                                ),
                        elevation: 2.0,
                        borderSide: BorderSide(
                          color: Color(0xFFF8F8F8),
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ],
              ),
            ].divide(SizedBox(height: 16.0)),
          ),
        ),
      ),
    );
  }
}
