import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'a6_modify_ride_model.dart';
export 'a6_modify_ride_model.dart';

/// user can sect diffet types of  otuions like change time of the ride to
/// specific time or book for others or modify ride giving retun ride also by
/// adding some waiting time , a specific ride to modify for parcel food etc,,
/// and many more options
class A6ModifyRideWidget extends StatefulWidget {
  const A6ModifyRideWidget({super.key});

  @override
  State<A6ModifyRideWidget> createState() => _A6ModifyRideWidgetState();
}

class _A6ModifyRideWidgetState extends State<A6ModifyRideWidget> {
  late A6ModifyRideModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => A6ModifyRideModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
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
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: AlignmentDirectional(0.0, -1.0),
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  FFLocalizations.of(context).getText(
                    'tdiu7u5p' /* Customize Your Ride */,
                  ),
                  style: FlutterFlowTheme.of(context).headlineSmall.override(
                        fontFamily: 'Outfit',
                        color: FlutterFlowTheme.of(context).primaryText,
                        fontSize: 30.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
              child: FlutterFlowChoiceChips(
                options: [
                  ChipData(
                      FFLocalizations.of(context).getText(
                        '4tob8bdu' /* Schedule Ride */,
                      ),
                      Icons.schedule),
                  ChipData(
                      FFLocalizations.of(context).getText(
                        'l2ipklf9' /* Book for Others */,
                      ),
                      Icons.person_add),
                  ChipData(
                      FFLocalizations.of(context).getText(
                        'aafjxykd' /* Round Trip */,
                      ),
                      Icons.repeat),
                  ChipData(
                      FFLocalizations.of(context).getText(
                        '2xju0xaw' /* Parcel Delivery */,
                      ),
                      Icons.local_shipping),
                  ChipData(
                      FFLocalizations.of(context).getText(
                        'fc6tvnru' /* Food Delivery */,
                      ),
                      Icons.fastfood_sharp)
                ],
                onChanged: (val) => safeSetState(
                    () => _model.choiceChipsValue1 = val?.firstOrNull),
                selectedChipStyle: ChipStyle(
                  backgroundColor: FlutterFlowTheme.of(context).success,
                  textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        color: FlutterFlowTheme.of(context).info,
                        letterSpacing: 0.0,
                      ),
                  iconColor: FlutterFlowTheme.of(context).info,
                  iconSize: 18.0,
                  elevation: 0.0,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                unselectedChipStyle: ChipStyle(
                  backgroundColor:
                      FlutterFlowTheme.of(context).primaryBackground,
                  textStyle: FlutterFlowTheme.of(context).bodySmall.override(
                        fontFamily: 'Readex Pro',
                        color: FlutterFlowTheme.of(context).secondaryText,
                        letterSpacing: 0.0,
                      ),
                  iconColor: FlutterFlowTheme.of(context).primaryText,
                  iconSize: 18.0,
                  elevation: 0.0,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                chipSpacing: 8.0,
                rowSpacing: 12.0,
                multiselect: false,
                alignment: WrapAlignment.start,
                controller: _model.choiceChipsValueController1 ??=
                    FormFieldController<List<String>>(
                  [],
                ),
                wrapped: true,
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 12.0),
              child: Material(
                color: Colors.transparent,
                elevation: 2.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              FFLocalizations.of(context).getText(
                                'pch37rjh' /* Schedule Ride */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                            Icon(
                              Icons.schedule,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 24.0,
                            ),
                          ],
                        ),
                        Text(
                          FFLocalizations.of(context).getText(
                            '99noj0k6' /* Choose a specific time for you... */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    color: Color(0xFF9F9090),
                                    letterSpacing: 0.0,
                                  ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 8.0, 8.0, 8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(12.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Icon(
                                        Icons.calendar_today,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        size: 20.0,
                                      ),
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          '3elropb9' /* Today */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ].divide(SizedBox(width: 8.0)),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 8.0, 8.0, 8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(12.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Icon(
                                        Icons.access_time,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        size: 20.0,
                                      ),
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          'cmb7zd1f' /* Now */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ].divide(SizedBox(width: 8.0)),
                                  ),
                                ),
                              ),
                            ),
                          ].divide(SizedBox(width: 12.0)),
                        ),
                      ].divide(SizedBox(height: 12.0)),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 12.0),
              child: Material(
                color: Colors.transparent,
                elevation: 2.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              FFLocalizations.of(context).getText(
                                'nx3k57wk' /* Book for Others */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                            Icon(
                              Icons.person_add,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 24.0,
                            ),
                          ],
                        ),
                        Text(
                          FFLocalizations.of(context).getText(
                            'psospc4o' /* Book a ride for your friends o... */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    color: Color(0xFF9F9090),
                                    letterSpacing: 0.0,
                                  ),
                        ),
                        TextFormField(
                          controller: _model.textController,
                          focusNode: _model.textFieldFocusNode,
                          autofocus: false,
                          textInputAction: TextInputAction.next,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: FFLocalizations.of(context).getText(
                              'k5007qoh' /* Passenger Name */,
                            ),
                            hintStyle:
                                FlutterFlowTheme.of(context).bodyLarge.override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0.0,
                                    ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).alternate,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            filled: true,
                            fillColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            suffixIcon: Icon(
                              Icons.person,
                            ),
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                          minLines: 1,
                          validator: _model.textControllerValidator
                              .asValidator(context),
                        ),
                      ].divide(SizedBox(height: 12.0)),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 12.0),
              child: Material(
                color: Colors.transparent,
                elevation: 2.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              FFLocalizations.of(context).getText(
                                'wj7l2psq' /* Round Trip */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                            Icon(
                              Icons.repeat,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 24.0,
                            ),
                          ],
                        ),
                        Text(
                          FFLocalizations.of(context).getText(
                            'u0l5f78i' /* Add a return trip with waiting... */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    color: Color(0xFF9F9090),
                                    letterSpacing: 0.0,
                                  ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 8.0, 8.0, 8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(12.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Icon(
                                        Icons.timer,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        size: 20.0,
                                      ),
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          'gg9gc3vy' /* Wait Time */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ].divide(SizedBox(width: 8.0)),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 120.0,
                              child: Slider(
                                activeColor:
                                    FlutterFlowTheme.of(context).primary,
                                inactiveColor: Color(0x33FFFFFF),
                                min: 0.0,
                                max: 8.0,
                                value: _model.sliderValue ??= 1.0,
                                divisions: 8,
                                onChanged: (newValue) {
                                  newValue =
                                      double.parse(newValue.toStringAsFixed(4));
                                  safeSetState(
                                      () => _model.sliderValue = newValue);
                                },
                              ),
                            ),
                          ].divide(SizedBox(width: 12.0)),
                        ),
                      ].divide(SizedBox(height: 12.0)),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 12.0),
              child: Material(
                color: Colors.transparent,
                elevation: 2.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              FFLocalizations.of(context).getText(
                                '9h9xougs' /* Parcel Delivery */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                            Icon(
                              Icons.local_shipping,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 24.0,
                            ),
                          ],
                        ),
                        Text(
                          FFLocalizations.of(context).getText(
                            'dh98x6ax' /* Modify ride for parcel or food... */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    color: Color(0xFF9F9090),
                                    letterSpacing: 0.0,
                                  ),
                        ),
                        FlutterFlowChoiceChips(
                          options: [
                            ChipData(FFLocalizations.of(context).getText(
                              'zox90n79' /* Small Parcel */,
                            )),
                            ChipData(FFLocalizations.of(context).getText(
                              'nar6dnfd' /* Large Parcel */,
                            )),
                            ChipData(FFLocalizations.of(context).getText(
                              '9qjc4t8y' /* Food Delivery */,
                            ))
                          ],
                          onChanged: (val) => safeSetState(() =>
                              _model.choiceChipsValue2 = val?.firstOrNull),
                          selectedChipStyle: ChipStyle(
                            backgroundColor:
                                FlutterFlowTheme.of(context).success,
                            textStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: FlutterFlowTheme.of(context).info,
                                  letterSpacing: 0.0,
                                ),
                            iconColor:
                                FlutterFlowTheme.of(context).primaryBackground,
                            iconSize: 18.0,
                            elevation: 2.0,
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          unselectedChipStyle: ChipStyle(
                            backgroundColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            textStyle:
                                FlutterFlowTheme.of(context).bodySmall.override(
                                      fontFamily: 'Readex Pro',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      letterSpacing: 0.0,
                                    ),
                            iconColor: FlutterFlowTheme.of(context).primaryText,
                            iconSize: 18.0,
                            elevation: 0.0,
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          chipSpacing: 8.0,
                          rowSpacing: 8.0,
                          multiselect: false,
                          alignment: WrapAlignment.start,
                          controller: _model.choiceChipsValueController2 ??=
                              FormFieldController<List<String>>(
                            [],
                          ),
                          wrapped: true,
                        ),
                      ].divide(SizedBox(height: 12.0)),
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 20.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    context.safePop();
                  },
                  text: FFLocalizations.of(context).getText(
                    '4oob6dxj' /* Apply Options */,
                  ),
                  options: FFButtonOptions(
                    padding: EdgeInsets.all(20.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primaryText,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Readex Pro',
                          color: FlutterFlowTheme.of(context).primaryBackground,
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
    );
  }
}
