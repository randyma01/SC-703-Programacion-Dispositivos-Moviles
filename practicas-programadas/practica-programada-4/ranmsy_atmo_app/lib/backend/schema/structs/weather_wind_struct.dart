// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// DSL struct WeatherWind
class WeatherWindStruct extends BaseStruct {
  WeatherWindStruct({
    /// WeatherWind.speed
    double? speed,

    /// WeatherWind.deg
    int? deg,
  })  : _speed = speed,
        _deg = deg;

  // "speed" field.
  double? _speed;
  double get speed => _speed ?? 0.0;
  set speed(double? val) => _speed = val;

  void incrementSpeed(double amount) => speed = speed + amount;

  bool hasSpeed() => _speed != null;

  // "deg" field.
  int? _deg;
  int get deg => _deg ?? 0;
  set deg(int? val) => _deg = val;

  void incrementDeg(int amount) => deg = deg + amount;

  bool hasDeg() => _deg != null;

  static WeatherWindStruct fromMap(Map<String, dynamic> data) =>
      WeatherWindStruct(
        speed: castToType<double>(data['speed']),
        deg: castToType<int>(data['deg']),
      );

  static WeatherWindStruct? maybeFromMap(dynamic data) => data is Map
      ? WeatherWindStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'speed': _speed,
        'deg': _deg,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'speed': serializeParam(
          _speed,
          ParamType.double,
        ),
        'deg': serializeParam(
          _deg,
          ParamType.int,
        ),
      }.withoutNulls;

  static WeatherWindStruct fromSerializableMap(Map<String, dynamic> data) =>
      WeatherWindStruct(
        speed: deserializeParam(
          data['speed'],
          ParamType.double,
          false,
        ),
        deg: deserializeParam(
          data['deg'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'WeatherWindStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is WeatherWindStruct &&
        speed == other.speed &&
        deg == other.deg;
  }

  @override
  int get hashCode => const ListEquality().hash([speed, deg]);
}

WeatherWindStruct createWeatherWindStruct({
  double? speed,
  int? deg,
}) =>
    WeatherWindStruct(
      speed: speed,
      deg: deg,
    );
