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

import 'package:flutter_tts/flutter_tts.dart';

Future<double> textToSpeechInbuiltMobileFunction(String audioString) async {
  // Initialize the text-to-speech instance
  FlutterTts flutterTts = FlutterTts();

  // Set the language and voice options
  await flutterTts.setLanguage('en-IN');
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(1.0);

  // Speak the text
  await flutterTts.speak(audioString);

  // Return the length of the spoken text in seconds (approximation)
  double duration =
      (audioString.length / 5.0); // Rough estimate: 5 chars per second
  return duration;
}
