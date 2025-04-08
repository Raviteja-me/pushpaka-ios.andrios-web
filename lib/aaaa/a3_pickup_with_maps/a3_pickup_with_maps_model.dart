import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'a3_pickup_with_maps_widget.dart' show A3PickupWithMapsWidget;
import 'package:flutter/material.dart';

class A3PickupWithMapsModel extends FlutterFlowModel<A3PickupWithMapsWidget> {
  ///  Local state fields for this page.

  List<String> placesSugg = [];
  void addToPlacesSugg(String item) => placesSugg.add(item);
  void removeFromPlacesSugg(String item) => placesSugg.remove(item);
  void removeAtIndexFromPlacesSugg(int index) => placesSugg.removeAt(index);
  void insertAtIndexInPlacesSugg(int index, String item) =>
      placesSugg.insert(index, item);
  void updatePlacesSuggAtIndex(int index, Function(String) updateFn) =>
      placesSugg[index] = updateFn(placesSugg[index]);

  List<String> placesIds = [];
  void addToPlacesIds(String item) => placesIds.add(item);
  void removeFromPlacesIds(String item) => placesIds.remove(item);
  void removeAtIndexFromPlacesIds(int index) => placesIds.removeAt(index);
  void insertAtIndexInPlacesIds(int index, String item) =>
      placesIds.insert(index, item);
  void updatePlacesIdsAtIndex(int index, Function(String) updateFn) =>
      placesIds[index] = updateFn(placesIds[index]);

  String? id;

  String? vehicle;

  String? pickupString;

  LatLng? pickupLatlng;

  bool showVehicles = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for GoogleMap11 widget.
  LatLng? googleMap11sCenter;
  final googleMap11sController = Completer<GoogleMapController>();
  // State field(s) for TextField widget.
  final textFieldKey = GlobalKey();
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? textFieldSelectedOption;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (placesApi)] action in TextField widget.
  ApiCallResponse? apiResult845;
  // Stores action output result for [Backend Call - API (latlngReferenceApiCall)] action in TextField widget.
  ApiCallResponse? latlngFromId;
  // Stores action output result for [Backend Call - API (revereseGeoCoding)] action in Container widget.
  ApiCallResponse? apiResultyq01111;
  // State field(s) for GoogleMapweb widget.
  LatLng? googleMapwebsCenter;
  final googleMapwebsController = Completer<GoogleMapController>();
  // State field(s) for PlacePicker widget.
  FFPlace placePickerValue = FFPlace();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
  }
}
