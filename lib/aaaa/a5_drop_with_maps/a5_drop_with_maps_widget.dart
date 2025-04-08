import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/custom_cloud_functions/custom_cloud_function_response_manager.dart';
import '/components/name_and_phone_number_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_place_picker.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pointer_interceptor/pointer_interceptor.dart';
import 'package:provider/provider.dart';
import 'a5_drop_with_maps_model.dart';
export 'a5_drop_with_maps_model.dart';

class A5DropWithMapsWidget extends StatefulWidget {
  const A5DropWithMapsWidget({super.key});

  static String routeName = 'a5DropWithMaps';
  static String routePath = '/TransportService_3RDCopy';

  @override
  State<A5DropWithMapsWidget> createState() => _A5DropWithMapsWidgetState();
}

class _A5DropWithMapsWidgetState extends State<A5DropWithMapsWidget>
    with TickerProviderStateMixin {
  late A5DropWithMapsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  bool textFieldFocusListenerRegistered = false;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => A5DropWithMapsModel());

    _model.textController ??= TextEditingController();

    animationsMap.addAll({
      'containerOnPageLoadAnimation1': AnimationInfo(
        loop: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation2': AnimationInfo(
        loop: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.black,
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              if (!isWeb)
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: FlutterFlowGoogleMap(
                    controller: _model.googleMapsController,
                    onCameraIdle: (latLng) =>
                        safeSetState(() => _model.googleMapsCenter = latLng),
                    initialLocation: _model.googleMapsCenter ??=
                        LatLng(14.685616, 77.601051),
                    markerColor: GoogleMarkerColor.green,
                    mapType: MapType.normal,
                    style: GoogleMapStyle.dark,
                    initialZoom: 16.0,
                    allowInteraction: true,
                    allowZoom: true,
                    showZoomControls: true,
                    showLocation: false,
                    showCompass: false,
                    showMapToolbar: false,
                    showTraffic: false,
                    centerMapOnMarkerTap: true,
                  ),
                ),
              if (!isWeb)
                Align(
                  alignment: AlignmentDirectional(0.0, -1.0),
                  child: PointerInterceptor(
                    intercepting: isWeb,
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                      child: Container(
                        width: 380.0,
                        height: 50.0,
                        decoration: BoxDecoration(),
                        child: Align(
                          alignment: AlignmentDirectional(0.0, -1.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10.0, 0.0, 10.0, 10.0),
                                child: Container(
                                  width: 10.0,
                                  height: 10.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFCE423B),
                                    shape: BoxShape.circle,
                                  ),
                                ).animateOnPageLoad(animationsMap[
                                    'containerOnPageLoadAnimation1']!),
                              ),
                              Flexible(
                                child: Align(
                                  alignment: AlignmentDirectional(0.0, -1.0),
                                  child: Container(
                                    width: 320.0,
                                    child: Autocomplete<String>(
                                      initialValue: TextEditingValue(),
                                      optionsBuilder: (textEditingValue) {
                                        if (textEditingValue.text == '') {
                                          return const Iterable<String>.empty();
                                        }
                                        return _model.dropList.where((option) {
                                          final lowercaseOption =
                                              option.toLowerCase();
                                          return lowercaseOption.contains(
                                              textEditingValue.text
                                                  .toLowerCase());
                                        });
                                      },
                                      optionsViewBuilder:
                                          (context, onSelected, options) {
                                        return AutocompleteOptionsList(
                                          textFieldKey: _model.textFieldKey,
                                          textController:
                                              _model.textController!,
                                          options: options.toList(),
                                          onSelected: onSelected,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodySmall
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: Colors.white,
                                                    fontSize: 18.0,
                                                    letterSpacing: 0.0,
                                                  ),
                                          textHighlightStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodySmall
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: Colors.white,
                                                    fontSize: 18.0,
                                                    letterSpacing: 0.0,
                                                  ),
                                          elevation: 8.0,
                                          optionBackgroundColor: Colors.black,
                                          optionHighlightColor:
                                              Color(0xFF564D4D),
                                        );
                                      },
                                      onSelected: (String selection) {
                                        safeSetState(() =>
                                            _model.textFieldSelectedOption =
                                                selection);
                                        FocusScope.of(context).unfocus();
                                      },
                                      fieldViewBuilder: (
                                        context,
                                        textEditingController,
                                        focusNode,
                                        onEditingComplete,
                                      ) {
                                        _model.textFieldFocusNode = focusNode;
                                        if (!textFieldFocusListenerRegistered) {
                                          textFieldFocusListenerRegistered =
                                              true;
                                          _model.textFieldFocusNode!
                                              .addListener(
                                            () async {
                                              var _shouldSetState = false;
                                              _model.dropString = _model
                                                  .textFieldSelectedOption;
                                              safeSetState(() {});
                                              _model.placeId = _model.idList
                                                  .elementAtOrNull(_model
                                                      .dropList
                                                      .toList()
                                                      .indexOf((_model
                                                          .dropString!)));
                                              safeSetState(() {});
                                              _model.apiResultk2q =
                                                  await LatlngReferenceApiCallCall
                                                      .call(
                                                placeid: _model.placeId,
                                              );

                                              _shouldSetState = true;
                                              if ((_model.apiResultk2q
                                                      ?.succeeded ??
                                                  true)) {
                                                unawaited(
                                                  () async {
                                                    await _model
                                                        .googleMapsController
                                                        .future
                                                        .then(
                                                      (c) => c.animateCamera(
                                                        CameraUpdate.newLatLng(
                                                            functions
                                                                .doubleToLatlng(
                                                                    LatlngReferenceApiCallCall
                                                                        .lat(
                                                                      (_model.apiResultk2q
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    )!,
                                                                    LatlngReferenceApiCallCall
                                                                        .lng(
                                                                      (_model.apiResultk2q
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    )!)
                                                                .toGoogleMaps()),
                                                      ),
                                                    );
                                                  }(),
                                                );
                                                if (_shouldSetState)
                                                  safeSetState(() {});
                                                return;
                                              } else {
                                                ScaffoldMessenger.of(context)
                                                    .showSnackBar(
                                                  SnackBar(
                                                    content: Text(
                                                      'reverse Geo Coding Api Failed',
                                                      style: TextStyle(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                      ),
                                                    ),
                                                    duration: Duration(
                                                        milliseconds: 4000),
                                                    backgroundColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondary,
                                                  ),
                                                );
                                                if (_shouldSetState)
                                                  safeSetState(() {});
                                                return;
                                              }

                                              if (_shouldSetState)
                                                safeSetState(() {});
                                            },
                                          );
                                        }
                                        _model.textController =
                                            textEditingController;
                                        return TextFormField(
                                          key: _model.textFieldKey,
                                          controller: textEditingController,
                                          focusNode: focusNode,
                                          onEditingComplete: onEditingComplete,
                                          onChanged: (_) =>
                                              EasyDebounce.debounce(
                                            '_model.textController',
                                            Duration(milliseconds: 2000),
                                            () async {
                                              var _shouldSetState = false;
                                              _model.apiResultda555 =
                                                  await PlacesApiCall.call(
                                                input:
                                                    _model.textController.text,
                                              );

                                              _shouldSetState = true;
                                              if ((_model.apiResultda555
                                                      ?.succeeded ??
                                                  true)) {
                                                _model.dropList = PlacesApiCall
                                                        .autoCompleateList(
                                                  (_model.apiResultda555
                                                          ?.jsonBody ??
                                                      ''),
                                                )!
                                                    .toList()
                                                    .cast<String>();
                                                _model.idList = PlacesApiCall
                                                        .placeIdAutoCompleateList(
                                                  (_model.apiResultda555
                                                          ?.jsonBody ??
                                                      ''),
                                                )!
                                                    .toList()
                                                    .cast<String>();
                                                safeSetState(() {});
                                                if (_shouldSetState)
                                                  safeSetState(() {});
                                                return;
                                              } else {
                                                ScaffoldMessenger.of(context)
                                                    .showSnackBar(
                                                  SnackBar(
                                                    content: Text(
                                                      'placesApiFailed',
                                                      style: TextStyle(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                      ),
                                                    ),
                                                    duration: Duration(
                                                        milliseconds: 4000),
                                                    backgroundColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondary,
                                                  ),
                                                );
                                                if (_shouldSetState)
                                                  safeSetState(() {});
                                                return;
                                              }

                                              if (_shouldSetState)
                                                safeSetState(() {});
                                            },
                                          ),
                                          autofocus: false,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            isDense: true,
                                            labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      letterSpacing: 0.0,
                                                    ),
                                            hintText:
                                                FFLocalizations.of(context)
                                                    .getText(
                                              '5txtj2q7' /* search Your Drop Address.. */,
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            filled: true,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            contentPadding:
                                                EdgeInsets.all(14.0),
                                            suffixIcon: _model.textController!
                                                    .text.isNotEmpty
                                                ? InkWell(
                                                    onTap: () async {
                                                      _model.textController
                                                          ?.clear();
                                                      var _shouldSetState =
                                                          false;
                                                      _model.apiResultda555 =
                                                          await PlacesApiCall
                                                              .call(
                                                        input: _model
                                                            .textController
                                                            .text,
                                                      );

                                                      _shouldSetState = true;
                                                      if ((_model.apiResultda555
                                                              ?.succeeded ??
                                                          true)) {
                                                        _model.dropList =
                                                            PlacesApiCall
                                                                    .autoCompleateList(
                                                          (_model.apiResultda555
                                                                  ?.jsonBody ??
                                                              ''),
                                                        )!
                                                                .toList()
                                                                .cast<String>();
                                                        _model
                                                            .idList = PlacesApiCall
                                                                .placeIdAutoCompleateList(
                                                          (_model.apiResultda555
                                                                  ?.jsonBody ??
                                                              ''),
                                                        )!
                                                            .toList()
                                                            .cast<String>();
                                                        safeSetState(() {});
                                                        if (_shouldSetState)
                                                          safeSetState(() {});
                                                        return;
                                                      } else {
                                                        ScaffoldMessenger.of(
                                                                context)
                                                            .showSnackBar(
                                                          SnackBar(
                                                            content: Text(
                                                              'placesApiFailed',
                                                              style: TextStyle(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                              ),
                                                            ),
                                                            duration: Duration(
                                                                milliseconds:
                                                                    4000),
                                                            backgroundColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondary,
                                                          ),
                                                        );
                                                        if (_shouldSetState)
                                                          safeSetState(() {});
                                                        return;
                                                      }

                                                      if (_shouldSetState)
                                                        safeSetState(() {});
                                                      safeSetState(() {});
                                                    },
                                                    child: Icon(
                                                      Icons.clear,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      size: 25.0,
                                                    ),
                                                  )
                                                : null,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodySmall
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontSize: 18.0,
                                                letterSpacing: 0.0,
                                              ),
                                          maxLines: null,
                                          cursorColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryText,
                                          validator: _model
                                              .textControllerValidator
                                              .asValidator(context),
                                        );
                                      },
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
              if (!isWeb)
                Align(
                  alignment: AlignmentDirectional(0.01, 0.88),
                  child: PointerInterceptor(
                    intercepting: isWeb,
                    child: FFButtonWidget(
                      onPressed: () async {
                        var _shouldSetState = false;
                        if ((currentPhoneNumber != '') &&
                            (valueOrDefault(
                                        currentUserDocument?.gender, '') !=
                                    '')) {
                          _model.apiResultfc67878 =
                              await RevereseGeoCodingCall.call(
                            latlng: valueOrDefault<String>(
                              (String var1) {
                                return var1
                                    .replaceAll('LatLng(lat: ', '')
                                    .replaceAll(', lng: ', ', ')
                                    .replaceAll(')', '');
                              }(_model.googleMapsCenter!.toString()),
                              'pickupstring',
                            ),
                          );

                          _shouldSetState = true;
                          if ((_model.apiResultfc67878?.succeeded ?? true)) {
                            _model.dropString =
                                RevereseGeoCodingCall.listAdress(
                              (_model.apiResultfc67878?.jsonBody ?? ''),
                            )?.firstOrNull;
                            safeSetState(() {});
                            FFAppState().drop = _model.googleMapsCenter;
                            FFAppState().dropString = _model.dropString!;
                            safeSetState(() {});
                            _model.getDistanceAndTime =
                                await GetDistanceMatricApiCallCall.call(
                              destinations: valueOrDefault<String>(
                                (String var1) {
                                  return var1
                                      .replaceAll('LatLng(lat: ', '')
                                      .replaceAll(', lng: ', ', ')
                                      .replaceAll(')', '');
                                }(_model.googleMapsCenter!.toString()),
                                'pickupstring',
                              ),
                              origins: valueOrDefault<String>(
                                (String var1) {
                                  return var1
                                      .replaceAll('LatLng(lat: ', '')
                                      .replaceAll(', lng: ', ', ')
                                      .replaceAll(')', '');
                                }(FFAppState().pickup!.toString()),
                                'pickupstring',
                              ),
                            );

                            _shouldSetState = true;
                            if ((_model.getDistanceAndTime?.succeeded ??
                                true)) {
                              _model.price = GetDistanceMatricApiCallCall.price(
                                (_model.getDistanceAndTime?.jsonBody ?? ''),
                              );
                              _model.idstnceKm =
                                  GetDistanceMatricApiCallCall.distance(
                                (_model.getDistanceAndTime?.jsonBody ?? ''),
                              );
                              _model.durationTime =
                                  GetDistanceMatricApiCallCall.duration(
                                (_model.getDistanceAndTime?.jsonBody ?? ''),
                              );
                              safeSetState(() {});
                              FFAppState().routeDistance = _model.idstnceKm!;
                              FFAppState().routeDuration = _model.durationTime!;
                              FFAppState().dropString = _model.dropString!;
                              FFAppState().price =
                                  GetDistanceMatricApiCallCall.price(
                                (_model.getDistanceAndTime?.jsonBody ?? ''),
                              )!
                                      .toString();

                              context.pushNamed(
                                A6ConfimVehicleWidget.routeName,
                                queryParameters: {
                                  'pickupString': serializeParam(
                                    FFAppState().pickup?.toString(),
                                    ParamType.String,
                                  ),
                                  'dropString': serializeParam(
                                    _model.dropString,
                                    ParamType.String,
                                  ),
                                  'distance': serializeParam(
                                    _model.idstnceKm,
                                    ParamType.String,
                                  ),
                                  'time': serializeParam(
                                    _model.durationTime,
                                    ParamType.String,
                                  ),
                                  'pickupLatlng': serializeParam(
                                    FFAppState().pickup,
                                    ParamType.LatLng,
                                  ),
                                  'dropLatlng': serializeParam(
                                    _model.googleMapsCenter,
                                    ParamType.LatLng,
                                  ),
                                  'price': serializeParam(
                                    GetDistanceMatricApiCallCall.price(
                                      (_model.getDistanceAndTime?.jsonBody ??
                                          ''),
                                    )?.toString(),
                                    ParamType.String,
                                  ),
                                }.withoutNulls,
                              );

                              if (_shouldSetState) safeSetState(() {});
                              return;
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'Oops Something went wrong',
                                    style: TextStyle(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                    ),
                                  ),
                                  duration: Duration(milliseconds: 4000),
                                  backgroundColor:
                                      FlutterFlowTheme.of(context).tertiary,
                                ),
                              );
                              if (_shouldSetState) safeSetState(() {});
                              return;
                            }
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'Oops Something went wrong',
                                  style: TextStyle(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                  ),
                                ),
                                duration: Duration(milliseconds: 4000),
                                backgroundColor:
                                    FlutterFlowTheme.of(context).secondary,
                              ),
                            );
                            if (_shouldSetState) safeSetState(() {});
                            return;
                          }
                        } else {
                          await showModalBottomSheet(
                            isScrollControlled: true,
                            backgroundColor: Colors.transparent,
                            enableDrag: false,
                            context: context,
                            builder: (context) {
                              return GestureDetector(
                                onTap: () {
                                  FocusScope.of(context).unfocus();
                                  FocusManager.instance.primaryFocus?.unfocus();
                                },
                                child: Padding(
                                  padding: MediaQuery.viewInsetsOf(context),
                                  child: NameAndPhoneNumberWidget(),
                                ),
                              );
                            },
                          ).then((value) => safeSetState(() {}));

                          if (_shouldSetState) safeSetState(() {});
                          return;
                        }

                        if (_shouldSetState) safeSetState(() {});
                      },
                      text: FFLocalizations.of(context).getText(
                        '3rgvy61t' /* Lets Go */,
                      ),
                      options: FFButtonOptions(
                        width: 159.0,
                        height: 40.0,
                        padding: EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        textStyle: FlutterFlowTheme.of(context)
                            .titleLarge
                            .override(
                              fontFamily: 'Outfit',
                              color: FlutterFlowTheme.of(context).primaryText,
                              letterSpacing: 0.0,
                            ),
                        borderSide: BorderSide(
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                    ),
                  ),
                ),
              if (isWeb)
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: FlutterFlowGoogleMap(
                    controller: _model.googleMapwebsController,
                    onCameraIdle: (latLng) =>
                        safeSetState(() => _model.googleMapwebsCenter = latLng),
                    initialLocation: _model.googleMapwebsCenter ??=
                        _model.placePickerValue.latLng,
                    markerColor: GoogleMarkerColor.green,
                    mapType: MapType.normal,
                    style: GoogleMapStyle.dark,
                    initialZoom: 16.0,
                    allowInteraction: true,
                    allowZoom: true,
                    showZoomControls: true,
                    showLocation: false,
                    showCompass: false,
                    showMapToolbar: false,
                    showTraffic: false,
                    centerMapOnMarkerTap: true,
                  ),
                ),
              if (isWeb)
                Align(
                  alignment: AlignmentDirectional(0.01, 0.88),
                  child: PointerInterceptor(
                    intercepting: isWeb,
                    child: FFButtonWidget(
                      onPressed: () async {
                        var _shouldSetState = false;
                        if ((currentPhoneNumber != '') &&
                            (valueOrDefault(
                                        currentUserDocument?.gender, '') !=
                                    '')) {
                          FFAppState().drop = _model.googleMapwebsCenter;
                          FFAppState().dropString = valueOrDefault<String>(
                            _model.placePickerValue.address,
                            'Ananthapur,Bus Stand',
                          );
                          safeSetState(() {});
                          try {
                            final result = await FirebaseFunctions.instanceFor(
                                    region: 'us-central1')
                                .httpsCallable('distanceDurationPrice')
                                .call({
                              "destination": valueOrDefault<String>(
                                (String var1) {
                                  return var1
                                      .replaceAll('LatLng(lat: ', '')
                                      .replaceAll(', lng: ', ', ')
                                      .replaceAll(')', '');
                                }(FFAppState().pickup!.toString()),
                                'pickupstring',
                              ),
                              "origin": valueOrDefault<String>(
                                (String var1) {
                                  return var1
                                      .replaceAll('LatLng(lat: ', '')
                                      .replaceAll(', lng: ', ', ')
                                      .replaceAll(')', '');
                                }(FFAppState().drop!.toString()),
                                'pickupstring',
                              ),
                            });
                            _model.cloudFunctionfzx =
                                DistanceDurationPriceCloudFunctionCallResponse(
                              data: (result.data as List)
                                  .map((i) => i as String)
                                  .toList(),
                              succeeded: true,
                              resultAsString: result.data.toString(),
                              jsonBody: result.data,
                            );
                          } on FirebaseFunctionsException catch (error) {
                            _model.cloudFunctionfzx =
                                DistanceDurationPriceCloudFunctionCallResponse(
                              errorCode: error.code,
                              succeeded: false,
                            );
                          }

                          _shouldSetState = true;
                          if (_model.cloudFunctionfzx!.succeeded!) {
                            FFAppState().routeDistance =
                                _model.cloudFunctionfzx!.data!.firstOrNull!;
                            FFAppState().routeDuration = (_model
                                .cloudFunctionfzx!.data!
                                .elementAtOrNull(1))!;
                            FFAppState().price =
                                _model.cloudFunctionfzx!.data!.lastOrNull!;

                            context.pushNamed(
                              A6ConfimVehicleWidget.routeName,
                              queryParameters: {
                                'pickupString': serializeParam(
                                  FFAppState().pickupString,
                                  ParamType.String,
                                ),
                                'dropString': serializeParam(
                                  FFAppState().dropString,
                                  ParamType.String,
                                ),
                                'distance': serializeParam(
                                  FFAppState().routeDistance,
                                  ParamType.String,
                                ),
                                'time': serializeParam(
                                  _model.cloudFunctionfzx?.data
                                      ?.elementAtOrNull(1),
                                  ParamType.String,
                                ),
                                'pickupLatlng': serializeParam(
                                  FFAppState().pickup,
                                  ParamType.LatLng,
                                ),
                                'dropLatlng': serializeParam(
                                  FFAppState().drop,
                                  ParamType.LatLng,
                                ),
                                'price': serializeParam(
                                  _model.cloudFunctionfzx?.data?.lastOrNull,
                                  ParamType.String,
                                ),
                              }.withoutNulls,
                            );
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  _model.cloudFunctionfzx!.errorCode!,
                                  style: GoogleFonts.getFont(
                                    'Roboto',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                  ),
                                ),
                                duration: Duration(milliseconds: 4000),
                                backgroundColor: Colors.white,
                              ),
                            );
                          }
                        } else {
                          await showModalBottomSheet(
                            isScrollControlled: true,
                            backgroundColor: Colors.transparent,
                            enableDrag: false,
                            context: context,
                            builder: (context) {
                              return GestureDetector(
                                onTap: () {
                                  FocusScope.of(context).unfocus();
                                  FocusManager.instance.primaryFocus?.unfocus();
                                },
                                child: Padding(
                                  padding: MediaQuery.viewInsetsOf(context),
                                  child: NameAndPhoneNumberWidget(),
                                ),
                              );
                            },
                          ).then((value) => safeSetState(() {}));

                          if (_shouldSetState) safeSetState(() {});
                          return;
                        }

                        if (_shouldSetState) safeSetState(() {});
                      },
                      text: FFLocalizations.of(context).getText(
                        'f0ribcpf' /* Lets Go */,
                      ),
                      options: FFButtonOptions(
                        width: 159.0,
                        height: 40.0,
                        padding: EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        textStyle: FlutterFlowTheme.of(context)
                            .titleLarge
                            .override(
                              fontFamily: 'Outfit',
                              color: FlutterFlowTheme.of(context).primaryText,
                              letterSpacing: 0.0,
                            ),
                        borderSide: BorderSide(
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                    ),
                  ),
                ),
              if (isWeb)
                Align(
                  alignment: AlignmentDirectional(0.0, -1.0),
                  child: PointerInterceptor(
                    intercepting: isWeb,
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                      child: Container(
                        width: 380.0,
                        height: 50.0,
                        decoration: BoxDecoration(),
                        child: Align(
                          alignment: AlignmentDirectional(0.0, -1.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10.0, 10.0, 10.0, 10.0),
                                child: Container(
                                  width: 10.0,
                                  height: 10.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFCE423B),
                                    shape: BoxShape.circle,
                                  ),
                                ).animateOnPageLoad(animationsMap[
                                    'containerOnPageLoadAnimation2']!),
                              ),
                              Flexible(
                                child: FlutterFlowPlacePicker(
                                  iOSGoogleMapsApiKey:
                                      'AIzaSyDhOkfmob7SB05bLypWw-3ByuDiFhNdQB8',
                                  androidGoogleMapsApiKey:
                                      'AIzaSyDhOkfmob7SB05bLypWw-3ByuDiFhNdQB8',
                                  webGoogleMapsApiKey:
                                      'AIzaSyDhOkfmob7SB05bLypWw-3ByuDiFhNdQB8',
                                  onSelect: (place) async {
                                    safeSetState(
                                        () => _model.placePickerValue = place);
                                    (await _model
                                            .googleMapwebsController.future)
                                        .animateCamera(CameraUpdate.newLatLng(
                                            place.latLng.toGoogleMaps()));
                                  },
                                  defaultText:
                                      FFLocalizations.of(context).getText(
                                    'axjsxu0c' /* Select Location */,
                                  ),
                                  icon: Icon(
                                    Icons.place,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 16.0,
                                  ),
                                  buttonOptions: FFButtonOptions(
                                    width: 300.0,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          letterSpacing: 0.0,
                                        ),
                                    elevation: 0.0,
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
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
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: PointerInterceptor(
                  intercepting: isWeb,
                  child: Container(
                    width: 133.0,
                    height: 148.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: Image.asset(
                          'assets/images/Boy_Cartoon_Gamer_Animated_Twitch_Profile_Photo_(11).gif',
                        ).image,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
