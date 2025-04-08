import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'a1policy_component_model.dart';
export 'a1policy_component_model.dart';

/// policy component
class A1policyComponentWidget extends StatefulWidget {
  const A1policyComponentWidget({super.key});

  @override
  State<A1policyComponentWidget> createState() =>
      _A1policyComponentWidgetState();
}

class _A1policyComponentWidgetState extends State<A1policyComponentWidget> {
  late A1policyComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => A1policyComponentModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
      child: Container(
        width: double.infinity,
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
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'yct7yury' /* Privacy Policy */,
                        ),
                        style:
                            FlutterFlowTheme.of(context).headlineSmall.override(
                                  fontFamily: 'Outfit',
                                  letterSpacing: 0.0,
                                ),
                      ),
                    ),
                    Icon(
                      Icons.privacy_tip_rounded,
                      color: FlutterFlowTheme.of(context).success,
                      size: 24.0,
                    ),
                  ].divide(SizedBox(width: 8.0)),
                ),
                Text(
                  FFLocalizations.of(context).getText(
                    'fh00nrq1' /* Last updated: November 7, 2024 */,
                  ),
                  style: FlutterFlowTheme.of(context).bodySmall.override(
                        fontFamily: 'Readex Pro',
                        color: FlutterFlowTheme.of(context).secondaryText,
                        letterSpacing: 0.0,
                      ),
                ),
                Text(
                  FFLocalizations.of(context).getText(
                    'j36ro2up' /* Overview: */,
                  ),
                  style: FlutterFlowTheme.of(context).bodySmall.override(
                        fontFamily: 'Readex Pro',
                        color: FlutterFlowTheme.of(context).secondaryText,
                        fontSize: 14.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                      ),
                ),
                Text(
                  FFLocalizations.of(context).getText(
                    'cqgcazct' /* We respect your privacy and ar... */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        color: FlutterFlowTheme.of(context).secondaryText,
                        fontSize: 10.0,
                        letterSpacing: 0.0,
                      ),
                ),
                Text(
                  FFLocalizations.of(context).getText(
                    'q4ypmefo' /* Your Rights: */,
                  ),
                  style: FlutterFlowTheme.of(context).bodySmall.override(
                        fontFamily: 'Readex Pro',
                        color: FlutterFlowTheme.of(context).secondaryText,
                        fontSize: 14.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                      ),
                ),
                Text(
                  FFLocalizations.of(context).getText(
                    'bom4bdla' /* You have the right to delete y... */,
                  ),
                  style: FlutterFlowTheme.of(context).bodySmall.override(
                        fontFamily: 'Readex Pro',
                        color: FlutterFlowTheme.of(context).secondaryText,
                        fontSize: 10.0,
                        letterSpacing: 0.0,
                      ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      FFLocalizations.of(context).getText(
                        'qccxabja' /* Information We Collect: */,
                      ),
                      style: FlutterFlowTheme.of(context).titleSmall.override(
                            fontFamily: 'Readex Pro',
                            color: FlutterFlowTheme.of(context).primaryText,
                            fontSize: 14.0,
                            letterSpacing: 0.0,
                          ),
                    ),
                    Text(
                      FFLocalizations.of(context).getText(
                        '6oyu8vyw' /* Contact Information: Details l... */,
                      ),
                      style: FlutterFlowTheme.of(context).bodySmall.override(
                            fontFamily: 'Readex Pro',
                            fontSize: 10.0,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ].divide(SizedBox(height: 8.0)),
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      FFLocalizations.of(context).getText(
                        'rp204b83' /* How We Use Your Information: */,
                      ),
                      style: FlutterFlowTheme.of(context).titleSmall.override(
                            fontFamily: 'Readex Pro',
                            color: FlutterFlowTheme.of(context).primaryText,
                            fontSize: 14.0,
                            letterSpacing: 0.0,
                          ),
                    ),
                    Text(
                      FFLocalizations.of(context).getText(
                        'ersbmzr5' /* We use your information strict... */,
                      ),
                      style: FlutterFlowTheme.of(context).bodySmall.override(
                            fontFamily: 'Readex Pro',
                            fontSize: 10.0,
                            letterSpacing: 0.0,
                          ),
                    ),
                    Divider(
                      thickness: 2.0,
                      color: FlutterFlowTheme.of(context).alternate,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Theme(
                          data: ThemeData(
                            checkboxTheme: CheckboxThemeData(
                              visualDensity: VisualDensity.compact,
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                            ),
                            unselectedWidgetColor: Color(0xFF595959),
                          ),
                          child: Checkbox(
                            value: _model.checkboxValue ??= false,
                            onChanged: (newValue) async {
                              safeSetState(
                                  () => _model.checkboxValue = newValue!);
                            },
                            side: BorderSide(
                              width: 2,
                              color: Color(0xFF595959),
                            ),
                            activeColor:
                                FlutterFlowTheme.of(context).primaryText,
                            checkColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                        ),
                        Flexible(
                          child: Text(
                            FFLocalizations.of(context).getText(
                              'uyaevzah' /* I have read and accept the Pri... */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontSize: 12.0,
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ].divide(SizedBox(height: 8.0)),
                ),
                Stack(
                  children: [
                    if (!_model.checkboxValue!)
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            context.pushNamed(
                                A00PushpakaAppPolicyWidget.routeName);
                          },
                          text: FFLocalizations.of(context).getText(
                            '1lm5n1kn' /* Read Full Policy */,
                          ),
                          options: FFButtonOptions(
                            width: 150.0,
                            height: 40.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).primaryText,
                            textStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  letterSpacing: 0.0,
                                ),
                            elevation: 0.0,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                      ),
                    if (_model.checkboxValue ?? true)
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: EdgeInsets.all(5.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              FFAppState().policyAccepted = true;
                              safeSetState(() {});
                              Navigator.pop(context);
                            },
                            text: FFLocalizations.of(context).getText(
                              'r6y3jo6x' /* Continue */,
                            ),
                            options: FFButtonOptions(
                              width: 150.0,
                              height: 40.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).primaryText,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    letterSpacing: 0.0,
                                  ),
                              elevation: 0.0,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ].divide(SizedBox(height: 5.0)),
            ),
          ),
        ),
      ),
    );
  }
}
