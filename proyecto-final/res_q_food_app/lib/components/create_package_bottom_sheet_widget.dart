import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/ff_builtin_enums.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:cloud_firestore/cloud_firestore.dart' hide Type;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'create_package_bottom_sheet_model.dart';
export 'create_package_bottom_sheet_model.dart';

/// DSL component CreatePackageBottomSheet
class CreatePackageBottomSheetWidget extends StatefulWidget {
  const CreatePackageBottomSheetWidget({super.key});

  @override
  State<CreatePackageBottomSheetWidget> createState() =>
      _CreatePackageBottomSheetWidgetState();
}

class _CreatePackageBottomSheetWidgetState
    extends State<CreatePackageBottomSheetWidget> {
  late CreatePackageBottomSheetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CreatePackageBottomSheetModel());

    _model.pkgTitleInputTextController ??= TextEditingController();
    _model.pkgTitleInputFocusNode ??= FocusNode();

    _model.pkgStockInputTextController ??= TextEditingController();
    _model.pkgStockInputFocusNode ??= FocusNode();

    _model.pkgCategoryInputTextController ??= TextEditingController();
    _model.pkgCategoryInputFocusNode ??= FocusNode();

    _model.pkgOriginalPriceInputTextController ??= TextEditingController();
    _model.pkgOriginalPriceInputFocusNode ??= FocusNode();

    _model.pkgRescuePriceInputTextController ??= TextEditingController();
    _model.pkgRescuePriceInputFocusNode ??= FocusNode();

    _model.pkgPickupStartInputTextController ??= TextEditingController();
    _model.pkgPickupStartInputFocusNode ??= FocusNode();

    _model.pkgPickupEndInputTextController ??= TextEditingController();
    _model.pkgPickupEndInputFocusNode ??= FocusNode();

    _model.pkgAllergensInputTextController ??= TextEditingController();
    _model.pkgAllergensInputFocusNode ??= FocusNode();

    _model.pkgDescInputTextController ??= TextEditingController();
    _model.pkgDescInputFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).surface,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24.0),
          topRight: Radius.circular(24.0),
        ),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(20.0, 16.0, 20.0, 24.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: (FFMainAxisAlignment.start).flutterValue,
            crossAxisAlignment: (FFCrossAxisAlignment.start).flutterValue,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: (FFMainAxisAlignment.center).flutterValue,
                crossAxisAlignment: (FFCrossAxisAlignment.center).flutterValue,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Container(
                    width: 40.0,
                    height: 4.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).border,
                      borderRadius: BorderRadius.circular(2.0),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment:
                    (FFMainAxisAlignment.spaceBetween).flutterValue,
                crossAxisAlignment: (FFCrossAxisAlignment.center).flutterValue,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: (FFMainAxisAlignment.start).flutterValue,
                    crossAxisAlignment:
                        (FFCrossAxisAlignment.start).flutterValue,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        'PUBLICAR EXCEDENTE',
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
                      Text(
                        'Nuevo paquete del día',
                        style: FlutterFlowTheme.of(context)
                            .headlineSmall
                            .override(
                              font: GoogleFonts.inter(
                                fontWeight: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .fontStyle,
                              ),
                              color: FlutterFlowTheme.of(context).primaryText,
                              letterSpacing: 0.0,
                              fontWeight: FlutterFlowTheme.of(context)
                                  .headlineSmall
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .headlineSmall
                                  .fontStyle,
                            ),
                      ),
                    ].divide(SizedBox(height: 2.0)),
                  ),
                  Container(
                    width: 36.0,
                    height: 36.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    child: FlutterFlowIconButton(
                      buttonSize: 40.0,
                      icon: Icon(
                        Icons.close,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 18.0,
                      ),
                      onPressed: () async {
                        context.pop();
                      },
                    ),
                  ),
                ],
              ),
              Form(
                key: _model.formKey,
                autovalidateMode: AutovalidateMode.disabled,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: (FFMainAxisAlignment.start).flutterValue,
                  crossAxisAlignment:
                      (FFCrossAxisAlignment.center).flutterValue,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    TextFormField(
                      controller: _model.pkgTitleInputTextController,
                      focusNode: _model.pkgTitleInputFocusNode,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Nombre del paquete',
                        hintText: 'ej. Selección dulce de la tarde',
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).border,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        filled: true,
                        fillColor: FlutterFlowTheme.of(context).surface,
                        contentPadding: EdgeInsets.all(14.0),
                      ),
                      style: TextStyle(),
                      maxLines: null,
                      validator: _model.pkgTitleInputTextControllerValidator
                          .asValidator(context),
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
                          child: TextFormField(
                            controller: _model.pkgStockInputTextController,
                            focusNode: _model.pkgStockInputFocusNode,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Bolsas disponibles',
                              hintText: 'ej. 5',
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).border,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              filled: true,
                              fillColor: FlutterFlowTheme.of(context).surface,
                              contentPadding: EdgeInsets.all(14.0),
                            ),
                            style: TextStyle(),
                            maxLines: null,
                            keyboardType: (FFKeyboardType.number).flutterValue,
                            validator: _model
                                .pkgStockInputTextControllerValidator
                                .asValidator(context),
                          ),
                        ),
                        Expanded(
                          child: TextFormField(
                            controller: _model.pkgCategoryInputTextController,
                            focusNode: _model.pkgCategoryInputFocusNode,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Categoría',
                              hintText: 'ej. Panadería',
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).border,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              filled: true,
                              fillColor: FlutterFlowTheme.of(context).surface,
                              contentPadding: EdgeInsets.all(14.0),
                            ),
                            style: TextStyle(),
                            maxLines: null,
                            validator: _model
                                .pkgCategoryInputTextControllerValidator
                                .asValidator(context),
                          ),
                        ),
                      ].divide(SizedBox(width: 12.0)),
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
                          child: TextFormField(
                            controller:
                                _model.pkgOriginalPriceInputTextController,
                            focusNode: _model.pkgOriginalPriceInputFocusNode,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Precio regular (₡)',
                              hintText: 'ej. 7000',
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).border,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              filled: true,
                              fillColor: FlutterFlowTheme.of(context).surface,
                              contentPadding: EdgeInsets.all(14.0),
                            ),
                            style: TextStyle(),
                            maxLines: null,
                            keyboardType: (FFKeyboardType.number).flutterValue,
                            validator: _model
                                .pkgOriginalPriceInputTextControllerValidator
                                .asValidator(context),
                          ),
                        ),
                        Expanded(
                          child: TextFormField(
                            controller:
                                _model.pkgRescuePriceInputTextController,
                            focusNode: _model.pkgRescuePriceInputFocusNode,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Precio rescate (₡)',
                              hintText: 'ej. 2800',
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).border,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              filled: true,
                              fillColor: FlutterFlowTheme.of(context).surface,
                              contentPadding: EdgeInsets.all(14.0),
                            ),
                            style: TextStyle(),
                            maxLines: null,
                            keyboardType: (FFKeyboardType.number).flutterValue,
                            validator: _model
                                .pkgRescuePriceInputTextControllerValidator
                                .asValidator(context),
                          ),
                        ),
                      ].divide(SizedBox(width: 12.0)),
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
                          child: TextFormField(
                            controller:
                                _model.pkgPickupStartInputTextController,
                            focusNode: _model.pkgPickupStartInputFocusNode,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Hora inicio retiro',
                              hintText: 'ej. 17:30',
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).border,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              filled: true,
                              fillColor: FlutterFlowTheme.of(context).surface,
                              contentPadding: EdgeInsets.all(14.0),
                            ),
                            style: TextStyle(),
                            maxLines: null,
                            validator: _model
                                .pkgPickupStartInputTextControllerValidator
                                .asValidator(context),
                          ),
                        ),
                        Expanded(
                          child: TextFormField(
                            controller: _model.pkgPickupEndInputTextController,
                            focusNode: _model.pkgPickupEndInputFocusNode,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Hora fin retiro',
                              hintText: 'ej. 19:00',
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).border,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              filled: true,
                              fillColor: FlutterFlowTheme.of(context).surface,
                              contentPadding: EdgeInsets.all(14.0),
                            ),
                            style: TextStyle(),
                            maxLines: null,
                            validator: _model
                                .pkgPickupEndInputTextControllerValidator
                                .asValidator(context),
                          ),
                        ),
                      ].divide(SizedBox(width: 12.0)),
                    ),
                    TextFormField(
                      controller: _model.pkgAllergensInputTextController,
                      focusNode: _model.pkgAllergensInputFocusNode,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Alérgenos',
                        hintText: 'ej. Gluten, Lácteos, Huevo',
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).border,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        filled: true,
                        fillColor: FlutterFlowTheme.of(context).surface,
                        contentPadding: EdgeInsets.all(14.0),
                      ),
                      style: TextStyle(),
                      maxLines: null,
                      validator: _model.pkgAllergensInputTextControllerValidator
                          .asValidator(context),
                    ),
                    TextFormField(
                      controller: _model.pkgDescInputTextController,
                      focusNode: _model.pkgDescInputFocusNode,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Descripción o detalles',
                        hintText:
                            'ej. Panes artesanales y repostería horneada hoy...',
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).border,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        filled: true,
                        fillColor: FlutterFlowTheme.of(context).surface,
                        contentPadding: EdgeInsets.all(14.0),
                      ),
                      style: TextStyle(),
                      maxLines: null,
                      validator: _model.pkgDescInputTextControllerValidator
                          .asValidator(context),
                    ),
                  ].divide(SizedBox(height: 12.0)),
                ),
              ),
              FFButtonWidget(
                onPressed: () async {
                  var packagesRecordReference = PackagesRecord.collection.doc();
                  await packagesRecordReference.set({
                    ...createPackagesRecordData(
                      title: _model.pkgTitleInputTextController.text,
                      description: _model.pkgDescInputTextController.text,
                      availableStock: 3,
                      originalPrice: 6500.0,
                      rescuePrice: 2500.0,
                      discountPercentage: 60,
                      pickupStart:
                          _model.pkgPickupStartInputTextController.text,
                      pickupEnd: _model.pkgPickupEndInputTextController.text,
                      isAvailable: true,
                      imageUrl:
                          'https://images.unsplash.com/photo-1509440159596-0249088772ff?w=600',
                    ),
                    ...mapToFirestore(
                      {
                        'created_at': FieldValue.serverTimestamp(),
                      },
                    ),
                  });
                  _model.document = PackagesRecord.getDocumentFromData({
                    ...createPackagesRecordData(
                      title: _model.pkgTitleInputTextController.text,
                      description: _model.pkgDescInputTextController.text,
                      availableStock: 3,
                      originalPrice: 6500.0,
                      rescuePrice: 2500.0,
                      discountPercentage: 60,
                      pickupStart:
                          _model.pkgPickupStartInputTextController.text,
                      pickupEnd: _model.pkgPickupEndInputTextController.text,
                      isAvailable: true,
                      imageUrl:
                          'https://images.unsplash.com/photo-1509440159596-0249088772ff?w=600',
                    ),
                    ...mapToFirestore(
                      {
                        'created_at': DateTime.now(),
                      },
                    ),
                  }, packagesRecordReference);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        '¡Paquete publicado exitosamente! Visible en el catálogo.',
                        style: TextStyle(),
                      ),
                      duration: Duration(milliseconds: 4000),
                    ),
                  );
                  context.pop();

                  safeSetState(() {});
                },
                text: 'Publicar paquete en catálogo',
                options: FFButtonOptions(
                  width: double.infinity,
                  height: 52.0,
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).primary,
                  textStyle: TextStyle(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  elevation: 1.0,
                  borderRadius: BorderRadius.circular(14.0),
                ),
              ),
            ].divide(SizedBox(height: 16.0)),
          ),
        ),
      ),
    );
  }
}
