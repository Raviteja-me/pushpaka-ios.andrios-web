import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'select_language_model.dart';
export 'select_language_model.dart';

/// a componet where user can select languages telugu hindhi kannnada and
/// english then can select one when selected nice animation and nice user
/// experience and can able to select that
class SelectLanguageWidget extends StatefulWidget {
  const SelectLanguageWidget({super.key});

  @override
  State<SelectLanguageWidget> createState() => _SelectLanguageWidgetState();
}

class _SelectLanguageWidgetState extends State<SelectLanguageWidget> {
  late SelectLanguageModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SelectLanguageModel());

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
        padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'rx41ivek' /* Choose Your Language */,
                    ),
                    style: FlutterFlowTheme.of(context).headlineSmall.override(
                          fontFamily: 'Outfit',
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'bnhqouah' /* Select your preferred language... */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          color: FlutterFlowTheme.of(context).secondaryText,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                  child: FlutterFlowChoiceChips(
                    options: [
                      ChipData(FFLocalizations.of(context).getText(
                        't6kcm8by' /* English */,
                      )),
                      ChipData(FFLocalizations.of(context).getText(
                        'j3u2f8ho' /* हिंदी */,
                      )),
                      ChipData(FFLocalizations.of(context).getText(
                        'ss78tpda' /* తెలుగు */,
                      )),
                      ChipData(FFLocalizations.of(context).getText(
                        'h3y7ez17' /* ಕನ್ನಡ */,
                      ))
                    ],
                    onChanged: (val) => safeSetState(
                        () => _model.choiceChipsValue = val?.firstOrNull),
                    selectedChipStyle: ChipStyle(
                      backgroundColor: FlutterFlowTheme.of(context).primary,
                      textStyle:
                          FlutterFlowTheme.of(context).bodyMedium.override(
                                fontFamily: 'Readex Pro',
                                color: FlutterFlowTheme.of(context).info,
                                fontSize: 16.0,
                                letterSpacing: 0.0,
                              ),
                      iconColor: FlutterFlowTheme.of(context).primaryText,
                      iconSize: 18.0,
                      elevation: 2.0,
                      borderColor: FlutterFlowTheme.of(context).primary,
                      borderWidth: 0.0,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    unselectedChipStyle: ChipStyle(
                      backgroundColor: Color(0x12000000),
                      textStyle:
                          FlutterFlowTheme.of(context).bodySmall.override(
                                fontFamily: 'Readex Pro',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontSize: 16.0,
                                letterSpacing: 0.0,
                              ),
                      iconColor: FlutterFlowTheme.of(context).primaryText,
                      iconSize: 18.0,
                      elevation: 0.0,
                      borderColor: FlutterFlowTheme.of(context).alternate,
                      borderWidth: 1.0,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    chipSpacing: 12.0,
                    rowSpacing: 16.0,
                    multiselect: false,
                    alignment: WrapAlignment.start,
                    controller: _model.choiceChipsValueController ??=
                        FormFieldController<List<String>>(
                      [],
                    ),
                    wrapped: true,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                  child: Container(
                    child: FFButtonWidget(
                      onPressed: () async {
                        setAppLanguage(context, _model.choiceChipsValue!);
                      },
                      text: FFLocalizations.of(context).getText(
                        'fietr91x' /* Continue */,
                      ),
                      options: FFButtonOptions(
                        width: double.infinity,
                        height: 50.0,
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).primary,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Readex Pro',
                                  color: FlutterFlowTheme.of(context).info,
                                  letterSpacing: 0.0,
                                ),
                        elevation: 2.0,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                    ),
                  ),
                ),
              ].divide(SizedBox(height: 16.0)),
            ),
          ),
        ),
      ),
    );
  }
}
