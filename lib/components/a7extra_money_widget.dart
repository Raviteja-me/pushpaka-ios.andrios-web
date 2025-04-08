import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'a7extra_money_model.dart';
export 'a7extra_money_model.dart';

/// aasking user to slect the radius of search, 10 rs extra for 3 km radius
/// search, 20 rs extra for 4km radius search , 30 etra for 5 and 50 for 7 and
/// 100 for all pushpaka riders.
///
/// currently searching only 2km  radius its free ,, longer pickup may cost
/// more fuel to the rider so select any option...
class A7extraMoneyWidget extends StatefulWidget {
  const A7extraMoneyWidget({super.key});

  @override
  State<A7extraMoneyWidget> createState() => _A7extraMoneyWidgetState();
}

class _A7extraMoneyWidgetState extends State<A7extraMoneyWidget> {
  late A7extraMoneyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => A7extraMoneyModel());

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
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  FFLocalizations.of(context).getText(
                    'xjqj4avc' /* Select Search Radius */,
                  ),
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).headlineSmall.override(
                        fontFamily: 'Outfit',
                        color: FlutterFlowTheme.of(context).primaryText,
                        letterSpacing: 0.0,
                        decoration: TextDecoration.underline,
                      ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      '4greip1b' /* Currently searching within 2km... */,
                    ),
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          color: FlutterFlowTheme.of(context).secondaryText,
                          fontSize: 16.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      '16me3g7f' /* Choose the radius to search fo... */,
                    ),
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).bodySmall.override(
                          fontFamily: 'Readex Pro',
                          color: FlutterFlowTheme.of(context).secondaryText,
                          fontSize: 13.0,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            FFLocalizations.of(context).getText(
                              'bkh6918m' /* Select Search Radius */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .headlineSmall
                                .override(
                                  fontFamily: 'Outfit',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  letterSpacing: 0.0,
                                ),
                          ),
                          FlutterFlowChoiceChips(
                            options: [
                              ChipData(
                                  FFLocalizations.of(context).getText(
                                    '54gjfl42' /* 4km (+₹20) */,
                                  ),
                                  Icons.place),
                              ChipData(
                                  FFLocalizations.of(context).getText(
                                    '2vdo58gx' /* 6km(+₹40) */,
                                  ),
                                  Icons.place),
                              ChipData(
                                  FFLocalizations.of(context).getText(
                                    '2oxkvx03' /* 8km (+₹60) */,
                                  ),
                                  Icons.place),
                              ChipData(
                                  FFLocalizations.of(context).getText(
                                    '6jn2s7s2' /* All Riders (+₹100) */,
                                  ),
                                  Icons.group)
                            ],
                            onChanged: (val) => safeSetState(() =>
                                _model.choiceChipsValue = val?.firstOrNull),
                            selectedChipStyle: ChipStyle(
                              backgroundColor:
                                  FlutterFlowTheme.of(context).success,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context).info,
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                  ),
                              iconColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              iconSize: 18.0,
                              elevation: 2.0,
                              borderColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            unselectedChipStyle: ChipStyle(
                              backgroundColor: Color(0x00000000),
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context).primary,
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                  ),
                              iconColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              iconSize: 18.0,
                              elevation: 0.0,
                              borderColor: Color(0xFF3C3737),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            chipSpacing: 8.0,
                            rowSpacing: 12.0,
                            multiselect: false,
                            alignment: WrapAlignment.start,
                            controller: _model.choiceChipsValueController ??=
                                FormFieldController<List<String>>(
                              [],
                            ),
                            wrapped: true,
                          ),
                          Text(
                            FFLocalizations.of(context).getText(
                              'pzaaivb8' /* Note: Longer pickup distances ... */,
                            ),
                            textAlign: TextAlign.center,
                            style:
                                FlutterFlowTheme.of(context).bodySmall.override(
                                      fontFamily: 'Readex Pro',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      fontSize: 14.0,
                                      letterSpacing: 0.0,
                                    ),
                          ),
                          FFButtonWidget(
                            onPressed: () async {
                              context.safePop();
                            },
                            text: FFLocalizations.of(context).getText(
                              'ddl6ms2j' /* Confirm Selection */,
                            ),
                            options: FFButtonOptions(
                              width: 170.0,
                              height: 40.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).primaryText,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
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
                        ].divide(SizedBox(height: 16.0)),
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
