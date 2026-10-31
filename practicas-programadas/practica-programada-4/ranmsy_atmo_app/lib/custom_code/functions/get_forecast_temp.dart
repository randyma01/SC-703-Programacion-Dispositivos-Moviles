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

/// Calculates dynamic forecast temperature.
String? getForecastTemp(
  WeatherDataStruct? weather,
  int? offsetHours,
) {
  if (weather == null) return '24°';
  final base = weather.main.temp;
  final hour = (DateTime.now().hour + (offsetHours ?? 2)) % 24;
  double delta = 0.0;
  if (hour >= 11 && hour <= 14)
    delta = 1.0;
  else if (hour >= 15 && hour <= 17)
    delta = -0.5;
  else if (hour >= 18 && hour <= 21)
    delta = -2.0;
  else
    delta = -3.5;
  return '${(base + delta).round()}°';
}
