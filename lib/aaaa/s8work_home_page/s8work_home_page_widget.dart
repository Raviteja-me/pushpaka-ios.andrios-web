import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 's8work_home_page_model.dart';
export 's8work_home_page_model.dart';

class S8workHomePageWidget extends StatefulWidget {
  const S8workHomePageWidget({super.key});

  static String routeName = 's8workHomePage';
  static String routePath = '/s8workHomePage';

  @override
  State<S8workHomePageWidget> createState() => _S8workHomePageWidgetState();
}

class _S8workHomePageWidgetState extends State<S8workHomePageWidget>
    with TickerProviderStateMixin {
  late S8workHomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  LatLng? currentUserLocationValue;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => S8workHomePageModel());

    getCurrentUserLocation(defaultLocation: LatLng(0.0, 0.0), cached: true)
        .then((loc) => safeSetState(() => currentUserLocationValue = loc));
    _model.switchValue = false;
    animationsMap.addAll({
      'columnOnActionTriggerAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 0.0),
            end: Offset(0.0, -150.0),
          ),
          BlurEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 0.0),
            end: Offset(15.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 1200.0.ms,
            duration: 600.0.ms,
            begin: 1.0,
            end: 0.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation1': AnimationInfo(
        loop: true,
        reverse: true,
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
        reverse: true,
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
      'columnOnActionTriggerAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeIn,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 0.0),
            end: Offset(0.0, 200.0),
          ),
          BlurEffect(
            curve: Curves.easeIn,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 0.0),
            end: Offset(20.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 1.0,
            end: 0.0,
          ),
        ],
      ),
      'columnOnActionTriggerAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeIn,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: Offset(0.0, 0.0),
            end: Offset(200.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 1.0,
            end: 0.0,
          ),
        ],
      ),
      'textOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeOut,
            delay: 600.0.ms,
            duration: 400.0.ms,
            begin: Offset(0.0, -100.0),
            end: Offset(0.0, 0.0),
          ),
          BlurEffect(
            curve: Curves.easeOut,
            delay: 600.0.ms,
            duration: 400.0.ms,
            begin: Offset(20.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeOut,
            delay: 600.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'textOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeOut,
            delay: 600.0.ms,
            duration: 400.0.ms,
            begin: Offset(0.0, -100.0),
            end: Offset(0.0, 0.0),
          ),
          BlurEffect(
            curve: Curves.easeOut,
            delay: 600.0.ms,
            duration: 400.0.ms,
            begin: Offset(20.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeOut,
            delay: 600.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'textOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 800.ms),
          MoveEffect(
            curve: Curves.easeOut,
            delay: 800.0.ms,
            duration: 400.0.ms,
            begin: Offset(80.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
          BlurEffect(
            curve: Curves.easeOut,
            delay: 800.0.ms,
            duration: 400.0.ms,
            begin: Offset(10.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeOut,
            delay: 800.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'textOnPageLoadAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 700.ms),
          MoveEffect(
            curve: Curves.easeOut,
            delay: 700.0.ms,
            duration: 400.0.ms,
            begin: Offset(0.0, -100.0),
            end: Offset(0.0, 0.0),
          ),
          BlurEffect(
            curve: Curves.easeOut,
            delay: 700.0.ms,
            duration: 400.0.ms,
            begin: Offset(20.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeOut,
            delay: 700.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'textOnPageLoadAnimation5': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 700.ms),
          MoveEffect(
            curve: Curves.easeOut,
            delay: 700.0.ms,
            duration: 400.0.ms,
            begin: Offset(0.0, -100.0),
            end: Offset(0.0, 0.0),
          ),
          BlurEffect(
            curve: Curves.easeOut,
            delay: 700.0.ms,
            duration: 400.0.ms,
            begin: Offset(20.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeOut,
            delay: 700.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'textOnPageLoadAnimation6': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 700.ms),
          MoveEffect(
            curve: Curves.easeOut,
            delay: 700.0.ms,
            duration: 400.0.ms,
            begin: Offset(0.0, -100.0),
            end: Offset(0.0, 0.0),
          ),
          BlurEffect(
            curve: Curves.easeOut,
            delay: 700.0.ms,
            duration: 400.0.ms,
            begin: Offset(20.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeOut,
            delay: 700.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

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
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.0, -1.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              if (FFAppState().isWorking)
                                Container(
                                  width: 10.0,
                                  height: 10.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF22A460),
                                    shape: BoxShape.circle,
                                  ),
                                ).animateOnPageLoad(animationsMap[
                                    'containerOnPageLoadAnimation1']!),
                              if (!FFAppState().isWorking)
                                Container(
                                  width: 10.0,
                                  height: 10.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFA42222),
                                    shape: BoxShape.circle,
                                  ),
                                ).animateOnPageLoad(animationsMap[
                                    'containerOnPageLoadAnimation2']!),
                              Flexible(
                                child: Text(
                                  valueOrDefault<String>(
                                    currentUserLocationValue?.toString(),
                                    'Your Live Location',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ].divide(SizedBox(width: 10.0)),
                          ),
                        ),
                      ],
                    ).animateOnActionTrigger(
                      animationsMap['columnOnActionTriggerAnimation1']!,
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(16.0),
                            bottomRight: Radius.circular(16.0),
                            topLeft: Radius.circular(100.0),
                            topRight: Radius.circular(100.0),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(18.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Stack(
                                alignment: AlignmentDirectional(1.0, -1.0),
                                children: [
                                  AuthUserStreamWidget(
                                    builder: (context) => Container(
                                      width: 120.0,
                                      height: 120.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: Image.network(
                                            currentUserPhoto,
                                          ).image,
                                        ),
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Flexible(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 0.0, 20.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          AuthUserStreamWidget(
                                            builder: (context) => Text(
                                              valueOrDefault<String>(
                                                currentUserDisplayName,
                                                'name',
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    fontSize: 22.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                            ).animateOnPageLoad(animationsMap[
                                                'textOnPageLoadAnimation1']!),
                                          ),
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              'ydqklljy' /*  Bike */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontSize: 22.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          ).animateOnPageLoad(animationsMap[
                                              'textOnPageLoadAnimation2']!),
                                        ],
                                      ),
                                      Text(
                                        getCurrentTimestamp.toString(),
                                        style: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              fontSize: 20.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.normal,
                                            ),
                                      ).animateOnPageLoad(animationsMap[
                                          'textOnPageLoadAnimation3']!),
                                    ],
                                  ).animateOnActionTrigger(
                                    animationsMap[
                                        'columnOnActionTriggerAnimation3']!,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      if (valueOrDefault<bool>(
                              currentUserDocument?.isWorking, false) ==
                          true)
                        AuthUserStreamWidget(
                          builder: (context) => Material(
                            color: Colors.transparent,
                            elevation: 2.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 16.0, 16.0, 16.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Container(
                                      width: 377.0,
                                      height: 148.0,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          fit: BoxFit.none,
                                          image: Image.asset(
                                            'assets/images/Untitled_design_(1).gif',
                                          ).image,
                                        ),
                                      ),
                                    ),
                                  ].divide(SizedBox(height: 16.0)),
                                ),
                              ),
                            ),
                          ),
                        ),
                      Material(
                        color: Colors.transparent,
                        elevation: 2.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 16.0, 16.0, 16.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        'ov8lixjy' /* Work */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .override(
                                            fontFamily: 'Outfit',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            fontSize: 24.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                    Switch(
                                      value: _model.switchValue!,
                                      onChanged: (newValue) async {
                                        safeSetState(() =>
                                            _model.switchValue = newValue);
                                        if (newValue) {
                                          await currentUserReference!
                                              .update(createUsersRecordData(
                                            isWorking: true,
                                          ));
                                        } else {
                                          await currentUserReference!
                                              .update(createUsersRecordData(
                                            isWorking: false,
                                          ));
                                        }
                                      },
                                      activeColor:
                                          FlutterFlowTheme.of(context).primary,
                                      activeTrackColor:
                                          FlutterFlowTheme.of(context)
                                              .secondaryText,
                                      inactiveTrackColor:
                                          FlutterFlowTheme.of(context)
                                              .secondaryText,
                                      inactiveThumbColor: Color(0xFFE0E3E7),
                                    ),
                                  ],
                                ),
                              ].divide(SizedBox(height: 16.0)),
                            ),
                          ),
                        ),
                      ),
                      Material(
                        color: Colors.transparent,
                        elevation: 2.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 16.0, 16.0, 16.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Flexible(
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          'ijgxhfyu' /* Earnings History */,
                                        ),
                                        maxLines: 2,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontSize: 24.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ).animateOnPageLoad(animationsMap[
                                          'textOnPageLoadAnimation4']!),
                                    ),
                                    FlutterFlowIconButton(
                                      borderColor: Colors.transparent,
                                      borderRadius: 20.0,
                                      buttonSize: 40.0,
                                      fillColor: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      icon: Icon(
                                        Icons.arrow_forward_ios_sharp,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        size: 24.0,
                                      ),
                                      onPressed: () async {
                                        context.pushNamed(
                                            S9earningsWidget.routeName);
                                      },
                                    ),
                                  ].divide(SizedBox(width: 10.0)),
                                ),
                              ].divide(SizedBox(height: 16.0)),
                            ),
                          ),
                        ),
                      ),
                      Material(
                        color: Colors.transparent,
                        elevation: 2.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 16.0, 16.0, 16.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Flexible(
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          'cyld0206' /* View All Your Rides */,
                                        ),
                                        maxLines: 2,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontSize: 24.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ).animateOnPageLoad(animationsMap[
                                          'textOnPageLoadAnimation5']!),
                                    ),
                                    FlutterFlowIconButton(
                                      borderColor: Colors.transparent,
                                      borderRadius: 20.0,
                                      buttonSize: 40.0,
                                      fillColor: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      icon: Icon(
                                        Icons.arrow_forward_ios_sharp,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        size: 24.0,
                                      ),
                                      onPressed: () async {
                                        context.pushNamed(
                                            S9RideHistoryWidget.routeName);
                                      },
                                    ),
                                  ].divide(SizedBox(width: 10.0)),
                                ),
                              ].divide(SizedBox(height: 16.0)),
                            ),
                          ),
                        ),
                      ),
                      Material(
                        color: Colors.transparent,
                        elevation: 2.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 16.0, 16.0, 16.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Flexible(
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          'd0j2ggbq' /* View Your Profile */,
                                        ),
                                        maxLines: 2,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontSize: 24.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ).animateOnPageLoad(animationsMap[
                                          'textOnPageLoadAnimation6']!),
                                    ),
                                    FlutterFlowIconButton(
                                      borderColor: Colors.transparent,
                                      borderRadius: 20.0,
                                      buttonSize: 40.0,
                                      fillColor: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      icon: Icon(
                                        Icons.arrow_forward_ios_sharp,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        size: 24.0,
                                      ),
                                      onPressed: () async {
                                        context.pushNamed(
                                            S7RiderProfileToEditWidget
                                                .routeName);
                                      },
                                    ),
                                  ].divide(SizedBox(width: 10.0)),
                                ),
                              ].divide(SizedBox(height: 16.0)),
                            ),
                          ),
                        ),
                      ),
                      Material(
                        color: Colors.transparent,
                        elevation: 2.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 16.0, 16.0, 16.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        '1oz01g2s' /* Book A Ride For You */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .override(
                                            fontFamily: 'Outfit',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            fontSize: 24.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                    FlutterFlowIconButton(
                                      borderColor: Colors.transparent,
                                      borderRadius: 20.0,
                                      buttonSize: 40.0,
                                      fillColor: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      icon: Icon(
                                        Icons.arrow_forward_ios_sharp,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        size: 24.0,
                                      ),
                                      onPressed: () async {
                                        context.pushNamed(
                                            A2PickupWithoutMapsWidget
                                                .routeName);
                                      },
                                    ),
                                  ],
                                ),
                              ].divide(SizedBox(height: 16.0)),
                            ),
                          ),
                        ),
                      ),
                    ].divide(SizedBox(height: 10.0)),
                  ).animateOnActionTrigger(
                    animationsMap['columnOnActionTriggerAnimation2']!,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
