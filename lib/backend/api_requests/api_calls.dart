import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GetDistanceMatricApiCallCall {
  static Future<ApiCallResponse> call({
    String? destinations = '',
    String? origins = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getDistanceMatricApiCall',
      apiUrl: 'https://maps.googleapis.com/maps/api/distancematrix/json',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'destinations': destinations,
        'origins': origins,
        'key': "AIzaSyDXlnpVR-Xm5qp8sO6H2TO1_uH8grLTLBU",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? distance(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.rows[:].elements[:].distance.text''',
      ));
  static int? price(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.rows[:].elements[:].distance.value''',
      ));
  static String? duration(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.rows[:].elements[:].duration.text''',
      ));
  static int? minutes(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.rows[:].elements[:].duration.value''',
      ));
}

class PlacesApiCall {
  static Future<ApiCallResponse> call({
    String? input = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'placesApi',
      apiUrl: 'https://maps.googleapis.com/maps/api/place/autocomplete/json',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'key': "AIzaSyA49AfOeyHczMrgWPK87vueUl1tOAarReM",
        'input': input,
        'location': "14.670924, 77.596948",
        'radius': "10000",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? autoCompleateList(dynamic response) => (getJsonField(
        response,
        r'''$.predictions[:].description''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static String? statusAutoCompleateList(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
  static List<String>? placeIdAutoCompleateList(dynamic response) =>
      (getJsonField(
        response,
        r'''$.predictions[:].place_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class LatlngReferenceApiCallCall {
  static Future<ApiCallResponse> call({
    String? placeid = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'latlngReferenceApiCall',
      apiUrl: 'https://maps.googleapis.com/maps/api/place/details/json',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'key': "AIzaSyA49AfOeyHczMrgWPK87vueUl1tOAarReM",
        'placeid': placeid,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic latlng(dynamic response) => getJsonField(
        response,
        r'''$.result.geometry.location''',
      );
  static double? lat(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.result.geometry.location.lat''',
      ));
  static double? lng(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.result.geometry.location.lng''',
      ));
}

class RevereseGeoCodingCall {
  static Future<ApiCallResponse> call({
    String? latlng = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'revereseGeoCoding',
      apiUrl: 'https://maps.googleapis.com/maps/api/geocode/json',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'latlng': latlng,
        'key': "AIzaSyBL0dU3V1mg4uNI9VNXzkPgo7PJumsAs_s",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? adresss(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.plus_code.compound_code''',
      ));
  static List<String>? listAdress(dynamic response) => (getJsonField(
        response,
        r'''$.results[:].formatted_address''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class GetResponceOpenAiCall {
  static Future<ApiCallResponse> call({
    String? prompt = '',
  }) async {
    final ffApiRequestBody = '''
{
  "model": "gpt-3.5-turbo",
  "messages": [
    {
      "role": "system",
      "content": "You are Pushpaka AI, a friendly ride-booking assistant that helps users book rides. Always start with a warm greeting, As of now u are under construction so u will answer anything as of now."
    },
    {
      "role": "user",
      "content": "${prompt}. User has provided their speech-to-text input for pick-up and drop-off information.",
      "language": "en-IN"
    }
  ],
  "max_tokens": 100
}
''';
    return ApiManager.instance.makeApiCall(
      callName: 'getResponceOpenAi',
      apiUrl: 'https://api.openai.com/v1/chat/completions',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer sk-mpePIsFXAJGEdLzDbvdT3nB86lrpzu-ytM6u4WL_N4T3BlbkFJ3IFqGdIuTA1TxSVQ4RIfUSp08XtCVlP2Gf7ykN6B8A',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? responce(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.choices[:].message.content''',
      ));
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
