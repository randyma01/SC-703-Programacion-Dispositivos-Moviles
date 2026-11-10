import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// Collection commerces
class CommercesRecord extends FirestoreRecord {
  CommercesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  bool hasPhone() => _phone != null;

  // "logo_url" field.
  String? _logoUrl;
  String get logoUrl => _logoUrl ?? '';
  bool hasLogoUrl() => _logoUrl != null;

  // "cover_image_url" field.
  String? _coverImageUrl;
  String get coverImageUrl => _coverImageUrl ?? '';
  bool hasCoverImageUrl() => _coverImageUrl != null;

  // "rating" field.
  double? _rating;
  double get rating => _rating ?? 0.0;
  bool hasRating() => _rating != null;

  // "owner_ref" field.
  DocumentReference? _ownerRef;
  DocumentReference? get ownerRef => _ownerRef;
  bool hasOwnerRef() => _ownerRef != null;

  // "total_rescued_kg" field.
  double? _totalRescuedKg;
  double get totalRescuedKg => _totalRescuedKg ?? 0.0;
  bool hasTotalRescuedKg() => _totalRescuedKg != null;

  // "total_earnings" field.
  double? _totalEarnings;
  double get totalEarnings => _totalEarnings ?? 0.0;
  bool hasTotalEarnings() => _totalEarnings != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _category = snapshotData['category'] as String?;
    _address = snapshotData['address'] as String?;
    _phone = snapshotData['phone'] as String?;
    _logoUrl = snapshotData['logo_url'] as String?;
    _coverImageUrl = snapshotData['cover_image_url'] as String?;
    _rating = castToType<double>(snapshotData['rating']);
    _ownerRef = snapshotData['owner_ref'] as DocumentReference?;
    _totalRescuedKg = castToType<double>(snapshotData['total_rescued_kg']);
    _totalEarnings = castToType<double>(snapshotData['total_earnings']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('commerces');

  static Stream<CommercesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CommercesRecord.fromSnapshot(s));

  static Future<CommercesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CommercesRecord.fromSnapshot(s));

  static CommercesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CommercesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CommercesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CommercesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CommercesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CommercesRecord && reference.path == other.reference.path;
}

Map<String, dynamic> createCommercesRecordData({
  String? name,
  String? category,
  String? address,
  String? phone,
  String? logoUrl,
  String? coverImageUrl,
  double? rating,
  DocumentReference? ownerRef,
  double? totalRescuedKg,
  double? totalEarnings,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'category': category,
      'address': address,
      'phone': phone,
      'logo_url': logoUrl,
      'cover_image_url': coverImageUrl,
      'rating': rating,
      'owner_ref': ownerRef,
      'total_rescued_kg': totalRescuedKg,
      'total_earnings': totalEarnings,
    }.withoutNulls,
  );

  return firestoreData;
}

class CommercesRecordDocumentEquality implements Equality<CommercesRecord> {
  const CommercesRecordDocumentEquality();

  @override
  bool equals(CommercesRecord? e1, CommercesRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.category == e2?.category &&
        e1?.address == e2?.address &&
        e1?.phone == e2?.phone &&
        e1?.logoUrl == e2?.logoUrl &&
        e1?.coverImageUrl == e2?.coverImageUrl &&
        e1?.rating == e2?.rating &&
        e1?.ownerRef == e2?.ownerRef &&
        e1?.totalRescuedKg == e2?.totalRescuedKg &&
        e1?.totalEarnings == e2?.totalEarnings;
  }

  @override
  int hash(CommercesRecord? e) => const ListEquality().hash([
        e?.name,
        e?.category,
        e?.address,
        e?.phone,
        e?.logoUrl,
        e?.coverImageUrl,
        e?.rating,
        e?.ownerRef,
        e?.totalRescuedKg,
        e?.totalEarnings
      ]);

  @override
  bool isValidKey(Object? o) => o is CommercesRecord;
}
