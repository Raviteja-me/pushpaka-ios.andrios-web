import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'slider_thumb_model.dart';
export 'slider_thumb_model.dart';

class SliderThumbWidget extends StatefulWidget {
  const SliderThumbWidget({super.key});

  @override
  State<SliderThumbWidget> createState() => _SliderThumbWidgetState();
}

class _SliderThumbWidgetState extends State<SliderThumbWidget>
    with TickerProviderStateMixin {
  late SliderThumbModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SliderThumbModel());

    animationsMap.addAll({
      'mouseRegionOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 600.ms),
          ScaleEffect(
            curve: Curves.easeOut,
            delay: 600.0.ms,
            duration: 600.0.ms,
            begin: Offset(3.0, 1.0),
            end: Offset(1.0, 1.0),
          ),
          FadeEffect(
            curve: Curves.easeOut,
            delay: 600.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          BlurEffect(
            curve: Curves.easeOut,
            delay: 600.0.ms,
            duration: 600.0.ms,
            begin: Offset(15.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
          MoveEffect(
            curve: Curves.easeOut,
            delay: 600.0.ms,
            duration: 600.0.ms,
            begin: Offset(-100.0, -50.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'mouseRegionOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 600.ms),
          ScaleEffect(
            curve: Curves.easeOut,
            delay: 600.0.ms,
            duration: 600.0.ms,
            begin: Offset(3.0, 1.0),
            end: Offset(1.0, 1.0),
          ),
          FadeEffect(
            curve: Curves.easeOut,
            delay: 600.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          BlurEffect(
            curve: Curves.easeOut,
            delay: 600.0.ms,
            duration: 600.0.ms,
            begin: Offset(15.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
          MoveEffect(
            curve: Curves.easeOut,
            delay: 600.0.ms,
            duration: 600.0.ms,
            begin: Offset(-100.0, -50.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'iconOnPageLoadAnimation': AnimationInfo(
        loop: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(-9.0, 0.0),
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
    return MouseRegion(
      opaque: false,
      cursor: SystemMouseCursors.click ?? MouseCursor.defer,
      child: MouseRegion(
        opaque: false,
        cursor: SystemMouseCursors.click ?? MouseCursor.defer,
        child: Padding(
          padding: EdgeInsets.all(4.0),
          child: Container(
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              borderRadius: BorderRadius.circular(40.0),
            ),
            child: Padding(
              padding: EdgeInsets.all(4.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 44.0,
                    height: 44.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.arrow_forward_ios_sharp,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 24.0,
                    ).animateOnPageLoad(
                        animationsMap['iconOnPageLoadAnimation']!),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(7.0, 0.0, 7.0, 0.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'sove9p2h' /* Slide to
Ride */
                        ,
                      ),
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            color: FlutterFlowTheme.of(context).primaryText,
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
        onEnter: ((event) async {
          safeSetState(() => _model.mouseRegionHovered2 = true);
        }),
        onExit: ((event) async {
          safeSetState(() => _model.mouseRegionHovered2 = false);
        }),
      ).animateOnPageLoad(animationsMap['mouseRegionOnPageLoadAnimation2']!),
      onEnter: ((event) async {
        safeSetState(() => _model.mouseRegionHovered1 = true);
      }),
      onExit: ((event) async {
        safeSetState(() => _model.mouseRegionHovered1 = false);
      }),
    ).animateOnPageLoad(animationsMap['mouseRegionOnPageLoadAnimation1']!);
  }
}
