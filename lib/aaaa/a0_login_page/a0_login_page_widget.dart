import '/auth/firebase_auth/auth_util.dart';
import '/components/a1policy_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'a0_login_page_model.dart';
export 'a0_login_page_model.dart';

class A0LoginPageWidget extends StatefulWidget {
  const A0LoginPageWidget({super.key});

  static String routeName = 'a0LoginPage';
  static String routePath = '/Login1';

  @override
  State<A0LoginPageWidget> createState() => _A0LoginPageWidgetState();
}

class _A0LoginPageWidgetState extends State<A0LoginPageWidget> {
  late A0LoginPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => A0LoginPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (FFAppState().policyAccepted == false) {
        await showModalBottomSheet(
          isScrollControlled: true,
          backgroundColor: Colors.transparent,
          isDismissible: false,
          enableDrag: false,
          context: context,
          builder: (context) {
            return GestureDetector(
              onTap: () {
                FocusScope.of(context).unfocus();
                FocusManager.instance.primaryFocus?.unfocus();
              },
              child: Padding(
                padding: MediaQuery.viewInsetsOf(context),
                child: A1policyComponentWidget(),
              ),
            );
          },
        ).then((value) => safeSetState(() {}));

        return;
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              'Please Privide Mobile Number',
              style: GoogleFonts.getFont(
                'Roboto',
                color: FlutterFlowTheme.of(context).primaryText,
              ),
              textAlign: TextAlign.center,
            ),
            duration: Duration(milliseconds: 4000),
            backgroundColor: FlutterFlowTheme.of(context).secondary,
          ),
        );
        return;
      }
    });

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    authManager.handlePhoneAuthStateChanges(context);
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
        backgroundColor: Color(0xFFCECECE),
        body: SafeArea(
          top: true,
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Material(
                        color: Colors.transparent,
                        elevation: 2.0,
                        shape: const CircleBorder(),
                        child: Container(
                          width: 150.0,
                          height: 150.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: Image.asset(
                                'assets/images/dsdfsfs.png',
                              ).image,
                            ),
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: 350.0,
                            child: TextFormField(
                              controller: _model.textController,
                              focusNode: _model.textFieldFocusNode,
                              autofocus: true,
                              textCapitalization: TextCapitalization.none,
                              textInputAction: TextInputAction.send,
                              obscureText: false,
                              decoration: InputDecoration(
                                isDense: true,
                                labelText: FFLocalizations.of(context).getText(
                                  '20r8gkp1' /* Phone Number */,
                                ),
                                labelStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: Colors.black,
                                      fontSize: 20.0,
                                      letterSpacing: 0.0,
                                    ),
                                alignLabelWithHint: false,
                                hintStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: Colors.black,
                                      letterSpacing: 0.0,
                                    ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFF252121),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(14.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(14.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(14.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(14.0),
                                ),
                                filled: true,
                                contentPadding: EdgeInsets.all(18.0),
                                suffixIcon: Icon(
                                  Icons.phone_outlined,
                                  color: Colors.black,
                                  size: 30.0,
                                ),
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.black,
                                    fontSize: 20.0,
                                    letterSpacing: 0.0,
                                  ),
                              textAlign: TextAlign.start,
                              maxLength: 10,
                              maxLengthEnforcement: MaxLengthEnforcement.none,
                              keyboardType: TextInputType.number,
                              cursorColor: Colors.black,
                              validator: _model.textControllerValidator
                                  .asValidator(context),
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              FFButtonWidget(
                                onPressed: () async {
                                  final phoneNumberVal = (String var1) {
                                    return '+91 ' + var1;
                                  }(_model.textController.text);
                                  if (phoneNumberVal.isEmpty ||
                                      !phoneNumberVal.startsWith('+')) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                            'Phone Number is required and has to start with +.'),
                                      ),
                                    );
                                    return;
                                  }
                                  await authManager.beginPhoneAuth(
                                    context: context,
                                    phoneNumber: phoneNumberVal,
                                    onCodeSent: (context) async {
                                      context.goNamedAuth(
                                        A0OtpPageWidget.routeName,
                                        context.mounted,
                                        ignoreRedirect: true,
                                      );
                                    },
                                  );
                                },
                                text: FFLocalizations.of(context).getText(
                                  '2xr8ngtx' /* Send OTP */,
                                ),
                                options: FFButtonOptions(
                                  width: 150.0,
                                  height: 40.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: Colors.black,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Colors.white,
                                        letterSpacing: 0.0,
                                      ),
                                  elevation: 3.0,
                                  borderSide: BorderSide(
                                    color: Colors.black,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                              ),
                              Text(
                                FFLocalizations.of(context).getText(
                                  '2yfh5lrv' /* (or) */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                              FFButtonWidget(
                                onPressed: () async {
                                  GoRouter.of(context).prepareAuthEvent();
                                  final user = await authManager
                                      .signInAnonymously(context);
                                  if (user == null) {
                                    return;
                                  }

                                  context.goNamedAuth(
                                      A1IntroWidget.routeName, context.mounted);
                                },
                                text: FFLocalizations.of(context).getText(
                                  '9lqzn0q1' /* Guest Login */,
                                ),
                                options: FFButtonOptions(
                                  height: 40.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 16.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context).primary,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Colors.white,
                                        letterSpacing: 0.0,
                                      ),
                                  elevation: 0.0,
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                            ],
                          ),
                        ].divide(SizedBox(height: 60.0)),
                      ),
                    ]
                        .divide(SizedBox(height: 50.0))
                        .around(SizedBox(height: 50.0)),
                  ),
                ),
              ].divide(SizedBox(height: 20.0)),
            ),
          ),
        ),
      ),
    );
  }
}
