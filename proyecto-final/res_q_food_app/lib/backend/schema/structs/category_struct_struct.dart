// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart' hide Type;

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// Struct CategoryStruct
class CategoryStructStruct extends FFFirebaseStruct {
  CategoryStructStruct({
    /// CategoryStruct.id
    String? id,

    /// CategoryStruct.name
    String? name,

    /// CategoryStruct.iconName
    String? iconName,

    /// CategoryStruct.order
    int? order,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _name = name,
        _iconName = iconName,
        _order = order,
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

  // "iconName" field.
  String? _iconName;
  String get iconName => _iconName ?? '';
  set iconName(String? val) => _iconName = val;

  bool hasIconName() => _iconName != null;

  // "order" field.
  int? _order;
  int get order => _order ?? 0;
  set order(int? val) => _order = val;

  void incrementOrder(int amount) => order = order + amount;

  bool hasOrder() => _order != null;

  static CategoryStructStruct fromMap(Map<String, dynamic> data) =>
      CategoryStructStruct(
        id: data['id'] as String?,
        name: data['name'] as String?,
        iconName: data['iconName'] as String?,
        order: castToType<int>(data['order']),
      );

  static CategoryStructStruct? maybeFromMap(dynamic data) => data is Map
      ? CategoryStructStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'iconName': _iconName,
        'order': _order,
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
        'iconName': serializeParam(
          _iconName,
          ParamType.String,
        ),
        'order': serializeParam(
          _order,
          ParamType.int,
        ),
      }.withoutNulls;

  static CategoryStructStruct fromSerializableMap(Map<String, dynamic> data) =>
      CategoryStructStruct(
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
        iconName: deserializeParam(
          data['iconName'],
          ParamType.String,
          false,
        ),
        order: deserializeParam(
          data['order'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'CategoryStructStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CategoryStructStruct &&
        id == other.id &&
        name == other.name &&
        iconName == other.iconName &&
        order == other.order;
  }

  @override
  int get hashCode => const ListEquality().hash([id, name, iconName, order]);
}

CategoryStructStruct createCategoryStructStruct({
  String? id,
  String? name,
  String? iconName,
  int? order,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CategoryStructStruct(
      id: id,
      name: name,
      iconName: iconName,
      order: order,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CategoryStructStruct? updateCategoryStructStruct(
  CategoryStructStruct? categoryStruct, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    categoryStruct
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCategoryStructStructData(
  Map<String, dynamic> firestoreData,
  CategoryStructStruct? categoryStruct,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (categoryStruct == null) {
    return;
  }
  if (categoryStruct.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && categoryStruct.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final categoryStructData =
      getCategoryStructFirestoreData(categoryStruct, forFieldValue);
  final nestedData =
      categoryStructData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = categoryStruct.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCategoryStructFirestoreData(
  CategoryStructStruct? categoryStruct, [
  bool forFieldValue = false,
]) {
  if (categoryStruct == null) {
    return {};
  }
  final firestoreData = mapToFirestore(categoryStruct.toMap());

  // Add any Firestore field values
  mapToFirestore(categoryStruct.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCategoryStructListFirestoreData(
  List<CategoryStructStruct>? categoryStructs,
) =>
    categoryStructs
        ?.map((e) => getCategoryStructFirestoreData(e, true))
        .toList() ??
    [];
