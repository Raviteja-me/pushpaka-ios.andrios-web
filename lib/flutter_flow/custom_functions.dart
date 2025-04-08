import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

LatLng doubleToLatlng(
  double lat,
  double lng,
) {
  return LatLng(lat, lng);
}

List<double> latlngToLatLng(LatLng location) {
  return [location.latitude, location.longitude];
}

String jsonToString(dynamic output) {
  try {
    return json.encode(output); // Converts the JSON object to a string
  } catch (e) {
    return 'Error: Failed to convert JSON to string - ${e.toString()}';
  }
}
