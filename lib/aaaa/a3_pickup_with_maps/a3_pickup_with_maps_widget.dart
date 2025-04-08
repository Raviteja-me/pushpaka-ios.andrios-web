import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_place_picker.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:pointer_interceptor/pointer_interceptor.dart';
import 'package:provider/provider.dart';
import 'a3_pickup_with_maps_model.dart';
export 'a3_pickup_with_maps_model.dart';

class A3PickupWithMapsWidget extends StatefulWidget {
  const A3PickupWithMapsWidget({
    super.key,
    required this.pickupLatlng,
    String? pickupString,
  }) : this.pickupString = pickupString ?? 'Seecrch Your Pickup Location...';

  final LatLng? pickupLatlng;
  final String pickupString;

  static String routeName = 'a3PickupWithMaps';
  static String routePath = '/a3PickupWithMaps';

  @override
  State<A3PickupWithMapsWidget> createState() => _A3PickupWithMapsWidgetState();
}

class _A3PickupWithMapsWidgetState extends State<A3PickupWithMapsWidget>
    with TickerProviderStateMixin {
  late A3PickupWithMapsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  LatLng? currentUserLocationValue;
  bool textFieldFocusListenerRegistered = false;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => A3PickupWithMapsModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.vehicle = null;
      _model.pickupString = widget.pickupString;
      safeSetState(() {});
    });

    getCurrentUserLocation(defaultLocation: LatLng(0.0, 0.0), cached: true)
        .then((loc) => safeSetState(() => currentUserLocationValue = loc));
    _model.textController ??= TextEditingController();

    animationsMap.addAll({
      'containerOnPageLoadAnimation1': AnimationInfo(
        loop: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 1000.0.ms,
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
      'containerOnPageLoadAnimation3': AnimationInfo(
        loop: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 1000.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation4': AnimationInfo(
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
    if (currentUserLocationValue == null) {
      return Container(
        color: FlutterFlowTheme.of(context).primaryBackground,
        child: Center(
          child: SizedBox(
            width: 50.0,
            height: 50.0,
            child: SpinKitHourGlass(
              color: FlutterFlowTheme.of(context).primary,
              size: 50.0,
            ),
          ),
        ),
      );
    }

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
                Container(
                  decoration: BoxDecoration(),
                  child: Stack(
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 3.0),
                        child: FlutterFlowGoogleMap(
                          controller: _model.googleMap11sController,
                          onCameraIdle: (latLng) => safeSetState(
                              () => _model.googleMap11sCenter = latLng),
                          initialLocation: _model.googleMap11sCenter ??=
                              currentUserLocationValue!,
                          markerColor: GoogleMarkerColor.violet,
                          mapType: MapType.normal,
                          style: GoogleMapStyle.dark,
                          initialZoom: 18.0,
                          allowInteraction: true,
                          allowZoom: true,
                          showZoomControls: false,
                          showLocation: true,
                          showCompass: false,
                          showMapToolbar: false,
                          showTraffic: false,
                          centerMapOnMarkerTap: true,
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: PointerInterceptor(
                          intercepting: isWeb,
                          child: Container(
                            width: 115.0,
                            height: 131.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: Image.asset(
                                  'assets/images/Boy_Cartoon_Gamer_Animated_Twitch_Profile_Photo_(12).gif',
                                ).image,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, -1.0),
                        child: PointerInterceptor(
                          intercepting: isWeb,
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(6.0),
                                  child: Container(
                                    width: 15.0,
                                    height: 15.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF1C7918),
                                      shape: BoxShape.circle,
                                    ),
                                  ).animateOnPageLoad(animationsMap[
                                      'containerOnPageLoadAnimation1']!),
                                ),
                                Container(
                                  width: 320.0,
                                  child: Autocomplete<String>(
                                    initialValue: TextEditingValue(),
                                    optionsBuilder: (textEditingValue) {
                                      if (textEditingValue.text == '') {
                                        return const Iterable<String>.empty();
                                      }
                                      return _model.placesSugg.where((option) {
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
                                        textController: _model.textController!,
                                        options: options.toList(),
                                        onSelected: onSelected,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color: Colors.white,
                                              letterSpacing: 0.0,
                                            ),
                                        textHighlightStyle:
                                            FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  color: Colors.white,
                                                  fontSize: 16.0,
                                                  letterSpacing: 0.0,
                                                ),
                                        elevation: 6.0,
                                        optionBackgroundColor: Colors.black,
                                        optionHighlightColor: Color(0xFF7C6C6C),
                                        maxHeight: double.infinity,
                                      );
                                    },
                                    onSelected: (String selection) {
                                      safeSetState(() => _model
                                          .textFieldSelectedOption = selection);
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
                                        textFieldFocusListenerRegistered = true;
                                        _model.textFieldFocusNode!.addListener(
                                          () async {
                                            var _shouldSetState = false;
                                            _model.pickupString =
                                                _model.textFieldSelectedOption;
                                            safeSetState(() {});
                                            _model.id = _model.placesIds
                                                .elementAtOrNull(_model
                                                    .placesSugg
                                                    .toList()
                                                    .indexOf((_model
                                                        .pickupString!)));
                                            safeSetState(() {});
                                            _model.latlngFromId =
                                                await LatlngReferenceApiCallCall
                                                    .call(
                                              placeid: _model.id,
                                            );

                                            _shouldSetState = true;
                                            if ((_model
                                                    .latlngFromId?.succeeded ??
                                                true)) {
                                              await _model
                                                  .googleMap11sController.future
                                                  .then(
                                                (c) => c.animateCamera(
                                                  CameraUpdate.newLatLng(
                                                      functions
                                                          .doubleToLatlng(
                                                              LatlngReferenceApiCallCall
                                                                  .lat(
                                                                (_model.latlngFromId
                                                                        ?.jsonBody ??
                                                                    ''),
                                                              )!,
                                                              LatlngReferenceApiCallCall
                                                                  .lng(
                                                                (_model.latlngFromId
                                                                        ?.jsonBody ??
                                                                    ''),
                                                              )!)
                                                          .toGoogleMaps()),
                                                ),
                                              );
                                              if (_shouldSetState)
                                                safeSetState(() {});
                                              return;
                                            } else {
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(
                                                SnackBar(
                                                  content: Text(
                                                    'reverse Geo Api Failed',
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
                                                          .primaryBackground,
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
                                        onChanged: (_) => EasyDebounce.debounce(
                                          '_model.textController',
                                          Duration(milliseconds: 2000),
                                          () async {
                                            var _shouldSetState = false;
                                            _model.apiResult845 =
                                                await PlacesApiCall.call(
                                              input: _model.textController.text,
                                            );

                                            _shouldSetState = true;
                                            if ((_model
                                                    .apiResult845?.succeeded ??
                                                true)) {
                                              _model.placesSugg = PlacesApiCall
                                                      .autoCompleateList(
                                                (_model.apiResult845
                                                        ?.jsonBody ??
                                                    ''),
                                              )!
                                                  .toList()
                                                  .cast<String>();
                                              _model.placesIds = PlacesApiCall
                                                      .placeIdAutoCompleateList(
                                                (_model.apiResult845
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
                                                    'api failed',
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
                                                          .primaryBackground,
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
                                          hintText: valueOrDefault<String>(
                                            FFAppState().pickupString,
                                            'search Your Pichup',
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
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
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          filled: true,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryBackground,
                                          suffixIcon: _model.textController!
                                                  .text.isNotEmpty
                                              ? InkWell(
                                                  onTap: () async {
                                                    _model.textController
                                                        ?.clear();
                                                    var _shouldSetState = false;
                                                    _model.apiResult845 =
                                                        await PlacesApiCall
                                                            .call(
                                                      input: _model
                                                          .textController.text,
                                                    );

                                                    _shouldSetState = true;
                                                    if ((_model.apiResult845
                                                            ?.succeeded ??
                                                        true)) {
                                                      _model.placesSugg =
                                                          PlacesApiCall
                                                                  .autoCompleateList(
                                                        (_model.apiResult845
                                                                ?.jsonBody ??
                                                            ''),
                                                      )!
                                                              .toList()
                                                              .cast<String>();
                                                      _model.placesIds =
                                                          PlacesApiCall
                                                                  .placeIdAutoCompleateList(
                                                        (_model.apiResult845
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
                                                            'api failed',
                                                            style: TextStyle(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryText,
                                                            ),
                                                          ),
                                                          duration: Duration(
                                                              milliseconds:
                                                                  4000),
                                                          backgroundColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primaryBackground,
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
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    size: 30.0,
                                                  ),
                                                )
                                              : null,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontSize: 16.0,
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
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              if (!isWeb)
                Align(
                  alignment: AlignmentDirectional(0.0, 1.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 10.0),
                    child: Container(
                      constraints: BoxConstraints(
                        maxWidth: 500.0,
                        maxHeight: 320.0,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(0.0),
                          bottomRight: Radius.circular(0.0),
                          topLeft: Radius.circular(100.0),
                          topRight: Radius.circular(100.0),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(24.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    var _shouldSetState = false;
                                    if (widget.pickupLatlng ==
                                        _model.googleMap11sCenter) {
                                      FFAppState().pickup =
                                          _model.googleMap11sCenter;
                                      FFAppState().pickupString =
                                          _model.pickupString!;

                                      context.pushNamed(
                                          A5DropWithMapsWidget.routeName);

                                      if (_shouldSetState) safeSetState(() {});
                                      return;
                                    } else {
                                      _model.apiResultyq01111 =
                                          await RevereseGeoCodingCall.call(
                                        latlng: valueOrDefault<String>(
                                          (String var1) {
                                            return var1
                                                .replaceAll('LatLng(lat: ', '')
                                                .replaceAll(', lng: ', ', ')
                                                .replaceAll(')', '');
                                          }(_model.googleMap11sCenter!
                                              .toString()),
                                          'pickupstring',
                                        ),
                                      );

                                      _shouldSetState = true;
                                      if ((_model.apiResultyq01111?.succeeded ??
                                          true)) {
                                        _model.pickupString =
                                            RevereseGeoCodingCall.listAdress(
                                          (_model.apiResultyq01111?.jsonBody ??
                                              ''),
                                        )?.firstOrNull;
                                        FFAppState().pickupString =
                                            _model.pickupString!;
                                        FFAppState().pickup =
                                            _model.googleMap11sCenter;
                                        safeSetState(() {});

                                        context.pushNamed(
                                            A5DropWithMapsWidget.routeName);

                                        if (_shouldSetState)
                                          safeSetState(() {});
                                        return;
                                      } else {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                            content: Text(
                                              'smething went wrong',
                                              style: TextStyle(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                              ),
                                            ),
                                            duration:
                                                Duration(milliseconds: 4000),
                                            backgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondary,
                                          ),
                                        );
                                        if (_shouldSetState)
                                          safeSetState(() {});
                                        return;
                                      }
                                    }

                                    if (_shouldSetState) safeSetState(() {});
                                  },
                                  child: Material(
                                    color: Colors.transparent,
                                    elevation: 2.0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    child: Container(
                                      width: 300.0,
                                      height: 45.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.all(10.0),
                                            child: Container(
                                              width: 10.0,
                                              height: 10.0,
                                              decoration: BoxDecoration(
                                                color: Color(0xFFFF0000),
                                                shape: BoxShape.circle,
                                              ),
                                            ).animateOnPageLoad(animationsMap[
                                                'containerOnPageLoadAnimation2']!),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'd5dvtqr6' /* Select Your Drop Location */,
                                              ),
                                              textAlign: TextAlign.center,
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    fontSize: 18.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                            ),
                                          ),
                                        ],
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
                ),
              if (isWeb)
                Container(
                  decoration: BoxDecoration(),
                  child: Stack(
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 3.0),
                        child: FlutterFlowGoogleMap(
                          controller: _model.googleMapwebsController,
                          onCameraIdle: (latLng) => safeSetState(
                              () => _model.googleMapwebsCenter = latLng),
                          initialLocation: _model.googleMapwebsCenter ??=
                              _model.placePickerValue.latLng,
                          markerColor: GoogleMarkerColor.violet,
                          mapType: MapType.normal,
                          style: GoogleMapStyle.dark,
                          initialZoom: 18.0,
                          allowInteraction: true,
                          allowZoom: true,
                          showZoomControls: false,
                          showLocation: true,
                          showCompass: false,
                          showMapToolbar: false,
                          showTraffic: false,
                          centerMapOnMarkerTap: true,
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: PointerInterceptor(
                          intercepting: isWeb,
                          child: Container(
                            width: 115.0,
                            height: 131.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: Image.asset(
                                  'assets/images/Boy_Cartoon_Gamer_Animated_Twitch_Profile_Photo_(12).gif',
                                ).image,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, -1.0),
                        child: PointerInterceptor(
                          intercepting: isWeb,
                          child: Container(
                            decoration: BoxDecoration(),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(6.0),
                                    child: Container(
                                      width: 15.0,
                                      height: 15.0,
                                      decoration: BoxDecoration(
                                        color: Color(0xFF1C7918),
                                        shape: BoxShape.circle,
                                      ),
                                    ).animateOnPageLoad(animationsMap[
                                        'containerOnPageLoadAnimation3']!),
                                  ),
                                  FlutterFlowPlacePicker(
                                    iOSGoogleMapsApiKey:
                                        'AIzaSyDhOkfmob7SB05bLypWw-3ByuDiFhNdQB8',
                                    androidGoogleMapsApiKey:
                                        'AIzaSyDhOkfmob7SB05bLypWw-3ByuDiFhNdQB8',
                                    webGoogleMapsApiKey:
                                        'AIzaSyDhOkfmob7SB05bLypWw-3ByuDiFhNdQB8',
                                    onSelect: (place) async {
                                      safeSetState(() =>
                                          _model.placePickerValue = place);
                                      (await _model
                                              .googleMapwebsController.future)
                                          .animateCamera(CameraUpdate.newLatLng(
                                              place.latLng.toGoogleMaps()));
                                    },
                                    defaultText:
                                        FFLocalizations.of(context).getText(
                                      '81pgjz8t' /* Select pickup Location */,
                                    ),
                                    icon: Icon(
                                      Icons.place,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 16.0,
                                    ),
                                    buttonOptions: FFButtonOptions(
                                      width: 320.0,
                                      height: 40.0,
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
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              if (isWeb)
                Align(
                  alignment: AlignmentDirectional(0.0, 1.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 10.0),
                    child: Container(
                      constraints: BoxConstraints(
                        maxWidth: 500.0,
                        maxHeight: 320.0,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(0.0),
                          bottomRight: Radius.circular(0.0),
                          topLeft: Radius.circular(100.0),
                          topRight: Radius.circular(100.0),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(24.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    FFAppState().pickup =
                                        _model.googleMapwebsCenter;
                                    FFAppState().pickupString =
                                        _model.placePickerValue.address;
                                    safeSetState(() {});

                                    context.pushNamed(
                                        A5DropWithMapsWidget.routeName);
                                  },
                                  child: Material(
                                    color: Colors.transparent,
                                    elevation: 2.0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    child: Container(
                                      width: 300.0,
                                      height: 45.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.all(10.0),
                                            child: Container(
                                              width: 10.0,
                                              height: 10.0,
                                              decoration: BoxDecoration(
                                                color: Color(0xFFFF0000),
                                                shape: BoxShape.circle,
                                              ),
                                            ).animateOnPageLoad(animationsMap[
                                                'containerOnPageLoadAnimation4']!),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'zfc9twiy' /* Select Your Drop Location */,
                                              ),
                                              textAlign: TextAlign.center,
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    fontSize: 18.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                            ),
                                          ),
                                        ],
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
                ),
            ],
          ),
        ),
      ),
    );
  }
}
