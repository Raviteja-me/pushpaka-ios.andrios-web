import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter/material.dart';
import 'a0_otp_page_model.dart';
export 'a0_otp_page_model.dart';

class A0OtpPageWidget extends StatefulWidget {
  const A0OtpPageWidget({super.key});

  static String routeName = 'a0OtpPage';
  static String routePath = '/a0OtpPage';

  @override
  State<A0OtpPageWidget> createState() => _A0OtpPageWidgetState();
}

class _A0OtpPageWidgetState extends State<A0OtpPageWidget> {
  late A0OtpPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => A0OtpPageModel());

    _model.pinCodeFocusNode ??= FocusNode();

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
        backgroundColor: Color(0xFFD8D8D8),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
                    child: Container(
                      width: 150.0,
                      height: 150.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
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
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: 350.0,
                    decoration: BoxDecoration(),
                    child: Padding(
                      padding: EdgeInsets.all(14.0),
                      child: PinCodeTextField(
                        autoDisposeControllers: false,
                        appContext: context,
                        length: 6,
                        textStyle:
                            FlutterFlowTheme.of(context).bodyLarge.override(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.black,
                                  letterSpacing: 0.0,
                                ),
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        enableActiveFill: false,
                        autoFocus: true,
                        focusNode: _model.pinCodeFocusNode,
                        enablePinAutofill: false,
                        errorTextSpace: 16.0,
                        showCursor: true,
                        cursorColor: Colors.black,
                        obscureText: false,
                        hintCharacter: '?',
                        keyboardType: TextInputType.number,
                        pinTheme: PinTheme(
                          fieldHeight: 44.0,
                          fieldWidth: 44.0,
                          borderWidth: 2.0,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(4.0),
                            bottomRight: Radius.circular(4.0),
                            topLeft: Radius.circular(4.0),
                            topRight: Radius.circular(4.0),
                          ),
                          shape: PinCodeFieldShape.circle,
                          activeColor: Colors.black,
                          inactiveColor: Colors.black,
                          selectedColor: Colors.black,
                        ),
                        controller: _model.pinCodeController,
                        onChanged: (_) {},
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: _model.pinCodeControllerValidator
                            .asValidator(context),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(4.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            context.safePop();
                          },
                          text: FFLocalizations.of(context).getText(
                            '94o2rwrm' /* Edit */,
                          ),
                          options: FFButtonOptions(
                            width: 105.0,
                            height: 42.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
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
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(12.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            GoRouter.of(context).prepareAuthEvent();
                            final smsCodeVal = _model.pinCodeController!.text;
                            if (smsCodeVal.isEmpty) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text('Enter SMS verification code.'),
                                ),
                              );
                              return;
                            }
                            final phoneVerifiedUser =
                                await authManager.verifySmsCode(
                              context: context,
                              smsCode: smsCodeVal,
                            );
                            if (phoneVerifiedUser == null) {
                              return;
                            }

                            context.goNamedAuth(
                                A1IntroWidget.routeName, context.mounted);
                          },
                          text: FFLocalizations.of(context).getText(
                            'p0h818jz' /* Confirm */,
                          ),
                          options: FFButtonOptions(
                            height: 40.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: Colors.white,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.black,
                                  letterSpacing: 0.0,
                                ),
                            elevation: 2.0,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ].divide(SizedBox(height: 50.0)).around(SizedBox(height: 50.0)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
