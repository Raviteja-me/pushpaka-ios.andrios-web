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
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';
import 'package:just_audio/just_audio.dart';
import 'package:speech_to_text/speech_to_text.dart';

Future<void> startRealTimeChat(
  String apiKey,
  String languageCode,
) async {
  final SpeechToText speech = SpeechToText();
  bool isInitialized = await speech.initialize(onError: (error) {
    speech.stop();
    print('Error!: $error');
  });

  if (isInitialized && speech.isNotListening) {
    print('Starting speech recognition');

    var systemLocale = await speech.systemLocale();
    String localeId = languageCode.isNotEmpty
        ? languageCode
        : systemLocale?.localeId ?? 'en-US';

    speech.listen(
      onResult: (result) async {
        String recognizedText = result.recognizedWords;
        if (recognizedText.isNotEmpty) {
          await fetchAndPlayResponse(apiKey, recognizedText, localeId);
        }
      },
      localeId: localeId,
      listenMode: ListenMode.dictation,
    );
  }
}

Future<void> fetchAndPlayResponse(
  String apiKey,
  String promptText,
  String languageCode,
) async {
  Map<String, String> headers = {
    'Authorization': 'Bearer $apiKey',
    'Content-Type': 'application/json',
  };

  String body = json.encode({
    'model': 'gpt-4',
    'input': promptText,
    'voice': 'alloy',
    'response_format': 'mp3',
    'language': languageCode,
  });

  final response = await http.post(
    Uri.parse('https://api.openai.com/v1/audio/speech'),
    headers: headers,
    body: body,
  );

  if (response.statusCode == 200) {
    Uint8List audioBytes = response.bodyBytes;

    final player = AudioPlayer();
    await player.setAudioSource(
        AudioSource.uri(Uri.dataFromBytes(audioBytes, mimeType: 'audio/mpeg')));
    player.play();
  } else {
    throw Exception(
        'Failed to generate speech. Status code: ${response.statusCode}');
  }
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
