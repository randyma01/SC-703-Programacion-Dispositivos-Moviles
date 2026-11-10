import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// Collection packages
class PackagesRecord extends FirestoreRecord {
  PackagesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "commerce_ref" field.
  DocumentReference? _commerceRef;
  DocumentReference? get commerceRef => _commerceRef;
  bool hasCommerceRef() => _commerceRef != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "original_price" field.
  double? _originalPrice;
  double get originalPrice => _originalPrice ?? 0.0;
  bool hasOriginalPrice() => _originalPrice != null;

  // "rescue_price" field.
  double? _rescuePrice;
  double get rescuePrice => _rescuePrice ?? 0.0;
  bool hasRescuePrice() => _rescuePrice != null;

  // "discount_percentage" field.
  int? _discountPercentage;
  int get discountPercentage => _discountPercentage ?? 0;
  bool hasDiscountPercentage() => _discountPercentage != null;

  // "available_stock" field.
  int? _availableStock;
  int get availableStock => _availableStock ?? 0;
  bool hasAvailableStock() => _availableStock != null;

  // "pickup_start" field.
  String? _pickupStart;
  String get pickupStart => _pickupStart ?? '';
  bool hasPickupStart() => _pickupStart != null;

  // "pickup_end" field.
  String? _pickupEnd;
  String get pickupEnd => _pickupEnd ?? '';
  bool hasPickupEnd() => _pickupEnd != null;

  // "allergens" field.
  List<String>? _allergens;
  List<String> get allergens => _allergens ?? const [];
  bool hasAllergens() => _allergens != null;

  // "is_available" field.
  bool? _isAvailable;
  bool get isAvailable => _isAvailable ?? false;
  bool hasIsAvailable() => _isAvailable != null;

  // "image_url" field.
  String? _imageUrl;
  String get imageUrl => _imageUrl ?? '';
  bool hasImageUrl() => _imageUrl != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  void _initializeFields() {
    _commerceRef = snapshotData['commerce_ref'] as DocumentReference?;
    _title = snapshotData['title'] as String?;
    _description = snapshotData['description'] as String?;
    _originalPrice = castToType<double>(snapshotData['original_price']);
    _rescuePrice = castToType<double>(snapshotData['rescue_price']);
    _discountPercentage = castToType<int>(snapshotData['discount_percentage']);
    _availableStock = castToType<int>(snapshotData['available_stock']);
    _pickupStart = snapshotData['pickup_start'] as String?;
    _pickupEnd = snapshotData['pickup_end'] as String?;
    _allergens = getDataList(snapshotData['allergens']);
    _isAvailable = snapshotData['is_available'] as bool?;
    _imageUrl = snapshotData['image_url'] as String?;
    _createdAt = snapshotData['created_at'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('packages');

  static Stream<PackagesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PackagesRecord.fromSnapshot(s));

  static Future<PackagesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PackagesRecord.fromSnapshot(s));

  static PackagesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PackagesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PackagesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PackagesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PackagesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PackagesRecord && reference.path == other.reference.path;
}

Map<String, dynamic> createPackagesRecordData({
  DocumentReference? commerceRef,
  String? title,
  String? description,
  double? originalPrice,
  double? rescuePrice,
  int? discountPercentage,
  int? availableStock,
  String? pickupStart,
  String? pickupEnd,
  bool? isAvailable,
  String? imageUrl,
  DateTime? createdAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'commerce_ref': commerceRef,
      'title': title,
      'description': description,
      'original_price': originalPrice,
      'rescue_price': rescuePrice,
      'discount_percentage': discountPercentage,
      'available_stock': availableStock,
      'pickup_start': pickupStart,
      'pickup_end': pickupEnd,
      'is_available': isAvailable,
      'image_url': imageUrl,
      'created_at': createdAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class PackagesRecordDocumentEquality implements Equality<PackagesRecord> {
  const PackagesRecordDocumentEquality();

  @override
  bool equals(PackagesRecord? e1, PackagesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.commerceRef == e2?.commerceRef &&
        e1?.title == e2?.title &&
        e1?.description == e2?.description &&
        e1?.originalPrice == e2?.originalPrice &&
        e1?.rescuePrice == e2?.rescuePrice &&
        e1?.discountPercentage == e2?.discountPercentage &&
        e1?.availableStock == e2?.availableStock &&
        e1?.pickupStart == e2?.pickupStart &&
        e1?.pickupEnd == e2?.pickupEnd &&
        listEquality.equals(e1?.allergens, e2?.allergens) &&
        e1?.isAvailable == e2?.isAvailable &&
        e1?.imageUrl == e2?.imageUrl &&
        e1?.createdAt == e2?.createdAt;
  }

  @override
  int hash(PackagesRecord? e) => const ListEquality().hash([
        e?.commerceRef,
        e?.title,
        e?.description,
        e?.originalPrice,
        e?.rescuePrice,
        e?.discountPercentage,
        e?.availableStock,
        e?.pickupStart,
        e?.pickupEnd,
        const ListEquality().hash(e?.allergens),
        e?.isAvailable,
        e?.imageUrl,
        e?.createdAt
      ]);

  @override
  bool isValidKey(Object? o) => o is PackagesRecord;
}
