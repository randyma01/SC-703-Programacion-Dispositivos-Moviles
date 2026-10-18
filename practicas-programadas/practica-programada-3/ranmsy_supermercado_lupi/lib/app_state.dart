import 'package:flutter/material.dart'
    show ChangeNotifier, Color, Colors, VoidCallback;
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  /// ID de la categoría seleccionada
  String _selectedCategoryId = 'despensa';
  String get selectedCategoryId => _selectedCategoryId;
  set selectedCategoryId(String value) {
    _selectedCategoryId = value;
  }

  /// Nombre de la categoría seleccionada
  String _selectedCategoryName = 'Área de Despensa';
  String get selectedCategoryName => _selectedCategoryName;
  set selectedCategoryName(String value) {
    _selectedCategoryName = value;
  }
}
