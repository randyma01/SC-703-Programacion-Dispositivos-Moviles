import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// Collection orders
class OrdersRecord extends FirestoreRecord {
  OrdersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "order_number" field.
  String? _orderNumber;
  String get orderNumber => _orderNumber ?? '';
  bool hasOrderNumber() => _orderNumber != null;

  // "user_ref" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "user_name" field.
  String? _userName;
  String get userName => _userName ?? '';
  bool hasUserName() => _userName != null;

  // "commerce_ref" field.
  DocumentReference? _commerceRef;
  DocumentReference? get commerceRef => _commerceRef;
  bool hasCommerceRef() => _commerceRef != null;

  // "package_ref" field.
  DocumentReference? _packageRef;
  DocumentReference? get packageRef => _packageRef;
  bool hasPackageRef() => _packageRef != null;

  // "package_title" field.
  String? _packageTitle;
  String get packageTitle => _packageTitle ?? '';
  bool hasPackageTitle() => _packageTitle != null;

  // "commerce_name" field.
  String? _commerceName;
  String get commerceName => _commerceName ?? '';
  bool hasCommerceName() => _commerceName != null;

  // "total_amount" field.
  double? _totalAmount;
  double get totalAmount => _totalAmount ?? 0.0;
  bool hasTotalAmount() => _totalAmount != null;

  // "payment_method" field.
  String? _paymentMethod;
  String get paymentMethod => _paymentMethod ?? '';
  bool hasPaymentMethod() => _paymentMethod != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "qr_code_data" field.
  String? _qrCodeData;
  String get qrCodeData => _qrCodeData ?? '';
  bool hasQrCodeData() => _qrCodeData != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "pickup_deadline" field.
  DateTime? _pickupDeadline;
  DateTime? get pickupDeadline => _pickupDeadline;
  bool hasPickupDeadline() => _pickupDeadline != null;

  void _initializeFields() {
    _orderNumber = snapshotData['order_number'] as String?;
    _userRef = snapshotData['user_ref'] as DocumentReference?;
    _userName = snapshotData['user_name'] as String?;
    _commerceRef = snapshotData['commerce_ref'] as DocumentReference?;
    _packageRef = snapshotData['package_ref'] as DocumentReference?;
    _packageTitle = snapshotData['package_title'] as String?;
    _commerceName = snapshotData['commerce_name'] as String?;
    _totalAmount = castToType<double>(snapshotData['total_amount']);
    _paymentMethod = snapshotData['payment_method'] as String?;
    _status = snapshotData['status'] as String?;
    _qrCodeData = snapshotData['qr_code_data'] as String?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _pickupDeadline = snapshotData['pickup_deadline'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('orders');

  static Stream<OrdersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OrdersRecord.fromSnapshot(s));

  static Future<OrdersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OrdersRecord.fromSnapshot(s));

  static OrdersRecord fromSnapshot(DocumentSnapshot snapshot) => OrdersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OrdersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OrdersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OrdersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OrdersRecord && reference.path == other.reference.path;
}

Map<String, dynamic> createOrdersRecordData({
  String? orderNumber,
  DocumentReference? userRef,
  String? userName,
  DocumentReference? commerceRef,
  DocumentReference? packageRef,
  String? packageTitle,
  String? commerceName,
  double? totalAmount,
  String? paymentMethod,
  String? status,
  String? qrCodeData,
  DateTime? createdAt,
  DateTime? pickupDeadline,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'order_number': orderNumber,
      'user_ref': userRef,
      'user_name': userName,
      'commerce_ref': commerceRef,
      'package_ref': packageRef,
      'package_title': packageTitle,
      'commerce_name': commerceName,
      'total_amount': totalAmount,
      'payment_method': paymentMethod,
      'status': status,
      'qr_code_data': qrCodeData,
      'created_at': createdAt,
      'pickup_deadline': pickupDeadline,
    }.withoutNulls,
  );

  return firestoreData;
}

class OrdersRecordDocumentEquality implements Equality<OrdersRecord> {
  const OrdersRecordDocumentEquality();

  @override
  bool equals(OrdersRecord? e1, OrdersRecord? e2) {
    return e1?.orderNumber == e2?.orderNumber &&
        e1?.userRef == e2?.userRef &&
        e1?.userName == e2?.userName &&
        e1?.commerceRef == e2?.commerceRef &&
        e1?.packageRef == e2?.packageRef &&
        e1?.packageTitle == e2?.packageTitle &&
        e1?.commerceName == e2?.commerceName &&
        e1?.totalAmount == e2?.totalAmount &&
        e1?.paymentMethod == e2?.paymentMethod &&
        e1?.status == e2?.status &&
        e1?.qrCodeData == e2?.qrCodeData &&
        e1?.createdAt == e2?.createdAt &&
        e1?.pickupDeadline == e2?.pickupDeadline;
  }

  @override
  int hash(OrdersRecord? e) => const ListEquality().hash([
        e?.orderNumber,
        e?.userRef,
        e?.userName,
        e?.commerceRef,
        e?.packageRef,
        e?.packageTitle,
        e?.commerceName,
        e?.totalAmount,
        e?.paymentMethod,
        e?.status,
        e?.qrCodeData,
        e?.createdAt,
        e?.pickupDeadline
      ]);

  @override
  bool isValidKey(Object? o) => o is OrdersRecord;
}
