// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// DSL struct WeatherCondition
class WeatherConditionStruct extends BaseStruct {
  WeatherConditionStruct({
    /// WeatherCondition.id
    int? id,

    /// WeatherCondition.main
    String? main,

    /// WeatherCondition.description
    String? description,

    /// WeatherCondition.icon
    String? icon,
  })  : _id = id,
        _main = main,
        _description = description,
        _icon = icon;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "main" field.
  String? _main;
  String get main => _main ?? '';
  set main(String? val) => _main = val;

  bool hasMain() => _main != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "icon" field.
  String? _icon;
  String get icon => _icon ?? '';
  set icon(String? val) => _icon = val;

  bool hasIcon() => _icon != null;

  static WeatherConditionStruct fromMap(Map<String, dynamic> data) =>
      WeatherConditionStruct(
        id: castToType<int>(data['id']),
        main: data['main'] as String?,
        description: data['description'] as String?,
        icon: data['icon'] as String?,
      );

  static WeatherConditionStruct? maybeFromMap(dynamic data) => data is Map
      ? WeatherConditionStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'main': _main,
        'description': _description,
        'icon': _icon,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'main': serializeParam(
          _main,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'icon': serializeParam(
          _icon,
          ParamType.String,
        ),
      }.withoutNulls;

  static WeatherConditionStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      WeatherConditionStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        main: deserializeParam(
          data['main'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        icon: deserializeParam(
          data['icon'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'WeatherConditionStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is WeatherConditionStruct &&
        id == other.id &&
        main == other.main &&
        description == other.description &&
        icon == other.icon;
  }

  @override
  int get hashCode => const ListEquality().hash([id, main, description, icon]);
}

WeatherConditionStruct createWeatherConditionStruct({
  int? id,
  String? main,
  String? description,
  String? icon,
}) =>
    WeatherConditionStruct(
      id: id,
      main: main,
      description: description,
      icon: icon,
    );
