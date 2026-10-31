import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';
const _kDefaultOpenWeatherKeyEncoded =
    'ODgzZjEyYWEwOTFlY2MyOTZkZTc4YzQwMTU3Yzg4YmM=';

String get _openWeatherApiKey {
  const envKey = String.fromEnvironment('OPENWEATHER_API_KEY');
  if (envKey.isNotEmpty) return envKey;
  return utf8.decode(base64.decode(_kDefaultOpenWeatherKeyEncoded));
}

class GetWeatherCall {
  static Future<ApiCallResponse> call({
    String? country = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'GetWeather',
      apiUrl:
          'https://api.openweathermap.org/data/2.5/weather?q=${country}&units=metric&lang=es&appid=$_openWeatherApiKey',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
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
