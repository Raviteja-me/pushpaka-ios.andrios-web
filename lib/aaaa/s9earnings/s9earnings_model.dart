import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 's9earnings_widget.dart' show S9earningsWidget;
import 'package:flutter/material.dart';

class S9earningsModel extends FlutterFlowModel<S9earningsWidget> {
  ///  Local state fields for this page.

  String status = 'waiting';

  List<String> earnings = [];
  void addToEarnings(String item) => earnings.add(item);
  void removeFromEarnings(String item) => earnings.remove(item);
  void removeAtIndexFromEarnings(int index) => earnings.removeAt(index);
  void insertAtIndexInEarnings(int index, String item) =>
      earnings.insert(index, item);
  void updateEarningsAtIndex(int index, Function(String) updateFn) =>
      earnings[index] = updateFn(earnings[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - riderEarnings] action in s9earnings widget.
  List<String>? returnEarnings;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
