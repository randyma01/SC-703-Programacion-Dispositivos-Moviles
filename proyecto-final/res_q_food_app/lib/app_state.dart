import 'package:flutter/material.dart'
    show ChangeNotifier, Color, Colors, VoidCallback;
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
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

  /// App state activeCategory
  String _activeCategory = 'Todos';
  String get activeCategory => _activeCategory;
  set activeCategory(String value) {
    _activeCategory = value;
  }

  /// App state searchQuery
  String _searchQuery = '';
  String get searchQuery => _searchQuery;
  set searchQuery(String value) {
    _searchQuery = value;
  }

  /// App state userRole
  String _userRole = 'consumidor';
  String get userRole => _userRole;
  set userRole(String value) {
    _userRole = value;
  }

  /// App state isLoggedIn
  bool _isLoggedIn = true;
  bool get isLoggedIn => _isLoggedIn;
  set isLoggedIn(bool value) {
    _isLoggedIn = value;
  }

  /// App state currentUserName
  String _currentUserName = 'Randy Martínez';
  String get currentUserName => _currentUserName;
  set currentUserName(String value) {
    _currentUserName = value;
  }

  /// App state currentUserEmail
  String _currentUserEmail = 'rmartinez70570@ufide.ac.cr';
  String get currentUserEmail => _currentUserEmail;
  set currentUserEmail(String value) {
    _currentUserEmail = value;
  }

  /// App state currentUserInitials
  String _currentUserInitials = 'RA';
  String get currentUserInitials => _currentUserInitials;
  set currentUserInitials(String value) {
    _currentUserInitials = value;
  }

  /// App state currentCommerceId
  String _currentCommerceId = 'c1';
  String get currentCommerceId => _currentCommerceId;
  set currentCommerceId(String value) {
    _currentCommerceId = value;
  }
}
