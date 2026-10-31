// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// DSL struct WeatherData
class WeatherDataStruct extends BaseStruct {
  WeatherDataStruct({
    /// WeatherData.name
    String? name,

    /// WeatherData.main
    WeatherMainStruct? main,

    /// WeatherData.weather
    List<WeatherConditionStruct>? weather,

    /// WeatherData.wind
    WeatherWindStruct? wind,

    /// WeatherData.sys
    WeatherSysStruct? sys,
  })  : _name = name,
        _main = main,
        _weather = weather,
        _wind = wind,
        _sys = sys;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "main" field.
  WeatherMainStruct? _main;
  WeatherMainStruct get main => _main ?? WeatherMainStruct();
  set main(WeatherMainStruct? val) => _main = val;

  void updateMain(Function(WeatherMainStruct) updateFn) {
    updateFn(_main ??= WeatherMainStruct());
  }

  bool hasMain() => _main != null;

  // "weather" field.
  List<WeatherConditionStruct>? _weather;
  List<WeatherConditionStruct> get weather => _weather ?? const [];
  set weather(List<WeatherConditionStruct>? val) => _weather = val;

  void updateWeather(Function(List<WeatherConditionStruct>) updateFn) {
    updateFn(_weather ??= []);
  }

  bool hasWeather() => _weather != null;

  // "wind" field.
  WeatherWindStruct? _wind;
  WeatherWindStruct get wind => _wind ?? WeatherWindStruct();
  set wind(WeatherWindStruct? val) => _wind = val;

  void updateWind(Function(WeatherWindStruct) updateFn) {
    updateFn(_wind ??= WeatherWindStruct());
  }

  bool hasWind() => _wind != null;

  // "sys" field.
  WeatherSysStruct? _sys;
  WeatherSysStruct get sys => _sys ?? WeatherSysStruct();
  set sys(WeatherSysStruct? val) => _sys = val;

  void updateSys(Function(WeatherSysStruct) updateFn) {
    updateFn(_sys ??= WeatherSysStruct());
  }

  bool hasSys() => _sys != null;

  static WeatherDataStruct fromMap(Map<String, dynamic> data) =>
      WeatherDataStruct(
        name: data['name'] as String?,
        main: data['main'] is WeatherMainStruct
            ? data['main']
            : WeatherMainStruct.maybeFromMap(data['main']),
        weather: getStructList(
          data['weather'],
          WeatherConditionStruct.fromMap,
        ),
        wind: data['wind'] is WeatherWindStruct
            ? data['wind']
            : WeatherWindStruct.maybeFromMap(data['wind']),
        sys: data['sys'] is WeatherSysStruct
            ? data['sys']
            : WeatherSysStruct.maybeFromMap(data['sys']),
      );

  static WeatherDataStruct? maybeFromMap(dynamic data) => data is Map
      ? WeatherDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'main': _main?.toMap(),
        'weather': _weather?.map((e) => e.toMap()).toList(),
        'wind': _wind?.toMap(),
        'sys': _sys?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'main': serializeParam(
          _main,
          ParamType.DataStruct,
        ),
        'weather': serializeParam(
          _weather,
          ParamType.DataStruct,
          isList: true,
        ),
        'wind': serializeParam(
          _wind,
          ParamType.DataStruct,
        ),
        'sys': serializeParam(
          _sys,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static WeatherDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      WeatherDataStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        main: deserializeStructParam(
          data['main'],
          ParamType.DataStruct,
          false,
          structBuilder: WeatherMainStruct.fromSerializableMap,
        ),
        weather: deserializeStructParam<WeatherConditionStruct>(
          data['weather'],
          ParamType.DataStruct,
          true,
          structBuilder: WeatherConditionStruct.fromSerializableMap,
        ),
        wind: deserializeStructParam(
          data['wind'],
          ParamType.DataStruct,
          false,
          structBuilder: WeatherWindStruct.fromSerializableMap,
        ),
        sys: deserializeStructParam(
          data['sys'],
          ParamType.DataStruct,
          false,
          structBuilder: WeatherSysStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'WeatherDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is WeatherDataStruct &&
        name == other.name &&
        main == other.main &&
        listEquality.equals(weather, other.weather) &&
        wind == other.wind &&
        sys == other.sys;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([name, main, const ListEquality().hash(weather), wind, sys]);
}

WeatherDataStruct createWeatherDataStruct({
  String? name,
  WeatherMainStruct? main,
  WeatherWindStruct? wind,
  WeatherSysStruct? sys,
}) =>
    WeatherDataStruct(
      name: name,
      main: main ?? WeatherMainStruct(),
      wind: wind ?? WeatherWindStruct(),
      sys: sys ?? WeatherSysStruct(),
    );
