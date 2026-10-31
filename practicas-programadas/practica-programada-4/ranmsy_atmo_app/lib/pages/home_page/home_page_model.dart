import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/ff_builtin_enums.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  Local state fields for this page.

  String? searchQuery = 'Costa Rica';

  String? cityName = 'San José';

  String? countryName = 'Costa Rica';

  double? currentTemp = 24.0;

  double? feelsLikeTemp = 25.0;

  String? weatherDescription = 'Parcialmente soleado';

  int? humidityVal = 78;

  double? windSpeedVal = 9.0;

  int? sunriseVal = 1793445991;

  bool? isLoading = false;

  WeatherDataStruct? weather;
  void updateWeatherStruct(Function(WeatherDataStruct) updateFn) {
    updateFn(weather ??= WeatherDataStruct());
  }

  double? lisboaTemp = 18.0;

  double? tokioTemp = 12.0;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (GetWeather)] action in HomePage widget.
  ApiCallResponse? initialWeatherResult;
  // Stores action output result for [Backend Call - API (GetWeather)] action in HomePage widget.
  ApiCallResponse? initialLisboaResult;
  // Stores action output result for [Backend Call - API (GetWeather)] action in HomePage widget.
  ApiCallResponse? initialTokioResult;
  // State field(s) for SearchCountryField widget.
  FocusNode? searchCountryFieldFocusNode;
  TextEditingController? searchCountryFieldTextController;
  String? Function(BuildContext, String?)?
      searchCountryFieldTextControllerValidator;
  // Stores action output result for [Backend Call - API (GetWeather)] action in SearchCountryField widget.
  ApiCallResponse? searchedWeatherResult;
  // Stores action output result for [Backend Call - API (GetWeather)] action in SearchSubmitBtn widget.
  ApiCallResponse? searchTapWeatherResult;
  // Stores action output result for [Backend Call - API (GetWeather)] action in Container widget.
  ApiCallResponse? lisboaWeatherResult;
  // Stores action output result for [Backend Call - API (GetWeather)] action in Container widget.
  ApiCallResponse? tokioWeatherResult;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    searchCountryFieldFocusNode?.dispose();
    searchCountryFieldTextController?.dispose();
  }
}
