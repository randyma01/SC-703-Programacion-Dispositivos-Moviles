import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/ff_builtin_enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'login_page_widget.dart' show LoginPageWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginPageModel extends FlutterFlowModel<LoginPageWidget> {
  ///  Local state fields for this page.

  bool? isSignUp = false;

  String? email = '';

  String? password = '';

  String? confirmPassword = '';

  String? name = '';

  ///  State fields for stateful widgets in this page.

  // State field(s) for LoginEmailField widget.
  FocusNode? loginEmailFieldFocusNode;
  TextEditingController? loginEmailFieldTextController;
  String? Function(BuildContext, String?)?
      loginEmailFieldTextControllerValidator;
  // State field(s) for LoginPasswordField widget.
  FocusNode? loginPasswordFieldFocusNode;
  TextEditingController? loginPasswordFieldTextController;
  late bool loginPasswordFieldVisibility;
  String? Function(BuildContext, String?)?
      loginPasswordFieldTextControllerValidator;
  // State field(s) for RegisterNameField widget.
  FocusNode? registerNameFieldFocusNode;
  TextEditingController? registerNameFieldTextController;
  String? Function(BuildContext, String?)?
      registerNameFieldTextControllerValidator;
  // State field(s) for RegisterEmailField widget.
  FocusNode? registerEmailFieldFocusNode;
  TextEditingController? registerEmailFieldTextController;
  String? Function(BuildContext, String?)?
      registerEmailFieldTextControllerValidator;
  // State field(s) for RegisterPasswordField widget.
  FocusNode? registerPasswordFieldFocusNode;
  TextEditingController? registerPasswordFieldTextController;
  late bool registerPasswordFieldVisibility;
  String? Function(BuildContext, String?)?
      registerPasswordFieldTextControllerValidator;
  // State field(s) for RegisterConfirmPasswordField widget.
  FocusNode? registerConfirmPasswordFieldFocusNode;
  TextEditingController? registerConfirmPasswordFieldTextController;
  late bool registerConfirmPasswordFieldVisibility;
  String? Function(BuildContext, String?)?
      registerConfirmPasswordFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {
    loginPasswordFieldVisibility = false;
    registerPasswordFieldVisibility = false;
    registerConfirmPasswordFieldVisibility = false;
  }

  @override
  void dispose() {
    loginEmailFieldFocusNode?.dispose();
    loginEmailFieldTextController?.dispose();

    loginPasswordFieldFocusNode?.dispose();
    loginPasswordFieldTextController?.dispose();

    registerNameFieldFocusNode?.dispose();
    registerNameFieldTextController?.dispose();

    registerEmailFieldFocusNode?.dispose();
    registerEmailFieldTextController?.dispose();

    registerPasswordFieldFocusNode?.dispose();
    registerPasswordFieldTextController?.dispose();

    registerConfirmPasswordFieldFocusNode?.dispose();
    registerConfirmPasswordFieldTextController?.dispose();
  }
}
