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

/// Returns dynamic air quality descriptor based on weather metrics.
String? getAirQualityDesc(WeatherDataStruct? weather) {
  if (weather == null) return 'Aire excelente';
  final humidity = weather.main.humidity;
  final wind = weather.wind.speed;
  if (humidity < 55 && wind > 2) return 'Aire excelente';
  if (humidity < 75) return 'Calidad buena';
  if (humidity < 85) return 'Calidad moderada';
  return 'Aire húmedo';
}
