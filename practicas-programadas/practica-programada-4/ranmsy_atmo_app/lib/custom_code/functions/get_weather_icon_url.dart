import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import '/flutter_flow/custom_functions.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/ff_builtin_enums.dart';

/// Returns official OpenWeather image URL for current weather condition.
String? getWeatherIconUrl(WeatherDataStruct? weather) {
  if (weather == null || weather.weather.isEmpty) {
    return 'https://openweathermap.org/img/wn/01d@2x.png';
  }
  final icon = weather.weather.first.icon;
  if (icon.isEmpty) return 'https://openweathermap.org/img/wn/01d@2x.png';
  return 'https://openweathermap.org/img/wn/${icon}@2x.png';
}
