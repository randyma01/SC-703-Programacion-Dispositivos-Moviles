import '/flutter_flow/ff_builtin_enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'explore_page_widget.dart' show ExplorePageWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ExplorePageModel extends FlutterFlowModel<ExplorePageWidget> {
  ///  Local state fields for this page.

  String? selectedCategory = 'Todos';

  String? searchText = '';

  ///  State fields for stateful widgets in this page.

  // State field(s) for exploreSearch widget.
  FocusNode? exploreSearchFocusNode;
  TextEditingController? exploreSearchTextController;
  String? Function(BuildContext, String?)? exploreSearchTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    exploreSearchFocusNode?.dispose();
    exploreSearchTextController?.dispose();
  }
}
