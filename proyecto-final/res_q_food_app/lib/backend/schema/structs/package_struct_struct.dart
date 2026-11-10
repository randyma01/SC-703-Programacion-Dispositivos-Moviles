// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart' hide Type;

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// Struct PackageStruct
class PackageStructStruct extends FFFirebaseStruct {
  PackageStructStruct({
    /// PackageStruct.id
    String? id,

    /// PackageStruct.commerceId
    String? commerceId,

    /// PackageStruct.title
    String? title,

    /// PackageStruct.description
    String? description,

    /// PackageStruct.originalPrice
    double? originalPrice,

    /// PackageStruct.rescuePrice
    double? rescuePrice,

    /// PackageStruct.discountPercentage
    int? discountPercentage,

    /// PackageStruct.availableStock
    int? availableStock,

    /// PackageStruct.pickupStart
    String? pickupStart,

    /// PackageStruct.pickupEnd
    String? pickupEnd,

    /// PackageStruct.pickupTimeRange
    String? pickupTimeRange,

    /// PackageStruct.pickupDeadline
    DateTime? pickupDeadline,

    /// PackageStruct.allergens
    List<String>? allergens,

    /// PackageStruct.isAvailable
    bool? isAvailable,

    /// PackageStruct.imageUrl
    String? imageUrl,

    /// PackageStruct.commerceName
    String? commerceName,

    /// PackageStruct.category
    String? category,

    /// PackageStruct.rating
    double? rating,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _commerceId = commerceId,
        _title = title,
        _description = description,
        _originalPrice = originalPrice,
        _rescuePrice = rescuePrice,
        _discountPercentage = discountPercentage,
        _availableStock = availableStock,
        _pickupStart = pickupStart,
        _pickupEnd = pickupEnd,
        _pickupTimeRange = pickupTimeRange,
        _pickupDeadline = pickupDeadline,
        _allergens = allergens,
        _isAvailable = isAvailable,
        _imageUrl = imageUrl,
        _commerceName = commerceName,
        _category = category,
        _rating = rating,
        super(firestoreUtilData);

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "commerceId" field.
  String? _commerceId;
  String get commerceId => _commerceId ?? '';
  set commerceId(String? val) => _commerceId = val;

  bool hasCommerceId() => _commerceId != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "originalPrice" field.
  double? _originalPrice;
  double get originalPrice => _originalPrice ?? 0.0;
  set originalPrice(double? val) => _originalPrice = val;

  void incrementOriginalPrice(double amount) =>
      originalPrice = originalPrice + amount;

  bool hasOriginalPrice() => _originalPrice != null;

  // "rescuePrice" field.
  double? _rescuePrice;
  double get rescuePrice => _rescuePrice ?? 0.0;
  set rescuePrice(double? val) => _rescuePrice = val;

  void incrementRescuePrice(double amount) =>
      rescuePrice = rescuePrice + amount;

  bool hasRescuePrice() => _rescuePrice != null;

  // "discountPercentage" field.
  int? _discountPercentage;
  int get discountPercentage => _discountPercentage ?? 0;
  set discountPercentage(int? val) => _discountPercentage = val;

  void incrementDiscountPercentage(int amount) =>
      discountPercentage = discountPercentage + amount;

  bool hasDiscountPercentage() => _discountPercentage != null;

  // "availableStock" field.
  int? _availableStock;
  int get availableStock => _availableStock ?? 0;
  set availableStock(int? val) => _availableStock = val;

  void incrementAvailableStock(int amount) =>
      availableStock = availableStock + amount;

  bool hasAvailableStock() => _availableStock != null;

  // "pickupStart" field.
  String? _pickupStart;
  String get pickupStart => _pickupStart ?? '';
  set pickupStart(String? val) => _pickupStart = val;

  bool hasPickupStart() => _pickupStart != null;

  // "pickupEnd" field.
  String? _pickupEnd;
  String get pickupEnd => _pickupEnd ?? '';
  set pickupEnd(String? val) => _pickupEnd = val;

  bool hasPickupEnd() => _pickupEnd != null;

  // "pickupTimeRange" field.
  String? _pickupTimeRange;
  String get pickupTimeRange => _pickupTimeRange ?? '';
  set pickupTimeRange(String? val) => _pickupTimeRange = val;

  bool hasPickupTimeRange() => _pickupTimeRange != null;

  // "pickupDeadline" field.
  DateTime? _pickupDeadline;
  DateTime? get pickupDeadline => _pickupDeadline;
  set pickupDeadline(DateTime? val) => _pickupDeadline = val;

  bool hasPickupDeadline() => _pickupDeadline != null;

  // "allergens" field.
  List<String>? _allergens;
  List<String> get allergens => _allergens ?? const [];
  set allergens(List<String>? val) => _allergens = val;

  void updateAllergens(Function(List<String>) updateFn) {
    updateFn(_allergens ??= []);
  }

  bool hasAllergens() => _allergens != null;

  // "isAvailable" field.
  bool? _isAvailable;
  bool get isAvailable => _isAvailable ?? false;
  set isAvailable(bool? val) => _isAvailable = val;

  bool hasIsAvailable() => _isAvailable != null;

  // "imageUrl" field.
  String? _imageUrl;
  String get imageUrl => _imageUrl ?? '';
  set imageUrl(String? val) => _imageUrl = val;

  bool hasImageUrl() => _imageUrl != null;

  // "commerceName" field.
  String? _commerceName;
  String get commerceName => _commerceName ?? '';
  set commerceName(String? val) => _commerceName = val;

  bool hasCommerceName() => _commerceName != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  set category(String? val) => _category = val;

  bool hasCategory() => _category != null;

  // "rating" field.
  double? _rating;
  double get rating => _rating ?? 0.0;
  set rating(double? val) => _rating = val;

  void incrementRating(double amount) => rating = rating + amount;

  bool hasRating() => _rating != null;

  static PackageStructStruct fromMap(Map<String, dynamic> data) =>
      PackageStructStruct(
        id: data['id'] as String?,
        commerceId: data['commerceId'] as String?,
        title: data['title'] as String?,
        description: data['description'] as String?,
        originalPrice: castToType<double>(data['originalPrice']),
        rescuePrice: castToType<double>(data['rescuePrice']),
        discountPercentage: castToType<int>(data['discountPercentage']),
        availableStock: castToType<int>(data['availableStock']),
        pickupStart: data['pickupStart'] as String?,
        pickupEnd: data['pickupEnd'] as String?,
        pickupTimeRange: data['pickupTimeRange'] as String?,
        pickupDeadline: data['pickupDeadline'] as DateTime?,
        allergens: getDataList(data['allergens']),
        isAvailable: data['isAvailable'] as bool?,
        imageUrl: data['imageUrl'] as String?,
        commerceName: data['commerceName'] as String?,
        category: data['category'] as String?,
        rating: castToType<double>(data['rating']),
      );

  static PackageStructStruct? maybeFromMap(dynamic data) => data is Map
      ? PackageStructStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'commerceId': _commerceId,
        'title': _title,
        'description': _description,
        'originalPrice': _originalPrice,
        'rescuePrice': _rescuePrice,
        'discountPercentage': _discountPercentage,
        'availableStock': _availableStock,
        'pickupStart': _pickupStart,
        'pickupEnd': _pickupEnd,
        'pickupTimeRange': _pickupTimeRange,
        'pickupDeadline': _pickupDeadline,
        'allergens': _allergens,
        'isAvailable': _isAvailable,
        'imageUrl': _imageUrl,
        'commerceName': _commerceName,
        'category': _category,
        'rating': _rating,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'commerceId': serializeParam(
          _commerceId,
          ParamType.String,
        ),
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'originalPrice': serializeParam(
          _originalPrice,
          ParamType.double,
        ),
        'rescuePrice': serializeParam(
          _rescuePrice,
          ParamType.double,
        ),
        'discountPercentage': serializeParam(
          _discountPercentage,
          ParamType.int,
        ),
        'availableStock': serializeParam(
          _availableStock,
          ParamType.int,
        ),
        'pickupStart': serializeParam(
          _pickupStart,
          ParamType.String,
        ),
        'pickupEnd': serializeParam(
          _pickupEnd,
          ParamType.String,
        ),
        'pickupTimeRange': serializeParam(
          _pickupTimeRange,
          ParamType.String,
        ),
        'pickupDeadline': serializeParam(
          _pickupDeadline,
          ParamType.DateTime,
        ),
        'allergens': serializeParam(
          _allergens,
          ParamType.String,
          isList: true,
        ),
        'isAvailable': serializeParam(
          _isAvailable,
          ParamType.bool,
        ),
        'imageUrl': serializeParam(
          _imageUrl,
          ParamType.String,
        ),
        'commerceName': serializeParam(
          _commerceName,
          ParamType.String,
        ),
        'category': serializeParam(
          _category,
          ParamType.String,
        ),
        'rating': serializeParam(
          _rating,
          ParamType.double,
        ),
      }.withoutNulls;

  static PackageStructStruct fromSerializableMap(Map<String, dynamic> data) =>
      PackageStructStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        commerceId: deserializeParam(
          data['commerceId'],
          ParamType.String,
          false,
        ),
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        originalPrice: deserializeParam(
          data['originalPrice'],
          ParamType.double,
          false,
        ),
        rescuePrice: deserializeParam(
          data['rescuePrice'],
          ParamType.double,
          false,
        ),
        discountPercentage: deserializeParam(
          data['discountPercentage'],
          ParamType.int,
          false,
        ),
        availableStock: deserializeParam(
          data['availableStock'],
          ParamType.int,
          false,
        ),
        pickupStart: deserializeParam(
          data['pickupStart'],
          ParamType.String,
          false,
        ),
        pickupEnd: deserializeParam(
          data['pickupEnd'],
          ParamType.String,
          false,
        ),
        pickupTimeRange: deserializeParam(
          data['pickupTimeRange'],
          ParamType.String,
          false,
        ),
        pickupDeadline: deserializeParam(
          data['pickupDeadline'],
          ParamType.DateTime,
          false,
        ),
        allergens: deserializeParam<String>(
          data['allergens'],
          ParamType.String,
          true,
        ),
        isAvailable: deserializeParam(
          data['isAvailable'],
          ParamType.bool,
          false,
        ),
        imageUrl: deserializeParam(
          data['imageUrl'],
          ParamType.String,
          false,
        ),
        commerceName: deserializeParam(
          data['commerceName'],
          ParamType.String,
          false,
        ),
        category: deserializeParam(
          data['category'],
          ParamType.String,
          false,
        ),
        rating: deserializeParam(
          data['rating'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'PackageStructStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is PackageStructStruct &&
        id == other.id &&
        commerceId == other.commerceId &&
        title == other.title &&
        description == other.description &&
        originalPrice == other.originalPrice &&
        rescuePrice == other.rescuePrice &&
        discountPercentage == other.discountPercentage &&
        availableStock == other.availableStock &&
        pickupStart == other.pickupStart &&
        pickupEnd == other.pickupEnd &&
        pickupTimeRange == other.pickupTimeRange &&
        pickupDeadline == other.pickupDeadline &&
        listEquality.equals(allergens, other.allergens) &&
        isAvailable == other.isAvailable &&
        imageUrl == other.imageUrl &&
        commerceName == other.commerceName &&
        category == other.category &&
        rating == other.rating;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        commerceId,
        title,
        description,
        originalPrice,
        rescuePrice,
        discountPercentage,
        availableStock,
        pickupStart,
        pickupEnd,
        pickupTimeRange,
        pickupDeadline,
        const ListEquality().hash(allergens),
        isAvailable,
        imageUrl,
        commerceName,
        category,
        rating
      ]);
}

PackageStructStruct createPackageStructStruct({
  String? id,
  String? commerceId,
  String? title,
  String? description,
  double? originalPrice,
  double? rescuePrice,
  int? discountPercentage,
  int? availableStock,
  String? pickupStart,
  String? pickupEnd,
  String? pickupTimeRange,
  DateTime? pickupDeadline,
  bool? isAvailable,
  String? imageUrl,
  String? commerceName,
  String? category,
  double? rating,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PackageStructStruct(
      id: id,
      commerceId: commerceId,
      title: title,
      description: description,
      originalPrice: originalPrice,
      rescuePrice: rescuePrice,
      discountPercentage: discountPercentage,
      availableStock: availableStock,
      pickupStart: pickupStart,
      pickupEnd: pickupEnd,
      pickupTimeRange: pickupTimeRange,
      pickupDeadline: pickupDeadline,
      isAvailable: isAvailable,
      imageUrl: imageUrl,
      commerceName: commerceName,
      category: category,
      rating: rating,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PackageStructStruct? updatePackageStructStruct(
  PackageStructStruct? packageStruct, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    packageStruct
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPackageStructStructData(
  Map<String, dynamic> firestoreData,
  PackageStructStruct? packageStruct,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (packageStruct == null) {
    return;
  }
  if (packageStruct.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && packageStruct.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final packageStructData =
      getPackageStructFirestoreData(packageStruct, forFieldValue);
  final nestedData =
      packageStructData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = packageStruct.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPackageStructFirestoreData(
  PackageStructStruct? packageStruct, [
  bool forFieldValue = false,
]) {
  if (packageStruct == null) {
    return {};
  }
  final firestoreData = mapToFirestore(packageStruct.toMap());

  // Add any Firestore field values
  mapToFirestore(packageStruct.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPackageStructListFirestoreData(
  List<PackageStructStruct>? packageStructs,
) =>
    packageStructs
        ?.map((e) => getPackageStructFirestoreData(e, true))
        .toList() ??
    [];
