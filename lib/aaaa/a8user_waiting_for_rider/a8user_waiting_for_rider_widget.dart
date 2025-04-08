import '/components/a8a9reason_for_cancling_widget.dart';
import '/components/call_rider_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:pointer_interceptor/pointer_interceptor.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'a8user_waiting_for_rider_model.dart';
export 'a8user_waiting_for_rider_model.dart';

class A8userWaitingForRiderWidget extends StatefulWidget {
  const A8userWaitingForRiderWidget({
    super.key,
    required this.driverLatLng,
    String? driverPhone,
  }) : this.driverPhone = driverPhone ?? 'dRIVERDetails';

  final LatLng? driverLatLng;
  final String driverPhone;

  static String routeName = 'a8userWaitingForRider';
  static String routePath = '/a8userWaitingForRider';

  @override
  State<A8userWaitingForRiderWidget> createState() =>
      _A8userWaitingForRiderWidgetState();
}

class _A8userWaitingForRiderWidgetState
    extends State<A8userWaitingForRiderWidget> with TickerProviderStateMixin {
  late A8userWaitingForRiderModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => A8userWaitingForRiderModel());

    animationsMap.addAll({
      'containerOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 600.ms),
          ScaleEffect(
            curve: Curves.easeOut,
            delay: 600.0.ms,
            duration: 400.0.ms,
            begin: Offset(2.0, 1.0),
            end: Offset(1.0, 1.0),
          ),
          FadeEffect(
            curve: Curves.easeOut,
            delay: 600.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          BlurEffect(
            curve: Curves.easeOut,
            delay: 600.0.ms,
            duration: 400.0.ms,
            begin: Offset(10.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
          MoveEffect(
            curve: Curves.easeOut,
            delay: 600.0.ms,
            duration: 400.0.ms,
            begin: Offset(0.0, 70.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation2': AnimationInfo(
        loop: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 3500.0.ms,
            begin: Offset(0.0, 1.0),
            end: Offset(1.3, 1.0),
          ),
          BlurEffect(
            curve: Curves.easeInOut,
            delay: 1500.0.ms,
            duration: 2000.0.ms,
            begin: Offset(0.0, 0.0),
            end: Offset(10.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 1500.0.ms,
            duration: 2500.0.ms,
            begin: 1.0,
            end: 0.0,
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
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Material(
                      color: Colors.transparent,
                      elevation: 1.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                      child: Container(
                        width: double.infinity,
                        height: 500.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40.0),
                          border: Border.all(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            width: 2.0,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(24.0),
                                  child: Container(
                                    width: 100.0,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(24.0),
                                      border: Border.all(
                                        width: 2.0,
                                      ),
                                    ),
                                    child: Container(
                                      width: double.infinity,
                                      height: double.infinity,
                                      child: Stack(
                                        children: [
                                          FlutterFlowGoogleMap(
                                            controller:
                                                _model.googleMapDarksController,
                                            onCameraIdle: (latLng) => _model
                                                .googleMapDarksCenter = latLng,
                                            initialLocation:
                                                _model.googleMapDarksCenter ??=
                                                    widget.driverLatLng!,
                                            markerColor:
                                                GoogleMarkerColor.orange,
                                            mapType: MapType.normal,
                                            style: GoogleMapStyle.dark,
                                            initialZoom: 14.0,
                                            allowInteraction: false,
                                            allowZoom: false,
                                            showZoomControls: false,
                                            showLocation: true,
                                            showCompass: false,
                                            showMapToolbar: false,
                                            showTraffic: false,
                                            centerMapOnMarkerTap: false,
                                          ),
                                          PointerInterceptor(
                                            intercepting: isWeb,
                                            child: Container(
                                              width: double.infinity,
                                              height: double.infinity,
                                              child: Stack(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                children: [
                                                  Opacity(
                                                    opacity: 0.4,
                                                    child: Container(
                                                      width: 60.0,
                                                      height: 60.0,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .accent2,
                                                        shape: BoxShape.circle,
                                                        border: Border.all(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                        ),
                                                      ),
                                                    ).animateOnPageLoad(
                                                        animationsMap[
                                                            'containerOnPageLoadAnimation2']!),
                                                  ),
                                                  Container(
                                                    width: 8.0,
                                                    height: 8.0,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      shape: BoxShape.circle,
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
                              ),
                            ],
                          ),
                        ),
                      ),
                    ).animateOnPageLoad(
                        animationsMap['containerOnPageLoadAnimation1']!),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 10.0, 20.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              FFLocalizations.of(context).getText(
                                '9078bycs' /* John Doe */,
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
                            Text(
                              FFLocalizations.of(context).getText(
                                'gaevm6m4' /* Toyota Camry • ABC 123 */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ],
                        ),
                        FFButtonWidget(
                          onPressed: () async {
                            await Future.wait([
                              Future(() async {
                                await launchUrl(Uri(
                                  scheme: 'tel',
                                  path: widget.driverPhone,
                                ));
                              }),
                              Future(() async {
                                await showModalBottomSheet(
                                  isScrollControlled: true,
                                  backgroundColor: Colors.transparent,
                                  enableDrag: false,
                                  context: context,
                                  builder: (context) {
                                    return GestureDetector(
                                      onTap: () {
                                        FocusScope.of(context).unfocus();
                                        FocusManager.instance.primaryFocus
                                            ?.unfocus();
                                      },
                                      child: Padding(
                                        padding:
                                            MediaQuery.viewInsetsOf(context),
                                        child: CallRiderWidget(
                                          mobileNumber: widget.driverPhone,
                                        ),
                                      ),
                                    );
                                  },
                                ).then((value) => safeSetState(() {}));
                              }),
                            ]);
                          },
                          text: FFLocalizations.of(context).getText(
                            'wpzk2he5' /* Call Driver */,
                          ),
                          icon: Icon(
                            Icons.call,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 20.0,
                          ),
                          options: FFButtonOptions(
                            width: 120.0,
                            height: 40.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            textStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  letterSpacing: 0.0,
                                ),
                            elevation: 2.0,
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                            ),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                      ].divide(SizedBox(width: 40.0)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Material(
                      color: Colors.transparent,
                      elevation: 2.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(16.0),
                          border: Border.all(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            width: 1.0,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Icon(
                                            Icons.access_time,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            size: 35.0,
                                          ),
                                          Text(
                                            valueOrDefault<String>(
                                              FFAppState().routeDuration,
                                              '20 min',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyLarge
                                                .override(
                                                  fontFamily: 'Roboto',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontSize: 20.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          ),
                                        ].divide(SizedBox(width: 12.0)),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Icon(
                                            Icons.currency_rupee,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            size: 35.0,
                                          ),
                                          Text(
                                            FFAppState().price,
                                            style: FlutterFlowTheme.of(context)
                                                .headlineMedium
                                                .override(
                                                  fontFamily: 'Roboto',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontSize: 20.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          ),
                                        ].divide(SizedBox(width: 12.0)),
                                      ),
                                    ].divide(SizedBox(height: 5.0)),
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Icon(
                                            Icons.route,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            size: 30.0,
                                          ),
                                          Text(
                                            valueOrDefault<String>(
                                              FFAppState().routeDistance,
                                              '10 km',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyLarge
                                                .override(
                                                  fontFamily: 'Roboto',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontSize: 20.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          ),
                                        ].divide(SizedBox(width: 12.0)),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Icon(
                                            Icons.mobile_friendly,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            size: 30.0,
                                          ),
                                          Text(
                                            valueOrDefault<String>(
                                              random_data
                                                  .randomInteger(1111, 9999)
                                                  .toString(),
                                              '1212',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .headlineMedium
                                                .override(
                                                  fontFamily: 'Roboto',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontSize: 20.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          ),
                                        ].divide(SizedBox(width: 12.0)),
                                      ),
                                    ].divide(SizedBox(height: 5.0)),
                                  ),
                                ].divide(SizedBox(width: 80.0)),
                              ),
                            ].divide(SizedBox(height: 16.0)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
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
                                return GestureDetector(
                                  onTap: () {
                                    FocusScope.of(context).unfocus();
                                    FocusManager.instance.primaryFocus
                                        ?.unfocus();
                                  },
                                  child: Padding(
                                    padding: MediaQuery.viewInsetsOf(context),
                                    child: A8a9reasonForCanclingWidget(),
                                  ),
                                );
                              },
                            ).then((value) => safeSetState(() {}));
                          },
                          text: FFLocalizations.of(context).getText(
                            '7knsc52j' /* Cancle */,
                          ),
                          options: FFButtonOptions(
                            width: 105.0,
                            height: 42.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: Color(0xFFA90000),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                            elevation: 3.0,
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                        ),
                      ),
                      FFButtonWidget(
                        onPressed: () {
                          print('Button pressed ...');
                        },
                        text: FFLocalizations.of(context).getText(
                          '6iio749g' /* Refresh */,
                        ),
                        icon: Icon(
                          Icons.refresh,
                          size: 20.0,
                        ),
                        options: FFButtonOptions(
                          height: 40.0,
                          padding: EdgeInsets.all(14.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primaryText,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    letterSpacing: 0.0,
                                  ),
                          elevation: 2.0,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ].divide(SizedBox(width: 20.0)),
                  ),
                ].divide(SizedBox(height: 5.0)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
