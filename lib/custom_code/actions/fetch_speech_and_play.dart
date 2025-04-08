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

import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';
import 'package:http/http.dart' as http;
import 'package:just_audio/just_audio.dart'; // For audio playback

Future<int> fetchSpeechAndPlay(String promptText, String? apiKey) async {
  if (apiKey == null || apiKey.isEmpty) {
    throw Exception('API key is required.');
  }

  Map<String, String> headers = {
    'Authorization': 'Bearer $apiKey',
    'Content-Type': 'application/json',
  };

  String body = json.encode({
    'model': 'tts-1',
    'input': promptText,
    'voice': 'nova',
    'speed': 1,
  });

  final response = await http.post(
    Uri.parse('https://api.openai.com/v1/audio/speech'),
    headers: headers,
    body: body,
  );

  if (response.statusCode == 200) {
    Uint8List audioBytes = response.bodyBytes;

    // Play the audio directly from bytes
    final player = AudioPlayer();
    await player.setAudioSource(
        AudioSource.uri(Uri.dataFromBytes(audioBytes, mimeType: 'audio/mpeg')));
    player.play();

    return (player.duration?.inMilliseconds ?? 0);
  } else {
    throw Exception(
        'Failed to generate speech. Status code: ${response.statusCode}');
  }
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
