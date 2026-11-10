import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/create_package_bottom_sheet_widget.dart';
import '/flutter_flow/ff_builtin_enums.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'commerce_dashboard_page_widget.dart' show CommerceDashboardPageWidget;
import 'package:cloud_firestore/cloud_firestore.dart' hide Type;
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CommerceDashboardPageModel
    extends FlutterFlowModel<CommerceDashboardPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  OrdersRecord? pendingOrder;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
