import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/ff_builtin_enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'login_page_model.dart';
export 'login_page_model.dart';

/// Pantalla de autenticación y registro con correo electrónico
class LoginPageWidget extends StatefulWidget {
  const LoginPageWidget({super.key});

  static String routeName = 'LoginPage';
  static String routePath = '/login';

  @override
  State<LoginPageWidget> createState() => _LoginPageWidgetState();
}

class _LoginPageWidgetState extends State<LoginPageWidget> {
  late LoginPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoginPageModel());

    _model.loginEmailFieldTextController ??= TextEditingController();
    _model.loginEmailFieldFocusNode ??= FocusNode();

    _model.loginPasswordFieldTextController ??= TextEditingController();
    _model.loginPasswordFieldFocusNode ??= FocusNode();

    _model.registerNameFieldTextController ??= TextEditingController();
    _model.registerNameFieldFocusNode ??= FocusNode();

    _model.registerEmailFieldTextController ??= TextEditingController();
    _model.registerEmailFieldFocusNode ??= FocusNode();

    _model.registerPasswordFieldTextController ??= TextEditingController();
    _model.registerPasswordFieldFocusNode ??= FocusNode();

    _model.registerConfirmPasswordFieldTextController ??=
        TextEditingController();
    _model.registerConfirmPasswordFieldFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          automaticallyImplyLeading: true,
          title: Text(
            'Supermercado Lupi',
            style: FlutterFlowTheme.of(context).titleLarge.override(
                  font: GoogleFonts.interTight(
                    fontWeight: FontWeight.w600,
                    fontStyle:
                        FlutterFlowTheme.of(context).titleLarge.fontStyle,
                  ),
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w600,
                  fontStyle: FlutterFlowTheme.of(context).titleLarge.fontStyle,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Container(
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryBackground,
            ),
            child: Padding(
              padding: EdgeInsets.all(24.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: (FFMainAxisAlignment.start).flutterValue,
                  crossAxisAlignment:
                      (FFCrossAxisAlignment.stretch).flutterValue,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(16.0),
                        border: Border.all(
                          color: FlutterFlowTheme.of(context).alternate,
                          width: 1.0,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment:
                              (FFMainAxisAlignment.start).flutterValue,
                          crossAxisAlignment:
                              (FFCrossAxisAlignment.center).flutterValue,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).alternate,
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(12.0),
                                child: Icon(
                                  Icons.storefront,
                                  color: FlutterFlowTheme.of(context).primary,
                                  size: 32.0,
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment:
                                    (FFMainAxisAlignment.start).flutterValue,
                                crossAxisAlignment:
                                    (FFCrossAxisAlignment.start).flutterValue,
                                textBaseline: TextBaseline.alphabetic,
                                children: [
                                  Text(
                                    'Supermercado Lupi',
                                    style: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .override(
                                          font: GoogleFonts.interTight(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .titleMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleMedium
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .titleMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                  Text(
                                    'Ingresa tus datos para explorar el catálogo de nuestras 65 tiendas en Costa Rica.',
                                    style: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .override(
                                          font: GoogleFonts.inter(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodySmall
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodySmall
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodySmall
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodySmall
                                                  .fontStyle,
                                        ),
                                  ),
                                ].divide(SizedBox(height: 4.0)),
                              ),
                            ),
                          ].divide(SizedBox(width: 14.0)),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment:
                          (FFMainAxisAlignment.start).flutterValue,
                      crossAxisAlignment:
                          (FFCrossAxisAlignment.center).flutterValue,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Expanded(
                          flex: 1,
                          child: FFButtonWidget(
                            onPressed: () async {
                              _model.isSignUp = false;
                              safeSetState(() {});
                            },
                            text: 'Iniciar Sesión',
                            options: FFButtonOptions(
                              height: 46.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 10.0, 20.0, 10.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).primary,
                              textStyle: TextStyle(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              borderRadius: BorderRadius.circular(14.0),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: FFButtonWidget(
                            onPressed: () async {
                              _model.isSignUp = true;
                              safeSetState(() {});
                            },
                            text: 'Registrarse',
                            options: FFButtonOptions(
                              height: 46.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 10.0, 20.0, 10.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: Colors.transparent,
                              textStyle: TextStyle(
                                color: FlutterFlowTheme.of(context).primary,
                              ),
                              elevation: 0.0,
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).primary,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(14.0),
                            ),
                          ),
                        ),
                      ].divide(SizedBox(width: 12.0)),
                    ),
                    if (!_model.isSignUp!)
                      Container(
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(20.0),
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).alternate,
                            width: 1.5,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment:
                                (FFMainAxisAlignment.start).flutterValue,
                            crossAxisAlignment:
                                (FFCrossAxisAlignment.stretch).flutterValue,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(
                                'Correo Electrónico',
                                style: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      font: GoogleFonts.interTight(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontStyle,
                                    ),
                              ),
                              TextFormField(
                                controller:
                                    _model.loginEmailFieldTextController,
                                focusNode: _model.loginEmailFieldFocusNode,
                                onChanged: (_) => EasyDebounce.debounce(
                                  '_model.loginEmailFieldTextController',
                                  Duration(milliseconds: 2000),
                                  () async {
                                    _model.email = _model
                                        .loginEmailFieldTextController.text;
                                    safeSetState(() {});
                                  },
                                ),
                                obscureText: false,
                                decoration: InputDecoration(
                                  hintText: 'Ej. usuario@correo.com',
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFFD0D5DD),
                                      width: 1.5,
                                    ),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(14.0),
                                      topRight: Radius.circular(14.0),
                                      bottomLeft: Radius.circular(14.0),
                                      bottomRight: Radius.circular(14.0),
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      width: 1.5,
                                    ),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(14.0),
                                      topRight: Radius.circular(14.0),
                                      bottomLeft: Radius.circular(14.0),
                                      bottomRight: Radius.circular(14.0),
                                    ),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.5,
                                    ),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(14.0),
                                      topRight: Radius.circular(14.0),
                                      bottomLeft: Radius.circular(14.0),
                                      bottomRight: Radius.circular(14.0),
                                    ),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.5,
                                    ),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(14.0),
                                      topRight: Radius.circular(14.0),
                                      bottomLeft: Radius.circular(14.0),
                                      bottomRight: Radius.circular(14.0),
                                    ),
                                  ),
                                  filled: true,
                                  fillColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  contentPadding: EdgeInsets.all(16.0),
                                  prefixIcon: Icon(
                                    Icons.email,
                                  ),
                                ),
                                style: TextStyle(),
                                maxLines: null,
                                keyboardType:
                                    (FFKeyboardType.emailAddress).flutterValue,
                                validator: _model
                                    .loginEmailFieldTextControllerValidator
                                    .asValidator(context),
                              ),
                              Text(
                                'Contraseña',
                                style: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      font: GoogleFonts.interTight(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontStyle,
                                    ),
                              ),
                              TextFormField(
                                controller:
                                    _model.loginPasswordFieldTextController,
                                focusNode: _model.loginPasswordFieldFocusNode,
                                onChanged: (_) => EasyDebounce.debounce(
                                  '_model.loginPasswordFieldTextController',
                                  Duration(milliseconds: 2000),
                                  () async {
                                    _model.password = _model
                                        .loginPasswordFieldTextController.text;
                                    safeSetState(() {});
                                  },
                                ),
                                obscureText:
                                    !_model.loginPasswordFieldVisibility,
                                decoration: InputDecoration(
                                  hintText: 'Ej. Ingresa tu contraseña',
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFFD0D5DD),
                                      width: 1.5,
                                    ),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(14.0),
                                      topRight: Radius.circular(14.0),
                                      bottomLeft: Radius.circular(14.0),
                                      bottomRight: Radius.circular(14.0),
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      width: 1.5,
                                    ),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(14.0),
                                      topRight: Radius.circular(14.0),
                                      bottomLeft: Radius.circular(14.0),
                                      bottomRight: Radius.circular(14.0),
                                    ),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.5,
                                    ),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(14.0),
                                      topRight: Radius.circular(14.0),
                                      bottomLeft: Radius.circular(14.0),
                                      bottomRight: Radius.circular(14.0),
                                    ),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.5,
                                    ),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(14.0),
                                      topRight: Radius.circular(14.0),
                                      bottomLeft: Radius.circular(14.0),
                                      bottomRight: Radius.circular(14.0),
                                    ),
                                  ),
                                  filled: true,
                                  fillColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  contentPadding: EdgeInsets.all(16.0),
                                  prefixIcon: Icon(
                                    Icons.lock,
                                  ),
                                  suffixIcon: InkWell(
                                    onTap: () async {
                                      safeSetState(() => _model
                                              .loginPasswordFieldVisibility =
                                          !_model.loginPasswordFieldVisibility);
                                    },
                                    focusNode: FocusNode(skipTraversal: true),
                                    child: Icon(
                                      _model.loginPasswordFieldVisibility
                                          ? Icons.visibility_outlined
                                          : Icons.visibility_off_outlined,
                                      size: 22,
                                    ),
                                  ),
                                ),
                                style: TextStyle(),
                                validator: _model
                                    .loginPasswordFieldTextControllerValidator
                                    .asValidator(context),
                              ),
                              FFButtonWidget(
                                onPressed: () async {
                                  GoRouter.of(context).prepareAuthEvent();

                                  final user =
                                      await authManager.signInWithEmail(
                                    context,
                                    _model.email!,
                                    _model.password!,
                                  );
                                  if (user == null) {
                                    return;
                                  }

                                  context.goNamedAuth(HomePageWidget.routeName,
                                      context.mounted);
                                },
                                text: 'Iniciar Sesión',
                                icon: Icon(
                                  Icons.check_circle,
                                  size: 20.0,
                                ),
                                options: FFButtonOptions(
                                  width: double.infinity,
                                  height: 52.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      24.0, 12.0, 24.0, 12.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 10.0, 0.0),
                                  color: FlutterFlowTheme.of(context).primary,
                                  textStyle: TextStyle(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  borderRadius: BorderRadius.circular(14.0),
                                ),
                              ),
                            ].divide(SizedBox(height: 10.0)),
                          ),
                        ),
                      ),
                    if (_model.isSignUp ?? true)
                      Container(
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(20.0),
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).alternate,
                            width: 1.5,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment:
                                (FFMainAxisAlignment.start).flutterValue,
                            crossAxisAlignment:
                                (FFCrossAxisAlignment.stretch).flutterValue,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(
                                'Nombre Completo',
                                style: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      font: GoogleFonts.interTight(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontStyle,
                                    ),
                              ),
                              TextFormField(
                                controller:
                                    _model.registerNameFieldTextController,
                                focusNode: _model.registerNameFieldFocusNode,
                                onChanged: (_) => EasyDebounce.debounce(
                                  '_model.registerNameFieldTextController',
                                  Duration(milliseconds: 2000),
                                  () async {
                                    _model.name = _model
                                        .registerNameFieldTextController.text;
                                    safeSetState(() {});
                                  },
                                ),
                                obscureText: false,
                                decoration: InputDecoration(
                                  hintText: 'Ej. María Rodríguez',
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFFD0D5DD),
                                      width: 1.5,
                                    ),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(14.0),
                                      topRight: Radius.circular(14.0),
                                      bottomLeft: Radius.circular(14.0),
                                      bottomRight: Radius.circular(14.0),
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      width: 1.5,
                                    ),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(14.0),
                                      topRight: Radius.circular(14.0),
                                      bottomLeft: Radius.circular(14.0),
                                      bottomRight: Radius.circular(14.0),
                                    ),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.5,
                                    ),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(14.0),
                                      topRight: Radius.circular(14.0),
                                      bottomLeft: Radius.circular(14.0),
                                      bottomRight: Radius.circular(14.0),
                                    ),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.5,
                                    ),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(14.0),
                                      topRight: Radius.circular(14.0),
                                      bottomLeft: Radius.circular(14.0),
                                      bottomRight: Radius.circular(14.0),
                                    ),
                                  ),
                                  filled: true,
                                  fillColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  contentPadding: EdgeInsets.all(16.0),
                                  prefixIcon: Icon(
                                    Icons.person,
                                  ),
                                ),
                                style: TextStyle(),
                                maxLines: null,
                                validator: _model
                                    .registerNameFieldTextControllerValidator
                                    .asValidator(context),
                              ),
                              Text(
                                'Correo Electrónico',
                                style: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      font: GoogleFonts.interTight(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontStyle,
                                    ),
                              ),
                              TextFormField(
                                controller:
                                    _model.registerEmailFieldTextController,
                                focusNode: _model.registerEmailFieldFocusNode,
                                onChanged: (_) => EasyDebounce.debounce(
                                  '_model.registerEmailFieldTextController',
                                  Duration(milliseconds: 2000),
                                  () async {
                                    _model.email = _model
                                        .registerEmailFieldTextController.text;
                                    safeSetState(() {});
                                  },
                                ),
                                obscureText: false,
                                decoration: InputDecoration(
                                  hintText: 'Ej. usuario@correo.com',
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFFD0D5DD),
                                      width: 1.5,
                                    ),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(14.0),
                                      topRight: Radius.circular(14.0),
                                      bottomLeft: Radius.circular(14.0),
                                      bottomRight: Radius.circular(14.0),
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      width: 1.5,
                                    ),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(14.0),
                                      topRight: Radius.circular(14.0),
                                      bottomLeft: Radius.circular(14.0),
                                      bottomRight: Radius.circular(14.0),
                                    ),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.5,
                                    ),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(14.0),
                                      topRight: Radius.circular(14.0),
                                      bottomLeft: Radius.circular(14.0),
                                      bottomRight: Radius.circular(14.0),
                                    ),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.5,
                                    ),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(14.0),
                                      topRight: Radius.circular(14.0),
                                      bottomLeft: Radius.circular(14.0),
                                      bottomRight: Radius.circular(14.0),
                                    ),
                                  ),
                                  filled: true,
                                  fillColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  contentPadding: EdgeInsets.all(16.0),
                                  prefixIcon: Icon(
                                    Icons.email,
                                  ),
                                ),
                                style: TextStyle(),
                                maxLines: null,
                                keyboardType:
                                    (FFKeyboardType.emailAddress).flutterValue,
                                validator: _model
                                    .registerEmailFieldTextControllerValidator
                                    .asValidator(context),
                              ),
                              Text(
                                'Contraseña',
                                style: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      font: GoogleFonts.interTight(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontStyle,
                                    ),
                              ),
                              TextFormField(
                                controller:
                                    _model.registerPasswordFieldTextController,
                                focusNode:
                                    _model.registerPasswordFieldFocusNode,
                                onChanged: (_) => EasyDebounce.debounce(
                                  '_model.registerPasswordFieldTextController',
                                  Duration(milliseconds: 2000),
                                  () async {
                                    _model.password = _model
                                        .registerPasswordFieldTextController
                                        .text;
                                    safeSetState(() {});
                                  },
                                ),
                                obscureText:
                                    !_model.registerPasswordFieldVisibility,
                                decoration: InputDecoration(
                                  hintText: 'Ej. Mínimo 6 caracteres',
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFFD0D5DD),
                                      width: 1.5,
                                    ),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(14.0),
                                      topRight: Radius.circular(14.0),
                                      bottomLeft: Radius.circular(14.0),
                                      bottomRight: Radius.circular(14.0),
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      width: 1.5,
                                    ),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(14.0),
                                      topRight: Radius.circular(14.0),
                                      bottomLeft: Radius.circular(14.0),
                                      bottomRight: Radius.circular(14.0),
                                    ),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.5,
                                    ),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(14.0),
                                      topRight: Radius.circular(14.0),
                                      bottomLeft: Radius.circular(14.0),
                                      bottomRight: Radius.circular(14.0),
                                    ),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.5,
                                    ),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(14.0),
                                      topRight: Radius.circular(14.0),
                                      bottomLeft: Radius.circular(14.0),
                                      bottomRight: Radius.circular(14.0),
                                    ),
                                  ),
                                  filled: true,
                                  fillColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  contentPadding: EdgeInsets.all(16.0),
                                  prefixIcon: Icon(
                                    Icons.lock,
                                  ),
                                  suffixIcon: InkWell(
                                    onTap: () async {
                                      safeSetState(() => _model
                                              .registerPasswordFieldVisibility =
                                          !_model
                                              .registerPasswordFieldVisibility);
                                    },
                                    focusNode: FocusNode(skipTraversal: true),
                                    child: Icon(
                                      _model.registerPasswordFieldVisibility
                                          ? Icons.visibility_outlined
                                          : Icons.visibility_off_outlined,
                                      size: 22,
                                    ),
                                  ),
                                ),
                                style: TextStyle(),
                                validator: _model
                                    .registerPasswordFieldTextControllerValidator
                                    .asValidator(context),
                              ),
                              Text(
                                'Confirmar Contraseña',
                                style: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      font: GoogleFonts.interTight(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontStyle,
                                    ),
                              ),
                              TextFormField(
                                controller: _model
                                    .registerConfirmPasswordFieldTextController,
                                focusNode: _model
                                    .registerConfirmPasswordFieldFocusNode,
                                onChanged: (_) => EasyDebounce.debounce(
                                  '_model.registerConfirmPasswordFieldTextController',
                                  Duration(milliseconds: 2000),
                                  () async {
                                    _model.confirmPassword = _model
                                        .registerConfirmPasswordFieldTextController
                                        .text;
                                    safeSetState(() {});
                                  },
                                ),
                                obscureText: !_model
                                    .registerConfirmPasswordFieldVisibility,
                                decoration: InputDecoration(
                                  hintText: 'Ej. Repite tu contraseña',
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFFD0D5DD),
                                      width: 1.5,
                                    ),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(14.0),
                                      topRight: Radius.circular(14.0),
                                      bottomLeft: Radius.circular(14.0),
                                      bottomRight: Radius.circular(14.0),
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      width: 1.5,
                                    ),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(14.0),
                                      topRight: Radius.circular(14.0),
                                      bottomLeft: Radius.circular(14.0),
                                      bottomRight: Radius.circular(14.0),
                                    ),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.5,
                                    ),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(14.0),
                                      topRight: Radius.circular(14.0),
                                      bottomLeft: Radius.circular(14.0),
                                      bottomRight: Radius.circular(14.0),
                                    ),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.5,
                                    ),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(14.0),
                                      topRight: Radius.circular(14.0),
                                      bottomLeft: Radius.circular(14.0),
                                      bottomRight: Radius.circular(14.0),
                                    ),
                                  ),
                                  filled: true,
                                  fillColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  contentPadding: EdgeInsets.all(16.0),
                                  prefixIcon: Icon(
                                    Icons.lock_outline,
                                  ),
                                  suffixIcon: InkWell(
                                    onTap: () async {
                                      safeSetState(() => _model
                                              .registerConfirmPasswordFieldVisibility =
                                          !_model
                                              .registerConfirmPasswordFieldVisibility);
                                    },
                                    focusNode: FocusNode(skipTraversal: true),
                                    child: Icon(
                                      _model.registerConfirmPasswordFieldVisibility
                                          ? Icons.visibility_outlined
                                          : Icons.visibility_off_outlined,
                                      size: 22,
                                    ),
                                  ),
                                ),
                                style: TextStyle(),
                                validator: _model
                                    .registerConfirmPasswordFieldTextControllerValidator
                                    .asValidator(context),
                              ),
                              FFButtonWidget(
                                onPressed: () async {
                                  GoRouter.of(context).prepareAuthEvent();
                                  if (_model.password! !=
                                      _model.confirmPassword!) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Passwords don\'t match!',
                                        ),
                                      ),
                                    );
                                    return;
                                  }

                                  final user =
                                      await authManager.createAccountWithEmail(
                                    context,
                                    _model.email!,
                                    _model.password!,
                                  );
                                  if (user == null) {
                                    return;
                                  }

                                  context.goNamedAuth(HomePageWidget.routeName,
                                      context.mounted);
                                },
                                text: 'Crear Cuenta',
                                icon: Icon(
                                  Icons.check_circle,
                                  size: 20.0,
                                ),
                                options: FFButtonOptions(
                                  width: double.infinity,
                                  height: 52.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      24.0, 12.0, 24.0, 12.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 10.0, 0.0),
                                  color: FlutterFlowTheme.of(context).primary,
                                  textStyle: TextStyle(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  borderRadius: BorderRadius.circular(14.0),
                                ),
                              ),
                            ].divide(SizedBox(height: 10.0)),
                          ),
                        ),
                      ),
                    Text(
                      'Acceso seguro para clientes registrados',
                      style: FlutterFlowTheme.of(context).labelSmall.override(
                            font: GoogleFonts.inter(
                              fontWeight: FlutterFlowTheme.of(context)
                                  .labelSmall
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .labelSmall
                                  .fontStyle,
                            ),
                            color: FlutterFlowTheme.of(context).secondaryText,
                            letterSpacing: 0.0,
                            fontWeight: FlutterFlowTheme.of(context)
                                .labelSmall
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .labelSmall
                                .fontStyle,
                          ),
                    ),
                  ].divide(SizedBox(height: 20.0)),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
