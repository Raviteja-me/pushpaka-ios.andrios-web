import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/name_and_phone_number_widget.dart';
import '/components/select_language_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'a2_pickup_without_maps_model.dart';
export 'a2_pickup_without_maps_model.dart';

class A2PickupWithoutMapsWidget extends StatefulWidget {
  const A2PickupWithoutMapsWidget({super.key});

  static String routeName = 'a2PickupWithoutMaps';
  static String routePath = '/a2PickupWithoutMaps';

  @override
  State<A2PickupWithoutMapsWidget> createState() =>
      _A2PickupWithoutMapsWidgetState();
}

class _A2PickupWithoutMapsWidgetState extends State<A2PickupWithoutMapsWidget>
    with TickerProviderStateMixin {
  late A2PickupWithoutMapsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  LatLng? currentUserLocationValue;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => A2PickupWithoutMapsModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      currentUserLocationValue =
          await getCurrentUserLocation(defaultLocation: LatLng(0.0, 0.0));
      if (FFAppState().activeRide == false) {
        _model.vehicle = '';
        _model.pickupLatlng = currentUserLocationValue;
        _model.pickupString = null;
        safeSetState(() {});
        _model.apiResultfc6 = await RevereseGeoCodingCall.call(
          latlng: valueOrDefault<String>(
            (String var1) {
              return var1
                  .replaceAll('LatLng(lat: ', '')
                  .replaceAll(', lng: ', ', ')
                  .replaceAll(')', '');
            }(currentUserLocationValue!.toString()),
            'pickupstring',
          ),
        );

        if ((_model.apiResultfc6?.succeeded ?? true)) {
          _model.pickupString = RevereseGeoCodingCall.listAdress(
            (_model.apiResultfc6?.jsonBody ?? ''),
          )?.firstOrNull;
          safeSetState(() {});
          _model.showpichup = false;
          safeSetState(() {});
          await Future.delayed(const Duration(milliseconds: 500));

          safeSetState(() {});
          return;
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                'Oops! something went wrong',
                style: TextStyle(
                  color: FlutterFlowTheme.of(context).primaryText,
                ),
              ),
              duration: Duration(milliseconds: 4000),
              backgroundColor: FlutterFlowTheme.of(context).secondary,
            ),
          );
          return;
        }
      } else {
        context.goNamed(A7SearchingRiderWidget.routeName);

        return;
      }
    });

    _model.switchValue1 = false;
    _model.switchValue2 = false;
    animationsMap.addAll({
      'containerOnPageLoadAnimation1': AnimationInfo(
        loop: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 310.0.ms,
            duration: 780.0.ms,
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
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                alignment: AlignmentDirectional(0.0, -1.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0.02, 0.75),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 11.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed(Z1DrawerCopyWidget.routeName);
                          },
                          child: Container(
                            width: 150.0,
                            height: 33.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: Image.asset(
                                  Theme.of(context).brightness ==
                                          Brightness.dark
                                      ? 'assets/images/Untitled_design_(1).png'
                                      : 'assets/images/Untitled_design.png',
                                ).image,
                              ),
                              borderRadius: BorderRadius.circular(24.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                    if (!_model.showpichup)
                      Align(
                        alignment: AlignmentDirectional(0.0, -1.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 1.0, 0.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed(
                                A3PickupWithMapsWidget.routeName,
                                queryParameters: {
                                  'pickupLatlng': serializeParam(
                                    _model.pickupLatlng,
                                    ParamType.LatLng,
                                  ),
                                  'pickupString': serializeParam(
                                    _model.pickupString,
                                    ParamType.String,
                                  ),
                                }.withoutNulls,
                              );
                            },
                            child: Material(
                              color: Colors.transparent,
                              elevation: 2.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              child: Container(
                                width: 320.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5.0, 0.0, 0.0, 0.0),
                                        child: Container(
                                          width: 10.0,
                                          height: 10.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xFF3F8D18),
                                            shape: BoxShape.circle,
                                          ),
                                        ).animateOnPageLoad(animationsMap[
                                            'containerOnPageLoadAnimation1']!),
                                      ),
                                      Flexible(
                                        child: Text(
                                          valueOrDefault<String>(
                                            _model.pickupString,
                                            'Ananthapur...',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontSize: 18.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                      ),
                                    ].divide(SizedBox(width: 10.0)),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    if (!_model.showpichup)
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          currentUserLocationValue =
                              await getCurrentUserLocation(
                                  defaultLocation: LatLng(0.0, 0.0));
                          var _shouldSetState = false;
                          if (_model.pickupString != null &&
                              _model.pickupString != '') {
                            FFAppState().pickup = _model.pickupLatlng;
                            FFAppState().pickupString = _model.pickupString!;
                            safeSetState(() {});

                            context.pushNamed(A5DropWithMapsWidget.routeName);

                            if (_shouldSetState) safeSetState(() {});
                            return;
                          } else {
                            _model.pickupLatlng = currentUserLocationValue;
                            safeSetState(() {});
                            _model.apiResultfc622 =
                                await RevereseGeoCodingCall.call(
                              latlng: valueOrDefault<String>(
                                (String var1) {
                                  return var1
                                      .replaceAll('LatLng(lat: ', '')
                                      .replaceAll(', lng: ', ', ')
                                      .replaceAll(')', '');
                                }(_model.pickupLatlng!.toString()),
                                'pickupstring',
                              ),
                            );

                            _shouldSetState = true;
                            if ((_model.apiResultfc622?.succeeded ?? true)) {
                              _model.pickupString =
                                  RevereseGeoCodingCall.listAdress(
                                (_model.apiResultfc622?.jsonBody ?? ''),
                              )?.firstOrNull;
                              await Future.delayed(
                                  const Duration(milliseconds: 500));
                              FFAppState().pickup = _model.pickupLatlng;
                              FFAppState().pickupString = _model.pickupString!;
                              safeSetState(() {});

                              context.pushNamed(A5DropWithMapsWidget.routeName);

                              if (_shouldSetState) safeSetState(() {});
                              return;
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'smenthing went Wrong',
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
                            width: 320.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5.0, 0.0, 1.0, 0.0),
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
                                  ),
                                  Flexible(
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        '667yeiup' /* Drop Location (Optional) */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            fontSize: 18.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                  ),
                                ].divide(SizedBox(width: 10.0)),
                              ),
                            ),
                          ),
                        ),
                      ),
                    if (_model.showpichup)
                      Opacity(
                        opacity: 0.7,
                        child: Container(
                          width: 352.0,
                          height: 151.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.none,
                              image: Image.asset(
                                'assets/images/Untitled_design_(1).gif',
                              ).image,
                            ),
                          ),
                        ),
                      ),
                  ].divide(SizedBox(height: 5.0)),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 1.0),
                child: Container(
                  decoration: BoxDecoration(),
                  child: Visibility(
                    visible: !_model.showpichup,
                    child: Padding(
                      padding: EdgeInsets.all(6.0),
                      child: SingleChildScrollView(
                        primary: false,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(16.0),
                                  bottomRight: Radius.circular(16.0),
                                  topLeft: Radius.circular(100.0),
                                  topRight: Radius.circular(100.0),
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            context.pushNamed(
                                                A9AiRideWidget.routeName);
                                          },
                                          child: Container(
                                            width: 70.0,
                                            height: 70.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image: Image.asset(
                                                  'assets/images/e081t_6.gif',
                                                ).image,
                                              ),
                                              shape: BoxShape.circle,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            '99nepsb9' /* Ai Ride */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Roboto',
                                                fontSize: 16.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                      ].divide(SizedBox(height: 5.0)),
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Stack(
                                          children: [
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                await showModalBottomSheet(
                                                  isScrollControlled: true,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  enableDrag: false,
                                                  context: context,
                                                  builder: (context) {
                                                    return GestureDetector(
                                                      onTap: () {
                                                        FocusScope.of(context)
                                                            .unfocus();
                                                        FocusManager.instance
                                                            .primaryFocus
                                                            ?.unfocus();
                                                      },
                                                      child: Padding(
                                                        padding: MediaQuery
                                                            .viewInsetsOf(
                                                                context),
                                                        child:
                                                            SelectLanguageWidget(),
                                                      ),
                                                    );
                                                  },
                                                ).then((value) =>
                                                    safeSetState(() {}));
                                              },
                                              child: Container(
                                                width: 70.0,
                                                height: 70.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  image: DecorationImage(
                                                    fit: BoxFit.cover,
                                                    image: Image.asset(
                                                      'assets/images/lanfuage_dark.png',
                                                    ).image,
                                                  ),
                                                  shape: BoxShape.circle,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            '13rqlhde' /* Language */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Roboto',
                                                fontSize: 16.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                      ].divide(SizedBox(height: 5.0)),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Material(
                              color: Colors.transparent,
                              elevation: 2.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24.0),
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  borderRadius: BorderRadius.circular(24.0),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      width: 70.0,
                                      height: 70.0,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: Image.asset(
                                            'assets/images/bike_saaradhi.png',
                                          ).image,
                                        ),
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                    Flexible(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Flexible(
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'dpybupz2' /* Fix Rs.30 upto 3 Km */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .headlineSmall
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        fontSize: 18.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Flexible(
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '59fwes8u' /* After that 1 km = Rs.10 */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        fontSize: 15.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Flexible(
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'xr293q80' /* Available Riders :  */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ),
                                              Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '2ksxjlt4' /* 10 */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Switch.adaptive(
                                      value: _model.switchValue1!,
                                      onChanged: _model.switchValue2!
                                          ? null
                                          : (newValue) async {
                                              safeSetState(() => _model
                                                  .switchValue1 = newValue);
                                              if (newValue) {
                                                _model.vehicle = 'bike';
                                                safeSetState(() {});
                                              } else {
                                                _model.vehicle = '';
                                                safeSetState(() {});
                                              }
                                            },
                                      activeColor: Colors.white,
                                      activeTrackColor: Color(0xFFEFBC39),
                                      inactiveTrackColor: Color(0xFFABA4A4),
                                      inactiveThumbColor: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Material(
                              color: Colors.transparent,
                              elevation: 2.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24.0),
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  borderRadius: BorderRadius.circular(24.0),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      width: 70.0,
                                      height: 70.0,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: Image.asset(
                                            'assets/images/auto_saaradji.png',
                                          ).image,
                                        ),
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                    Flexible(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Flexible(
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'rawt6pzr' /* Fix Rs.50 upto 3 Km */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .headlineSmall
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        fontSize: 18.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Flexible(
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '2ts9ihsi' /* After that 1 km = Rs.15 */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        fontSize: 15.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Flexible(
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '6dd0wuo1' /* Available Riders :  */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ),
                                              Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'lz4n1wn4' /* 10 */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Switch.adaptive(
                                      value: _model.switchValue2!,
                                      onChanged: _model.switchValue1!
                                          ? null
                                          : (newValue) async {
                                              safeSetState(() => _model
                                                  .switchValue2 = newValue);
                                              if (newValue) {
                                                _model.vehicle = 'auto';
                                                safeSetState(() {});
                                              } else {
                                                _model.vehicle = '';
                                                safeSetState(() {});
                                              }
                                            },
                                      activeColor: _model.switchValue1!
                                          ? Colors.white
                                          : Colors.white,
                                      activeTrackColor: _model.switchValue1!
                                          ? FlutterFlowTheme.of(context).accent1
                                          : Color(0xFFEFBC39),
                                      inactiveTrackColor: _model.switchValue1!
                                          ? Color(0xFF9A8F8F)
                                          : Color(0xFFABA4A4),
                                      inactiveThumbColor: _model.switchValue1!
                                          ? Colors.white
                                          : Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 10.0),
                              child: Container(
                                width: 400.0,
                                height: 80.0,
                                child: custom_widgets.SlideToConfirm(
                                  width: 400.0,
                                  height: 80.0,
                                  action: () async {
                                    if ((currentPhoneNumber != '') &&
                                        (valueOrDefault(
                                                    currentUserDocument?.gender,
                                                    '') !=
                                                '')) {
                                      if (_model.vehicle != null &&
                                          _model.vehicle != '') {
                                        FFAppState().pickup =
                                            _model.pickupLatlng;
                                        FFAppState().pickupString =
                                            _model.pickupString!;
                                        safeSetState(() {});

                                        context.goNamed(
                                            A7SearchingRiderWidget.routeName);

                                        return;
                                      } else {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                            content: Text(
                                              'Select A vehicle to Proceed...',
                                              style: TextStyle(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                            duration:
                                                Duration(milliseconds: 4000),
                                            backgroundColor: Colors.white,
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
                                              padding: MediaQuery.viewInsetsOf(
                                                  context),
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
                            ),
                          ].divide(SizedBox(height: 5.0)),
                        ),
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
