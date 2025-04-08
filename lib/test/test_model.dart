import '/backend/custom_cloud_functions/custom_cloud_function_response_manager.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'test_widget.dart' show TestWidget;
import 'package:flutter/material.dart';

class TestModel extends FlutterFlowModel<TestWidget> {
  ///  Local state fields for this page.

  List<String> distance = [];
  void addToDistance(String item) => distance.add(item);
  void removeFromDistance(String item) => distance.remove(item);
  void removeAtIndexFromDistance(int index) => distance.removeAt(index);
  void insertAtIndexInDistance(int index, String item) =>
      distance.insert(index, item);
  void updateDistanceAtIndex(int index, Function(String) updateFn) =>
      distance[index] = updateFn(distance[index]);

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // Stores action output result for [Cloud Function - distanceDurationPrice] action in Button widget.
  DistanceDurationPriceCloudFunctionCallResponse? cloudFunctionzlh6767;
  // Stores action output result for [Cloud Function - newapiReal] action in Button widget.
  NewapiRealCloudFunctionCallResponse? cloudFunction8pq;
  // Stores action output result for [Cloud Function - addition] action in Button widget.
  AdditionCloudFunctionCallResponse? cloudFunctionz7pyy;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();
  }
}
