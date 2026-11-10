// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart' hide Type;

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// Struct OrderStruct
class OrderStructStruct extends FFFirebaseStruct {
  OrderStructStruct({
    /// OrderStruct.id
    String? id,

    /// OrderStruct.orderNumber
    String? orderNumber,

    /// OrderStruct.packageId
    String? packageId,

    /// OrderStruct.packageTitle
    String? packageTitle,

    /// OrderStruct.commerceName
    String? commerceName,

    /// OrderStruct.totalAmount
    double? totalAmount,

    /// OrderStruct.paymentMethod
    String? paymentMethod,

    /// OrderStruct.status
    String? status,

    /// OrderStruct.qrCodeData
    String? qrCodeData,

    /// OrderStruct.createdAt
    DateTime? createdAt,

    /// OrderStruct.pickupDeadline
    DateTime? pickupDeadline,

    /// OrderStruct.pickupTimeRange
    String? pickupTimeRange,

    /// OrderStruct.imageUrl
    String? imageUrl,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _orderNumber = orderNumber,
        _packageId = packageId,
        _packageTitle = packageTitle,
        _commerceName = commerceName,
        _totalAmount = totalAmount,
        _paymentMethod = paymentMethod,
        _status = status,
        _qrCodeData = qrCodeData,
        _createdAt = createdAt,
        _pickupDeadline = pickupDeadline,
        _pickupTimeRange = pickupTimeRange,
        _imageUrl = imageUrl,
        super(firestoreUtilData);

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "orderNumber" field.
  String? _orderNumber;
  String get orderNumber => _orderNumber ?? '';
  set orderNumber(String? val) => _orderNumber = val;

  bool hasOrderNumber() => _orderNumber != null;

  // "packageId" field.
  String? _packageId;
  String get packageId => _packageId ?? '';
  set packageId(String? val) => _packageId = val;

  bool hasPackageId() => _packageId != null;

  // "packageTitle" field.
  String? _packageTitle;
  String get packageTitle => _packageTitle ?? '';
  set packageTitle(String? val) => _packageTitle = val;

  bool hasPackageTitle() => _packageTitle != null;

  // "commerceName" field.
  String? _commerceName;
  String get commerceName => _commerceName ?? '';
  set commerceName(String? val) => _commerceName = val;

  bool hasCommerceName() => _commerceName != null;

  // "totalAmount" field.
  double? _totalAmount;
  double get totalAmount => _totalAmount ?? 0.0;
  set totalAmount(double? val) => _totalAmount = val;

  void incrementTotalAmount(double amount) =>
      totalAmount = totalAmount + amount;

  bool hasTotalAmount() => _totalAmount != null;

  // "paymentMethod" field.
  String? _paymentMethod;
  String get paymentMethod => _paymentMethod ?? '';
  set paymentMethod(String? val) => _paymentMethod = val;

  bool hasPaymentMethod() => _paymentMethod != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  // "qrCodeData" field.
  String? _qrCodeData;
  String get qrCodeData => _qrCodeData ?? '';
  set qrCodeData(String? val) => _qrCodeData = val;

  bool hasQrCodeData() => _qrCodeData != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  set createdAt(DateTime? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  // "pickupDeadline" field.
  DateTime? _pickupDeadline;
  DateTime? get pickupDeadline => _pickupDeadline;
  set pickupDeadline(DateTime? val) => _pickupDeadline = val;

  bool hasPickupDeadline() => _pickupDeadline != null;

  // "pickupTimeRange" field.
  String? _pickupTimeRange;
  String get pickupTimeRange => _pickupTimeRange ?? '';
  set pickupTimeRange(String? val) => _pickupTimeRange = val;

  bool hasPickupTimeRange() => _pickupTimeRange != null;

  // "imageUrl" field.
  String? _imageUrl;
  String get imageUrl => _imageUrl ?? '';
  set imageUrl(String? val) => _imageUrl = val;

  bool hasImageUrl() => _imageUrl != null;

  static OrderStructStruct fromMap(Map<String, dynamic> data) =>
      OrderStructStruct(
        id: data['id'] as String?,
        orderNumber: data['orderNumber'] as String?,
        packageId: data['packageId'] as String?,
        packageTitle: data['packageTitle'] as String?,
        commerceName: data['commerceName'] as String?,
        totalAmount: castToType<double>(data['totalAmount']),
        paymentMethod: data['paymentMethod'] as String?,
        status: data['status'] as String?,
        qrCodeData: data['qrCodeData'] as String?,
        createdAt: data['createdAt'] as DateTime?,
        pickupDeadline: data['pickupDeadline'] as DateTime?,
        pickupTimeRange: data['pickupTimeRange'] as String?,
        imageUrl: data['imageUrl'] as String?,
      );

  static OrderStructStruct? maybeFromMap(dynamic data) => data is Map
      ? OrderStructStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'orderNumber': _orderNumber,
        'packageId': _packageId,
        'packageTitle': _packageTitle,
        'commerceName': _commerceName,
        'totalAmount': _totalAmount,
        'paymentMethod': _paymentMethod,
        'status': _status,
        'qrCodeData': _qrCodeData,
        'createdAt': _createdAt,
        'pickupDeadline': _pickupDeadline,
        'pickupTimeRange': _pickupTimeRange,
        'imageUrl': _imageUrl,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'orderNumber': serializeParam(
          _orderNumber,
          ParamType.String,
        ),
        'packageId': serializeParam(
          _packageId,
          ParamType.String,
        ),
        'packageTitle': serializeParam(
          _packageTitle,
          ParamType.String,
        ),
        'commerceName': serializeParam(
          _commerceName,
          ParamType.String,
        ),
        'totalAmount': serializeParam(
          _totalAmount,
          ParamType.double,
        ),
        'paymentMethod': serializeParam(
          _paymentMethod,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'qrCodeData': serializeParam(
          _qrCodeData,
          ParamType.String,
        ),
        'createdAt': serializeParam(
          _createdAt,
          ParamType.DateTime,
        ),
        'pickupDeadline': serializeParam(
          _pickupDeadline,
          ParamType.DateTime,
        ),
        'pickupTimeRange': serializeParam(
          _pickupTimeRange,
          ParamType.String,
        ),
        'imageUrl': serializeParam(
          _imageUrl,
          ParamType.String,
        ),
      }.withoutNulls;

  static OrderStructStruct fromSerializableMap(Map<String, dynamic> data) =>
      OrderStructStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        orderNumber: deserializeParam(
          data['orderNumber'],
          ParamType.String,
          false,
        ),
        packageId: deserializeParam(
          data['packageId'],
          ParamType.String,
          false,
        ),
        packageTitle: deserializeParam(
          data['packageTitle'],
          ParamType.String,
          false,
        ),
        commerceName: deserializeParam(
          data['commerceName'],
          ParamType.String,
          false,
        ),
        totalAmount: deserializeParam(
          data['totalAmount'],
          ParamType.double,
          false,
        ),
        paymentMethod: deserializeParam(
          data['paymentMethod'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        qrCodeData: deserializeParam(
          data['qrCodeData'],
          ParamType.String,
          false,
        ),
        createdAt: deserializeParam(
          data['createdAt'],
          ParamType.DateTime,
          false,
        ),
        pickupDeadline: deserializeParam(
          data['pickupDeadline'],
          ParamType.DateTime,
          false,
        ),
        pickupTimeRange: deserializeParam(
          data['pickupTimeRange'],
          ParamType.String,
          false,
        ),
        imageUrl: deserializeParam(
          data['imageUrl'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'OrderStructStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is OrderStructStruct &&
        id == other.id &&
        orderNumber == other.orderNumber &&
        packageId == other.packageId &&
        packageTitle == other.packageTitle &&
        commerceName == other.commerceName &&
        totalAmount == other.totalAmount &&
        paymentMethod == other.paymentMethod &&
        status == other.status &&
        qrCodeData == other.qrCodeData &&
        createdAt == other.createdAt &&
        pickupDeadline == other.pickupDeadline &&
        pickupTimeRange == other.pickupTimeRange &&
        imageUrl == other.imageUrl;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        orderNumber,
        packageId,
        packageTitle,
        commerceName,
        totalAmount,
        paymentMethod,
        status,
        qrCodeData,
        createdAt,
        pickupDeadline,
        pickupTimeRange,
        imageUrl
      ]);
}

OrderStructStruct createOrderStructStruct({
  String? id,
  String? orderNumber,
  String? packageId,
  String? packageTitle,
  String? commerceName,
  double? totalAmount,
  String? paymentMethod,
  String? status,
  String? qrCodeData,
  DateTime? createdAt,
  DateTime? pickupDeadline,
  String? pickupTimeRange,
  String? imageUrl,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    OrderStructStruct(
      id: id,
      orderNumber: orderNumber,
      packageId: packageId,
      packageTitle: packageTitle,
      commerceName: commerceName,
      totalAmount: totalAmount,
      paymentMethod: paymentMethod,
      status: status,
      qrCodeData: qrCodeData,
      createdAt: createdAt,
      pickupDeadline: pickupDeadline,
      pickupTimeRange: pickupTimeRange,
      imageUrl: imageUrl,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

OrderStructStruct? updateOrderStructStruct(
  OrderStructStruct? orderStruct, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    orderStruct
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addOrderStructStructData(
  Map<String, dynamic> firestoreData,
  OrderStructStruct? orderStruct,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (orderStruct == null) {
    return;
  }
  if (orderStruct.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && orderStruct.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final orderStructData =
      getOrderStructFirestoreData(orderStruct, forFieldValue);
  final nestedData =
      orderStructData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = orderStruct.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getOrderStructFirestoreData(
  OrderStructStruct? orderStruct, [
  bool forFieldValue = false,
]) {
  if (orderStruct == null) {
    return {};
  }
  final firestoreData = mapToFirestore(orderStruct.toMap());

  // Add any Firestore field values
  mapToFirestore(orderStruct.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getOrderStructListFirestoreData(
  List<OrderStructStruct>? orderStructs,
) =>
    orderStructs?.map((e) => getOrderStructFirestoreData(e, true)).toList() ??
    [];
