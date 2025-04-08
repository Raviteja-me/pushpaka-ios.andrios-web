import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'a0_otp_page_widget.dart' show A0OtpPageWidget;
import 'package:flutter/material.dart';

class A0OtpPageModel extends FlutterFlowModel<A0OtpPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  FocusNode? pinCodeFocusNode;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;

  @override
  void initState(BuildContext context) {
    pinCodeController = TextEditingController();
  }

  @override
  void dispose() {
    pinCodeFocusNode?.dispose();
    pinCodeController?.dispose();
  }
}
