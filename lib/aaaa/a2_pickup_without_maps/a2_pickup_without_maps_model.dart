import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'a2_pickup_without_maps_widget.dart' show A2PickupWithoutMapsWidget;
import 'package:flutter/material.dart';

class A2PickupWithoutMapsModel
    extends FlutterFlowModel<A2PickupWithoutMapsWidget> {
  ///  Local state fields for this page.

  String? vehicle = '';

  String? pickupString;

  LatLng? pickupLatlng;

  int availableBikeRidersIn2Km = 0;

  int availableCarRidersIn2Km = 0;

  bool showpichup = true;

  String? language;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (revereseGeoCoding)] action in a2PickupWithoutMaps widget.
  ApiCallResponse? apiResultfc6;
  // Stores action output result for [Backend Call - API (revereseGeoCoding)] action in Container widget.
  ApiCallResponse? apiResultfc622;
  // State field(s) for Switch widget.
  bool? switchValue1;
  // State field(s) for Switch widget.
  bool? switchValue2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
