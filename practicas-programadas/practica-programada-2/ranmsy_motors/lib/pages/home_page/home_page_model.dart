import '/flutter_flow/ff_builtin_enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  Local state fields for this page.

  String? carName = '';

  String? carDescription = '';

  String? carPrice = '';

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for CarNameField widget.
  FocusNode? carNameFieldFocusNode;
  TextEditingController? carNameFieldTextController;
  String? Function(BuildContext, String?)? carNameFieldTextControllerValidator;
  String? _carNameFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter the car name';
    }

    return null;
  }

  // State field(s) for CarDescriptionField widget.
  FocusNode? carDescriptionFieldFocusNode;
  TextEditingController? carDescriptionFieldTextController;
  String? Function(BuildContext, String?)?
      carDescriptionFieldTextControllerValidator;
  String? _carDescriptionFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter the description';
    }

    return null;
  }

  // State field(s) for CarPriceField widget.
  FocusNode? carPriceFieldFocusNode;
  TextEditingController? carPriceFieldTextController;
  String? Function(BuildContext, String?)? carPriceFieldTextControllerValidator;
  String? _carPriceFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter the price';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    carNameFieldTextControllerValidator = _carNameFieldTextControllerValidator;
    carDescriptionFieldTextControllerValidator =
        _carDescriptionFieldTextControllerValidator;
    carPriceFieldTextControllerValidator =
        _carPriceFieldTextControllerValidator;
  }

  @override
  void dispose() {
    carNameFieldFocusNode?.dispose();
    carNameFieldTextController?.dispose();

    carDescriptionFieldFocusNode?.dispose();
    carDescriptionFieldTextController?.dispose();

    carPriceFieldFocusNode?.dispose();
    carPriceFieldTextController?.dispose();
  }
}
