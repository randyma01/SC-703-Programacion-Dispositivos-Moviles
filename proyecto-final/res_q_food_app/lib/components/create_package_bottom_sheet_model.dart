import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/ff_builtin_enums.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'create_package_bottom_sheet_widget.dart'
    show CreatePackageBottomSheetWidget;
import 'package:cloud_firestore/cloud_firestore.dart' hide Type;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreatePackageBottomSheetModel
    extends FlutterFlowModel<CreatePackageBottomSheetWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for pkgTitleInput widget.
  FocusNode? pkgTitleInputFocusNode;
  TextEditingController? pkgTitleInputTextController;
  String? Function(BuildContext, String?)? pkgTitleInputTextControllerValidator;
  // State field(s) for pkgStockInput widget.
  FocusNode? pkgStockInputFocusNode;
  TextEditingController? pkgStockInputTextController;
  String? Function(BuildContext, String?)? pkgStockInputTextControllerValidator;
  // State field(s) for pkgCategoryInput widget.
  FocusNode? pkgCategoryInputFocusNode;
  TextEditingController? pkgCategoryInputTextController;
  String? Function(BuildContext, String?)?
      pkgCategoryInputTextControllerValidator;
  // State field(s) for pkgOriginalPriceInput widget.
  FocusNode? pkgOriginalPriceInputFocusNode;
  TextEditingController? pkgOriginalPriceInputTextController;
  String? Function(BuildContext, String?)?
      pkgOriginalPriceInputTextControllerValidator;
  // State field(s) for pkgRescuePriceInput widget.
  FocusNode? pkgRescuePriceInputFocusNode;
  TextEditingController? pkgRescuePriceInputTextController;
  String? Function(BuildContext, String?)?
      pkgRescuePriceInputTextControllerValidator;
  // State field(s) for pkgPickupStartInput widget.
  FocusNode? pkgPickupStartInputFocusNode;
  TextEditingController? pkgPickupStartInputTextController;
  String? Function(BuildContext, String?)?
      pkgPickupStartInputTextControllerValidator;
  // State field(s) for pkgPickupEndInput widget.
  FocusNode? pkgPickupEndInputFocusNode;
  TextEditingController? pkgPickupEndInputTextController;
  String? Function(BuildContext, String?)?
      pkgPickupEndInputTextControllerValidator;
  // State field(s) for pkgAllergensInput widget.
  FocusNode? pkgAllergensInputFocusNode;
  TextEditingController? pkgAllergensInputTextController;
  String? Function(BuildContext, String?)?
      pkgAllergensInputTextControllerValidator;
  // State field(s) for pkgDescInput widget.
  FocusNode? pkgDescInputFocusNode;
  TextEditingController? pkgDescInputTextController;
  String? Function(BuildContext, String?)? pkgDescInputTextControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  PackagesRecord? document;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    pkgTitleInputFocusNode?.dispose();
    pkgTitleInputTextController?.dispose();

    pkgStockInputFocusNode?.dispose();
    pkgStockInputTextController?.dispose();

    pkgCategoryInputFocusNode?.dispose();
    pkgCategoryInputTextController?.dispose();

    pkgOriginalPriceInputFocusNode?.dispose();
    pkgOriginalPriceInputTextController?.dispose();

    pkgRescuePriceInputFocusNode?.dispose();
    pkgRescuePriceInputTextController?.dispose();

    pkgPickupStartInputFocusNode?.dispose();
    pkgPickupStartInputTextController?.dispose();

    pkgPickupEndInputFocusNode?.dispose();
    pkgPickupEndInputTextController?.dispose();

    pkgAllergensInputFocusNode?.dispose();
    pkgAllergensInputTextController?.dispose();

    pkgDescInputFocusNode?.dispose();
    pkgDescInputTextController?.dispose();
  }
}
