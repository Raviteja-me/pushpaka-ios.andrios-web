// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:math'; // Required for mathematical functions

const R = 6371e3; // Radius of Earth in meters

Future<List<UsersRecord>> getNearbyRidersAssending(
  LatLng userLocation,
  List<UsersRecord> usersDocuments,
  double radius,
) async {
  // Add your function code here!
  List<Map<String, dynamic>> ridersWithDistance = [];

  for (var user in usersDocuments) {
    LatLng? riderLocation = user.riderCurrentLocation; // Use nullable type

    // Check if riderLocation is not null
    if (riderLocation == null) {
      continue; // Skip this rider if the location is null
    }

    // Haversine Formula
    final double lat1 = userLocation.latitude * pi / 180;
    final double lat2 = riderLocation.latitude * pi / 180;
    final double deltaLat =
        (riderLocation.latitude - userLocation.latitude) * pi / 180;
    final double deltaLon =
        (riderLocation.longitude - userLocation.longitude) * pi / 180;

    final double a = sin(deltaLat / 2) * sin(deltaLat / 2) +
        cos(lat1) * cos(lat2) * sin(deltaLon / 2) * sin(deltaLon / 2);
    final double c = 2 * atan2(sqrt(a), sqrt(1 - a));

    final double distance = R * c; // Distance in meters
    final double distanceInKm = distance / 1000; // Convert to kilometers

    // Check if the rider is within the specified radius
    if (distanceInKm <= radius) {
      ridersWithDistance.add({
        'rider': user,
        'distance': distanceInKm,
      });
    }
  }

  // Sort riders by distance in ascending order
  ridersWithDistance.sort((a, b) => a['distance'].compareTo(b['distance']));

  // Extract sorted riders from the temporary list
  List<UsersRecord> nearbyRiders =
      ridersWithDistance.map((item) => item['rider'] as UsersRecord).toList();

  return nearbyRiders;
}
