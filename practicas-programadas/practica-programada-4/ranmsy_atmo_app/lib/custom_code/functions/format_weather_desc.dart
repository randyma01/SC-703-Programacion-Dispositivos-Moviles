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

/// Formats weather description with capitalized first letter.
String? formatWeatherDesc(WeatherDataStruct? weather) {
  if (weather == null || weather.weather.isEmpty) return 'Parcialmente soleado';
  final desc = weather.weather.first.description;
  if (desc.isEmpty) return 'Parcialmente soleado';
  return desc[0].toUpperCase() + desc.substring(1);
}
