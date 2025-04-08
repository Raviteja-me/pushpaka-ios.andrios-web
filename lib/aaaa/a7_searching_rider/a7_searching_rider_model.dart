import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'a7_searching_rider_widget.dart' show A7SearchingRiderWidget;
import 'package:flutter/material.dart';

class A7SearchingRiderModel extends FlutterFlowModel<A7SearchingRiderWidget> {
  ///  Local state fields for this page.

  double? extra;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Create Document] action in a7SearchingRider widget.
  AllRidesRecord? waitingforRider;
  // Stores action output result for [Firestore Query - Query a collection] action in a7SearchingRider widget.
  List<UsersRecord>? eligiblwFor2kmList;
  // Stores action output result for [Custom Action - getNearbyRidersAssending] action in a7SearchingRider widget.
  List<UsersRecord>? km2Riders;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
