import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/ff_builtin_enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'checkout_order_page_widget.dart' show CheckoutOrderPageWidget;
import 'package:cloud_firestore/cloud_firestore.dart' hide Type;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CheckoutOrderPageModel extends FlutterFlowModel<CheckoutOrderPageWidget> {
  ///  Local state fields for this page.

  String? selectedPayment = 'SINPE Móvil';

  bool? processing = false;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  OrdersRecord? document;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
