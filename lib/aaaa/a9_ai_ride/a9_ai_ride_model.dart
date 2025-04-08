import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'a9_ai_ride_widget.dart' show A9AiRideWidget;
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';

class A9AiRideModel extends FlutterFlowModel<A9AiRideWidget> {
  ///  Local state fields for this page.

  bool isRecording = false;

  bool showWaweForm = false;

  bool isPlaying = false;

  double? timer;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (getResponceOpenAi)] action in IconButton widget.
  ApiCallResponse? aResponceForSpeach;
  // Stores action output result for [Custom Action - textToSpeechInbuiltMobileFunction] action in IconButton widget.
  double? audioOutput;
  // State field(s) for Timer widget.
  final timerInitialTimeMs = 15000;
  int timerMilliseconds = 15000;
  String timerValue = StopWatchTimer.getDisplayTime(
    15000,
    hours: false,
    minute: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timerController =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    timerController.dispose();
  }
}
