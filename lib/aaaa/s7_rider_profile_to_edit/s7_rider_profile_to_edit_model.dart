import '/flutter_flow/flutter_flow_util.dart';
import 's7_rider_profile_to_edit_widget.dart' show S7RiderProfileToEditWidget;
import 'package:flutter/material.dart';

class S7RiderProfileToEditModel
    extends FlutterFlowModel<S7RiderProfileToEditWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
