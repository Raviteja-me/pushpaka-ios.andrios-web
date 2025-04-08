import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'a0_login_page_widget.dart' show A0LoginPageWidget;
import 'package:flutter/material.dart';

class A0LoginPageModel extends FlutterFlowModel<A0LoginPageWidget> {
  ///  Local state fields for this page.

  bool audio = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
