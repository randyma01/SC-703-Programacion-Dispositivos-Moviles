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

/// Calculates dynamic forecast icon URL.
String? getForecastIconUrl(
  WeatherDataStruct? weather,
  int? offsetHours,
) {
  if (weather == null || weather.weather.isEmpty) {
    return 'https://openweathermap.org/img/wn/01d@2x.png';
  }
  final code = weather.weather.first.icon;
  final hour = (DateTime.now().hour + (offsetHours ?? 2)) % 24;
  final isNight = hour >= 18 || hour < 6;
  final baseCode = code.length >= 2 ? code.substring(0, 2) : '01';
  final suffix = isNight ? 'n' : 'd';
  return 'https://openweathermap.org/img/wn/${baseCode}${suffix}@2x.png';
}
