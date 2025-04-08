import '/backend/api_requests/api_calls.dart';
import '/backend/custom_cloud_functions/custom_cloud_function_response_manager.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'a5_drop_with_maps_widget.dart' show A5DropWithMapsWidget;
import 'package:flutter/material.dart';

class A5DropWithMapsModel extends FlutterFlowModel<A5DropWithMapsWidget> {
  ///  Local state fields for this page.

  LatLng? dropLtlng;

  String? placeId;

  List<String> dropList = [];
  void addToDropList(String item) => dropList.add(item);
  void removeFromDropList(String item) => dropList.remove(item);
  void removeAtIndexFromDropList(int index) => dropList.removeAt(index);
  void insertAtIndexInDropList(int index, String item) =>
      dropList.insert(index, item);
  void updateDropListAtIndex(int index, Function(String) updateFn) =>
      dropList[index] = updateFn(dropList[index]);

  List<String> idList = [];
  void addToIdList(String item) => idList.add(item);
  void removeFromIdList(String item) => idList.remove(item);
  void removeAtIndexFromIdList(int index) => idList.removeAt(index);
  void insertAtIndexInIdList(int index, String item) =>
      idList.insert(index, item);
  void updateIdListAtIndex(int index, Function(String) updateFn) =>
      idList[index] = updateFn(idList[index]);

  int? price;

  String? durationTime;

  String? idstnceKm;

  String? dropString;

  ///  State fields for stateful widgets in this page.

  // State field(s) for GoogleMap widget.
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();
  // State field(s) for TextField widget.
  final textFieldKey = GlobalKey();
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? textFieldSelectedOption;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (placesApi)] action in TextField widget.
  ApiCallResponse? apiResultda555;
  // Stores action output result for [Backend Call - API (latlngReferenceApiCall)] action in TextField widget.
  ApiCallResponse? apiResultk2q;
  // Stores action output result for [Backend Call - API (revereseGeoCoding)] action in Button widget.
  ApiCallResponse? apiResultfc67878;
  // Stores action output result for [Backend Call - API (getDistanceMatricApiCall)] action in Button widget.
  ApiCallResponse? getDistanceAndTime;
  // State field(s) for GoogleMapweb widget.
  LatLng? googleMapwebsCenter;
  final googleMapwebsController = Completer<GoogleMapController>();
  // Stores action output result for [Cloud Function - distanceDurationPrice] action in Button widget.
  DistanceDurationPriceCloudFunctionCallResponse? cloudFunctionfzx;
  // State field(s) for PlacePicker widget.
  FFPlace placePickerValue = FFPlace();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
  }
}
