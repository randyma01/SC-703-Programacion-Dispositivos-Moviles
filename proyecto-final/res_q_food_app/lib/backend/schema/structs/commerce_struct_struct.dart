// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart' hide Type;

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// Struct CommerceStruct
class CommerceStructStruct extends FFFirebaseStruct {
  CommerceStructStruct({
    /// CommerceStruct.id
    String? id,

    /// CommerceStruct.name
    String? name,

    /// CommerceStruct.category
    String? category,

    /// CommerceStruct.address
    String? address,

    /// CommerceStruct.phone
    String? phone,

    /// CommerceStruct.logoUrl
    String? logoUrl,

    /// CommerceStruct.coverImageUrl
    String? coverImageUrl,

    /// CommerceStruct.rating
    double? rating,

    /// CommerceStruct.geoLocation
    LatLng? geoLocation,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _name = name,
        _category = category,
        _address = address,
        _phone = phone,
        _logoUrl = logoUrl,
        _coverImageUrl = coverImageUrl,
        _rating = rating,
        _geoLocation = geoLocation,
        super(firestoreUtilData);

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  set category(String? val) => _category = val;

  bool hasCategory() => _category != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  set address(String? val) => _address = val;

  bool hasAddress() => _address != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  set phone(String? val) => _phone = val;

  bool hasPhone() => _phone != null;

  // "logoUrl" field.
  String? _logoUrl;
  String get logoUrl => _logoUrl ?? '';
  set logoUrl(String? val) => _logoUrl = val;

  bool hasLogoUrl() => _logoUrl != null;

  // "coverImageUrl" field.
  String? _coverImageUrl;
  String get coverImageUrl => _coverImageUrl ?? '';
  set coverImageUrl(String? val) => _coverImageUrl = val;

  bool hasCoverImageUrl() => _coverImageUrl != null;

  // "rating" field.
  double? _rating;
  double get rating => _rating ?? 0.0;
  set rating(double? val) => _rating = val;

  void incrementRating(double amount) => rating = rating + amount;

  bool hasRating() => _rating != null;

  // "geoLocation" field.
  LatLng? _geoLocation;
  LatLng? get geoLocation => _geoLocation;
  set geoLocation(LatLng? val) => _geoLocation = val;

  bool hasGeoLocation() => _geoLocation != null;

  static CommerceStructStruct fromMap(Map<String, dynamic> data) =>
      CommerceStructStruct(
        id: data['id'] as String?,
        name: data['name'] as String?,
        category: data['category'] as String?,
        address: data['address'] as String?,
        phone: data['phone'] as String?,
        logoUrl: data['logoUrl'] as String?,
        coverImageUrl: data['coverImageUrl'] as String?,
        rating: castToType<double>(data['rating']),
        geoLocation: data['geoLocation'] as LatLng?,
      );

  static CommerceStructStruct? maybeFromMap(dynamic data) => data is Map
      ? CommerceStructStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'category': _category,
        'address': _address,
        'phone': _phone,
        'logoUrl': _logoUrl,
        'coverImageUrl': _coverImageUrl,
        'rating': _rating,
        'geoLocation': _geoLocation,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'category': serializeParam(
          _category,
          ParamType.String,
        ),
        'address': serializeParam(
          _address,
          ParamType.String,
        ),
        'phone': serializeParam(
          _phone,
          ParamType.String,
        ),
        'logoUrl': serializeParam(
          _logoUrl,
          ParamType.String,
        ),
        'coverImageUrl': serializeParam(
          _coverImageUrl,
          ParamType.String,
        ),
        'rating': serializeParam(
          _rating,
          ParamType.double,
        ),
        'geoLocation': serializeParam(
          _geoLocation,
          ParamType.LatLng,
        ),
      }.withoutNulls;

  static CommerceStructStruct fromSerializableMap(Map<String, dynamic> data) =>
      CommerceStructStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        category: deserializeParam(
          data['category'],
          ParamType.String,
          false,
        ),
        address: deserializeParam(
          data['address'],
          ParamType.String,
          false,
        ),
        phone: deserializeParam(
          data['phone'],
          ParamType.String,
          false,
        ),
        logoUrl: deserializeParam(
          data['logoUrl'],
          ParamType.String,
          false,
        ),
        coverImageUrl: deserializeParam(
          data['coverImageUrl'],
          ParamType.String,
          false,
        ),
        rating: deserializeParam(
          data['rating'],
          ParamType.double,
          false,
        ),
        geoLocation: deserializeParam(
          data['geoLocation'],
          ParamType.LatLng,
          false,
        ),
      );

  @override
  String toString() => 'CommerceStructStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CommerceStructStruct &&
        id == other.id &&
        name == other.name &&
        category == other.category &&
        address == other.address &&
        phone == other.phone &&
        logoUrl == other.logoUrl &&
        coverImageUrl == other.coverImageUrl &&
        rating == other.rating &&
        geoLocation == other.geoLocation;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        name,
        category,
        address,
        phone,
        logoUrl,
        coverImageUrl,
        rating,
        geoLocation
      ]);
}

CommerceStructStruct createCommerceStructStruct({
  String? id,
  String? name,
  String? category,
  String? address,
  String? phone,
  String? logoUrl,
  String? coverImageUrl,
  double? rating,
  LatLng? geoLocation,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CommerceStructStruct(
      id: id,
      name: name,
      category: category,
      address: address,
      phone: phone,
      logoUrl: logoUrl,
      coverImageUrl: coverImageUrl,
      rating: rating,
      geoLocation: geoLocation,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CommerceStructStruct? updateCommerceStructStruct(
  CommerceStructStruct? commerceStruct, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    commerceStruct
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCommerceStructStructData(
  Map<String, dynamic> firestoreData,
  CommerceStructStruct? commerceStruct,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (commerceStruct == null) {
    return;
  }
  if (commerceStruct.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && commerceStruct.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final commerceStructData =
      getCommerceStructFirestoreData(commerceStruct, forFieldValue);
  final nestedData =
      commerceStructData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = commerceStruct.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCommerceStructFirestoreData(
  CommerceStructStruct? commerceStruct, [
  bool forFieldValue = false,
]) {
  if (commerceStruct == null) {
    return {};
  }
  final firestoreData = mapToFirestore(commerceStruct.toMap());

  // Add any Firestore field values
  mapToFirestore(commerceStruct.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCommerceStructListFirestoreData(
  List<CommerceStructStruct>? commerceStructs,
) =>
    commerceStructs
        ?.map((e) => getCommerceStructFirestoreData(e, true))
        .toList() ??
    [];
