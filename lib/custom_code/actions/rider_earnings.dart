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

Future<List<String>> riderEarnings(String riderID) async {
  try {
    // Query the allRides collection where riderID matches
    final ridesQuery = await FirebaseFirestore.instance
        .collection('allRides')
        .where('riderID', isEqualTo: riderID)
        .get();

    final allRides = ridesQuery.docs;

    // Initialize counters
    int totalRides = allRides.length;
    int successfulRides = 0;
    int failedRides = 0;
    double totalEarnings = 0.0;
    double totalExtras = 0.0;
    double totalFines = 0.0;

    // Process each ride document
    for (var ride in allRides) {
      final rideData = ride.data();

      // Count rides based on status
      if (rideData['status'] == 'success') {
        successfulRides++;
      } else if (rideData['status'] == 'failed') {
        failedRides++;
      }

      // Calculate total earnings, extras, and fines
      totalEarnings += (rideData['price'] ?? 0) +
          (rideData['extraTip'] ?? 0) -
          (rideData['fine'] ?? 0);
      totalExtras += (rideData['extraTip'] ?? 0);
      totalFines += (rideData['fine'] ?? 0);
    }

    // Convert results to strings and return
    return [
      totalRides.toString(),
      successfulRides.toString(),
      failedRides.toString(),
      totalEarnings.toStringAsFixed(2),
      totalExtras.toStringAsFixed(2),
      totalFines.toStringAsFixed(2),
    ];
  } catch (e) {
    // Handle errors
    print('Error fetching rider earnings: $e');
    return [
      '0', // totalRides
      '0', // successfulRides
      '0', // failedRides
      '0.00', // totalEarnings
      '0.00', // totalExtras
      '0.00', // totalFines
    ];
  }
}
