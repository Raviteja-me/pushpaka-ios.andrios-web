import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 's1welcome_saradhi_model.dart';
export 's1welcome_saradhi_model.dart';

class S1welcomeSaradhiWidget extends StatefulWidget {
  const S1welcomeSaradhiWidget({super.key});

  static String routeName = 's1welcomeSaradhi';
  static String routePath = '/s1welcomeSaradhi';

  @override
  State<S1welcomeSaradhiWidget> createState() => _S1welcomeSaradhiWidgetState();
}

class _S1welcomeSaradhiWidgetState extends State<S1welcomeSaradhiWidget> {
  late S1welcomeSaradhiModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => S1welcomeSaradhiModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (valueOrDefault<bool>(currentUserDocument?.isRider, false)) {
        context.goNamed(S8workHomePageWidget.routeName);

        return;
      } else {
        return;
      }
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
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFF2F2F2),
        body: SafeArea(
          top: true,
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 24.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 0.0, 0.0, 0.0),
                            child: Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: Image.asset(
                                    'assets/images/GGG.png',
                                  ).image,
                                ),
                                borderRadius: BorderRadius.circular(24.0),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.asset(
                                  'assets/images/GGG.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Material(
                          color: Colors.transparent,
                          elevation: 2.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(32.0),
                              bottomRight: Radius.circular(32.0),
                              topLeft: Radius.circular(32.0),
                              topRight: Radius.circular(32.0),
                            ),
                          ),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(32.0),
                                bottomRight: Radius.circular(32.0),
                                topLeft: Radius.circular(32.0),
                                topRight: Radius.circular(32.0),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  32.0, 24.0, 32.0, 24.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  FFButtonWidget(
                                    onPressed: () async {
                                      context.pushNamed(
                                          S4ProfileDetailsRiderWidget
                                              .routeName);
                                    },
                                    text: FFLocalizations.of(context).getText(
                                      'ppywt83e' /* Register for Free */,
                                    ),
                                    options: FFButtonOptions(
                                      width: MediaQuery.sizeOf(context).width *
                                          1.0,
                                      height: 60.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: Colors.black,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .override(
                                            fontFamily: 'Outfit',
                                            color: Colors.white,
                                            letterSpacing: 0.0,
                                          ),
                                      elevation: 4.0,
                                      borderRadius: BorderRadius.circular(30.0),
                                    ),
                                  ),
                                  FFButtonWidget(
                                    onPressed: () async {
                                      context.pushNamed(
                                          S2KnowMoreWidget.routeName);
                                    },
                                    text: FFLocalizations.of(context).getText(
                                      'y5dfi77q' /* Know More */,
                                    ),
                                    options: FFButtonOptions(
                                      width: MediaQuery.sizeOf(context).width *
                                          1.0,
                                      height: 60.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: Colors.black,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .override(
                                            fontFamily: 'Outfit',
                                            color: Colors.white,
                                            letterSpacing: 0.0,
                                          ),
                                      elevation: 4.0,
                                      borderRadius: BorderRadius.circular(30.0),
                                    ),
                                  ),
                                ].divide(SizedBox(height: 24.0)),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ].divide(SizedBox(height: 50.0)),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
