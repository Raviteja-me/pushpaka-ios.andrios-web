import '/auth/firebase_auth/auth_util.dart';
import '/components/name_and_phone_number_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/index.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'a6_confim_vehicle_model.dart';
export 'a6_confim_vehicle_model.dart';

class A6ConfimVehicleWidget extends StatefulWidget {
  const A6ConfimVehicleWidget({
    super.key,
    this.pickupString,
    this.dropString,
    required this.distance,
    required this.time,
    required this.pickupLatlng,
    required this.dropLatlng,
    required this.price,
  });

  final String? pickupString;
  final String? dropString;
  final String? distance;
  final String? time;
  final LatLng? pickupLatlng;
  final LatLng? dropLatlng;
  final String? price;

  static String routeName = 'a6ConfimVehicle';
  static String routePath = '/a6ConfimVehicle';

  @override
  State<A6ConfimVehicleWidget> createState() => _A6ConfimVehicleWidgetState();
}

class _A6ConfimVehicleWidgetState extends State<A6ConfimVehicleWidget>
    with TickerProviderStateMixin {
  late A6ConfimVehicleModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => A6ConfimVehicleModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.vehicle = '';
      safeSetState(() {});
    });

    animationsMap.addAll({
      'columnOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 180.0.ms,
            duration: 600.0.ms,
            begin: Offset(-1.0, 1.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation1': AnimationInfo(
        loop: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 1150.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation2': AnimationInfo(
        loop: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 850.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'rowOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(-26.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ShimmerEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 1410.0.ms,
            color: FlutterFlowTheme.of(context).primaryText,
            angle: 0.524,
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
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.06, 0.32),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 11.0),
                      child: Container(
                        width: 150.0,
                        height: 33.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: Image.asset(
                              Theme.of(context).brightness == Brightness.dark
                                  ? 'assets/images/Untitled_design_(1).png'
                                  : 'assets/images/Untitled_design.png',
                            ).image,
                          ),
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 10.0,
                              height: 10.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).success,
                                shape: BoxShape.circle,
                              ),
                            ).animateOnPageLoad(animationsMap[
                                'containerOnPageLoadAnimation1']!),
                            Flexible(
                              child: Material(
                                color: Colors.transparent,
                                elevation: 3.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(12.0),
                                    child: Text(
                                      FFAppState().pickupString,
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            fontSize: 15.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.normal,
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ].divide(SizedBox(width: 15.0)),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 10.0,
                              height: 10.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).error,
                                shape: BoxShape.circle,
                              ),
                            ).animateOnPageLoad(animationsMap[
                                'containerOnPageLoadAnimation2']!),
                            Flexible(
                              child: Material(
                                color: Colors.transparent,
                                elevation: 3.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(12.0),
                                    child: Text(
                                      FFAppState().dropString,
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            fontSize: 15.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.normal,
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ].divide(SizedBox(width: 15.0)),
                        ),
                      ].divide(SizedBox(height: 10.0)),
                    ).animateOnPageLoad(
                        animationsMap['columnOnPageLoadAnimation']!),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.98),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Icon(
                                    Icons.route,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 40.0,
                                  ),
                                  AutoSizeText(
                                    valueOrDefault<String>(
                                      FFAppState().routeDistance,
                                      '10 km',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          fontSize: 18.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Icon(
                                    Icons.timer_sharp,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 40.0,
                                  ),
                                  AutoSizeText(
                                    valueOrDefault<String>(
                                      FFAppState().routeDuration,
                                      '20 min',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          fontSize: 18.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                ],
                              ),
                            ].divide(SizedBox(width: 40.0)),
                          ).animateOnPageLoad(
                              animationsMap['rowOnPageLoadAnimation']!),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                    child: Material(
                      color: Colors.transparent,
                      elevation: 2.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  _model.vehicle = 'bike';
                                  safeSetState(() {});
                                },
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Material(
                                      color: Colors.transparent,
                                      elevation: 2.0,
                                      shape: const CircleBorder(),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color: _model.vehicle == 'bike'
                                                ? FlutterFlowTheme.of(context)
                                                    .success
                                                : Color(0x00000000),
                                          ),
                                        ),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: Image.asset(
                                            'assets/images/bike_saaradhi.png',
                                            width: 100.0,
                                            height: 100.0,
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      valueOrDefault<String>(
                                        (String var1) {
                                          return (double.parse(var1) / 1000) <=
                                                  3
                                              ? '30'
                                              : (30 +
                                                      ((double.parse(var1) /
                                                                      1000 -
                                                                  3)
                                                              .ceil() *
                                                          10))
                                                  .toString();
                                        }(widget.price!),
                                        '100',
                                      ).maybeHandleOverflow(
                                        maxChars: 5,
                                        replacement: '…',
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            fontSize: 16.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                  ].divide(SizedBox(height: 5.0)),
                                ),
                              ),
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  _model.vehicle = 'auto';
                                  safeSetState(() {});
                                },
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Material(
                                      color: Colors.transparent,
                                      elevation: 2.0,
                                      shape: const CircleBorder(),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color: _model.vehicle == 'auto'
                                                ? FlutterFlowTheme.of(context)
                                                    .success
                                                : Color(0x00000000),
                                          ),
                                        ),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: Image.asset(
                                            'assets/images/auto_saaradji.png',
                                            width: 100.0,
                                            height: 100.0,
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      valueOrDefault<String>(
                                        (String var1) {
                                          return (double.parse(var1) / 1000) <=
                                                  3
                                              ? '50'
                                              : (50 +
                                                      ((double.parse(var1) /
                                                                      1000 -
                                                                  3)
                                                              .ceil() *
                                                          15))
                                                  .toString();
                                        }(widget.price!),
                                        '150',
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            fontSize: 16.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                  ].divide(SizedBox(height: 5.0)),
                                ),
                              ),
                            ].divide(SizedBox(width: 40.0)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'irj0tyek' /* Select A Vehicle & Slide To Co... */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              color: FlutterFlowTheme.of(context).secondaryText,
                              letterSpacing: 0.0,
                            ),
                      ).animateOnPageLoad(
                          animationsMap['textOnPageLoadAnimation']!),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 350.0,
                          height: 70.0,
                          child: custom_widgets.SlideToConfirm(
                            width: 350.0,
                            height: 70.0,
                            action: () async {
                              if ((currentPhoneNumber != '') &&
                                  (valueOrDefault(
                                              currentUserDocument?.gender,
                                              '') !=
                                          '')) {
                                if (_model.vehicle != '') {
                                  FFAppState().requestedVehicle =
                                      _model.vehicle;
                                  FFAppState().activeRide = true;

                                  context.goNamed(
                                      A7SearchingRiderWidget.routeName);

                                  return;
                                } else {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        'Please Select A vehicle',
                                        style: TextStyle(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                      ),
                                      duration: Duration(milliseconds: 4000),
                                      backgroundColor:
                                          FlutterFlowTheme.of(context)
                                              .secondary,
                                    ),
                                  );
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
                                        FocusManager.instance.primaryFocus
                                            ?.unfocus();
                                      },
                                      child: Padding(
                                        padding:
                                            MediaQuery.viewInsetsOf(context),
                                        child: NameAndPhoneNumberWidget(),
                                      ),
                                    );
                                  },
                                ).then((value) => safeSetState(() {}));

                                return;
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ].divide(SizedBox(height: 4.0)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
