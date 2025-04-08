import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_language_selector.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'a9_ai_ride_model.dart';
export 'a9_ai_ride_model.dart';

class A9AiRideWidget extends StatefulWidget {
  const A9AiRideWidget({super.key});

  static String routeName = 'a9AiRide';
  static String routePath = '/a9AiRide';

  @override
  State<A9AiRideWidget> createState() => _A9AiRideWidgetState();
}

class _A9AiRideWidgetState extends State<A9AiRideWidget>
    with TickerProviderStateMixin {
  late A9AiRideModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => A9AiRideModel());

    animationsMap.addAll({
      'columnOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'iconButtonOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'iconButtonOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ShimmerEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            color: Color(0x80FFFFFF),
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
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding: EdgeInsets.all(24.0),
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                    width: 350.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        if (_model.showWaweForm)
                          Lottie.asset(
                            'assets/jsons/Audio_Wave.json',
                            width: 300.0,
                            height: 150.0,
                            fit: BoxFit.fill,
                            animate: true,
                          ),
                        if (!_model.showWaweForm)
                          Padding(
                            padding: EdgeInsets.all(32.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                if (!_model.isRecording)
                                  FlutterFlowIconButton(
                                    borderRadius: 100.0,
                                    borderWidth: 2.0,
                                    buttonSize: 150.0,
                                    fillColor: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    icon: Icon(
                                      Icons.mic_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      size: 70.0,
                                    ),
                                    showLoadingIndicator: true,
                                    onPressed: () async {
                                      _model.isRecording = true;
                                      safeSetState(() {});
                                      unawaited(
                                        () async {
                                          await actions.startTextRecording();
                                        }(),
                                      );
                                    },
                                  ).animateOnPageLoad(animationsMap[
                                      'iconButtonOnPageLoadAnimation1']!),
                                if (_model.isRecording)
                                  FlutterFlowIconButton(
                                    borderColor: Colors.transparent,
                                    borderRadius: 100.0,
                                    borderWidth: 2.0,
                                    buttonSize: 150.0,
                                    fillColor: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    icon: Icon(
                                      Icons.stop_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      size: 70.0,
                                    ),
                                    showLoadingIndicator: true,
                                    onPressed: () async {
                                      await actions.stopTextRecording();
                                      _model.isRecording = false;
                                      safeSetState(() {});
                                      _model.aResponceForSpeach =
                                          await GetResponceOpenAiCall.call(
                                        prompt:
                                            FFAppState().speechToTextResponse,
                                      );

                                      if ((_model
                                              .aResponceForSpeach?.succeeded ??
                                          true)) {
                                        _model.audioOutput = await actions
                                            .textToSpeechInbuiltMobileFunction(
                                          GetResponceOpenAiCall.responce(
                                            (_model.aResponceForSpeach
                                                    ?.jsonBody ??
                                                ''),
                                          )!,
                                        );
                                        _model.timer = _model.audioOutput;
                                        safeSetState(() {});
                                        await Future.delayed(
                                            const Duration(milliseconds: 100));
                                        _model.timerController.onStartTimer();
                                        _model.showWaweForm = true;
                                        safeSetState(() {});
                                      } else {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                            content: Text(
                                              'Failed',
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
                                      }

                                      safeSetState(() {});
                                    },
                                  ).animateOnPageLoad(animationsMap[
                                      'iconButtonOnPageLoadAnimation2']!),
                              ],
                            ).animateOnPageLoad(
                                animationsMap['columnOnPageLoadAnimation']!),
                          ),
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 1.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 40.0),
                  child: FlutterFlowLanguageSelector(
                    width: 120.0,
                    backgroundColor: FlutterFlowTheme.of(context).primaryText,
                    borderColor: Colors.transparent,
                    dropdownColor:
                        FlutterFlowTheme.of(context).primaryBackground,
                    dropdownIconColor:
                        FlutterFlowTheme.of(context).primaryBackground,
                    borderRadius: 8.0,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Outfit',
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          fontSize: 18.0,
                          letterSpacing: 0.0,
                        ),
                    hideFlags: true,
                    flagSize: 24.0,
                    flagTextGap: 8.0,
                    currentLanguage: FFLocalizations.of(context).languageCode,
                    languages: FFLocalizations.languages(),
                    onChanged: (lang) => setAppLanguage(context, lang),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0.0, -1.0),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 1.0),
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
                        ).animateOnPageLoad(
                            animationsMap['containerOnPageLoadAnimation']!),
                      ),
                    ),
                  ],
                ),
              ),
              Opacity(
                opacity: 0.0,
                child: FlutterFlowTimer(
                  initialTime: _model.timerInitialTimeMs,
                  getDisplayTime: (value) => StopWatchTimer.getDisplayTime(
                    value,
                    hours: false,
                    minute: false,
                    milliSecond: false,
                  ),
                  controller: _model.timerController,
                  updateStateInterval: Duration(milliseconds: 10000),
                  onChanged: (value, displayTime, shouldUpdate) {
                    _model.timerMilliseconds = value;
                    _model.timerValue = displayTime;
                    if (shouldUpdate) safeSetState(() {});
                  },
                  onEnded: () async {
                    _model.timerController.onResetTimer();

                    _model.showWaweForm = false;
                    safeSetState(() {});
                  },
                  textAlign: TextAlign.start,
                  style: FlutterFlowTheme.of(context).headlineSmall.override(
                        fontFamily: 'Outfit',
                        color: Color(0x00FFFFFF),
                        fontSize: 2.0,
                        letterSpacing: 0.0,
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
