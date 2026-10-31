// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// DSL struct WeatherMain
class WeatherMainStruct extends BaseStruct {
  WeatherMainStruct({
    /// WeatherMain.temp
    double? temp,

    /// WeatherMain.feels_like
    double? feelsLike,

    /// WeatherMain.temp_min
    double? tempMin,

    /// WeatherMain.temp_max
    double? tempMax,

    /// WeatherMain.pressure
    int? pressure,

    /// WeatherMain.humidity
    int? humidity,
  })  : _temp = temp,
        _feelsLike = feelsLike,
        _tempMin = tempMin,
        _tempMax = tempMax,
        _pressure = pressure,
        _humidity = humidity;

  // "temp" field.
  double? _temp;
  double get temp => _temp ?? 0.0;
  set temp(double? val) => _temp = val;

  void incrementTemp(double amount) => temp = temp + amount;

  bool hasTemp() => _temp != null;

  // "feels_like" field.
  double? _feelsLike;
  double get feelsLike => _feelsLike ?? 0.0;
  set feelsLike(double? val) => _feelsLike = val;

  void incrementFeelsLike(double amount) => feelsLike = feelsLike + amount;

  bool hasFeelsLike() => _feelsLike != null;

  // "temp_min" field.
  double? _tempMin;
  double get tempMin => _tempMin ?? 0.0;
  set tempMin(double? val) => _tempMin = val;

  void incrementTempMin(double amount) => tempMin = tempMin + amount;

  bool hasTempMin() => _tempMin != null;

  // "temp_max" field.
  double? _tempMax;
  double get tempMax => _tempMax ?? 0.0;
  set tempMax(double? val) => _tempMax = val;

  void incrementTempMax(double amount) => tempMax = tempMax + amount;

  bool hasTempMax() => _tempMax != null;

  // "pressure" field.
  int? _pressure;
  int get pressure => _pressure ?? 0;
  set pressure(int? val) => _pressure = val;

  void incrementPressure(int amount) => pressure = pressure + amount;

  bool hasPressure() => _pressure != null;

  // "humidity" field.
  int? _humidity;
  int get humidity => _humidity ?? 0;
  set humidity(int? val) => _humidity = val;

  void incrementHumidity(int amount) => humidity = humidity + amount;

  bool hasHumidity() => _humidity != null;

  static WeatherMainStruct fromMap(Map<String, dynamic> data) =>
      WeatherMainStruct(
        temp: castToType<double>(data['temp']),
        feelsLike: castToType<double>(data['feels_like']),
        tempMin: castToType<double>(data['temp_min']),
        tempMax: castToType<double>(data['temp_max']),
        pressure: castToType<int>(data['pressure']),
        humidity: castToType<int>(data['humidity']),
      );

  static WeatherMainStruct? maybeFromMap(dynamic data) => data is Map
      ? WeatherMainStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'temp': _temp,
        'feels_like': _feelsLike,
        'temp_min': _tempMin,
        'temp_max': _tempMax,
        'pressure': _pressure,
        'humidity': _humidity,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'temp': serializeParam(
          _temp,
          ParamType.double,
        ),
        'feels_like': serializeParam(
          _feelsLike,
          ParamType.double,
        ),
        'temp_min': serializeParam(
          _tempMin,
          ParamType.double,
        ),
        'temp_max': serializeParam(
          _tempMax,
          ParamType.double,
        ),
        'pressure': serializeParam(
          _pressure,
          ParamType.int,
        ),
        'humidity': serializeParam(
          _humidity,
          ParamType.int,
        ),
      }.withoutNulls;

  static WeatherMainStruct fromSerializableMap(Map<String, dynamic> data) =>
      WeatherMainStruct(
        temp: deserializeParam(
          data['temp'],
          ParamType.double,
          false,
        ),
        feelsLike: deserializeParam(
          data['feels_like'],
          ParamType.double,
          false,
        ),
        tempMin: deserializeParam(
          data['temp_min'],
          ParamType.double,
          false,
        ),
        tempMax: deserializeParam(
          data['temp_max'],
          ParamType.double,
          false,
        ),
        pressure: deserializeParam(
          data['pressure'],
          ParamType.int,
          false,
        ),
        humidity: deserializeParam(
          data['humidity'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'WeatherMainStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is WeatherMainStruct &&
        temp == other.temp &&
        feelsLike == other.feelsLike &&
        tempMin == other.tempMin &&
        tempMax == other.tempMax &&
        pressure == other.pressure &&
        humidity == other.humidity;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([temp, feelsLike, tempMin, tempMax, pressure, humidity]);
}

WeatherMainStruct createWeatherMainStruct({
  double? temp,
  double? feelsLike,
  double? tempMin,
  double? tempMax,
  int? pressure,
  int? humidity,
}) =>
    WeatherMainStruct(
      temp: temp,
      feelsLike: feelsLike,
      tempMin: tempMin,
      tempMax: tempMax,
      pressure: pressure,
      humidity: humidity,
    );
