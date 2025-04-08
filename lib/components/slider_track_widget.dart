import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'slider_track_model.dart';
export 'slider_track_model.dart';

class SliderTrackWidget extends StatefulWidget {
  const SliderTrackWidget({super.key});

  @override
  State<SliderTrackWidget> createState() => _SliderTrackWidgetState();
}

class _SliderTrackWidgetState extends State<SliderTrackWidget>
    with TickerProviderStateMixin {
  late SliderTrackModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SliderTrackModel());

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 550.ms),
          ScaleEffect(
            curve: Curves.easeOut,
            delay: 550.0.ms,
            duration: 400.0.ms,
            begin: Offset(2.0, 1.0),
            end: Offset(1.0, 1.0),
          ),
          FadeEffect(
            curve: Curves.easeOut,
            delay: 550.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          BlurEffect(
            curve: Curves.easeOut,
            delay: 550.0.ms,
            duration: 400.0.ms,
            begin: Offset(10.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
          MoveEffect(
            curve: Curves.easeOut,
            delay: 550.0.ms,
            duration: 400.0.ms,
            begin: Offset(100.0, 70.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
    });

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
      height: 70.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
        borderRadius: BorderRadius.circular(40.0),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 24.0, 0.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FaIcon(
              FontAwesomeIcons.studiovinari,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 40.0,
            ),
          ],
        ),
      ),
    ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!);
  }
}
