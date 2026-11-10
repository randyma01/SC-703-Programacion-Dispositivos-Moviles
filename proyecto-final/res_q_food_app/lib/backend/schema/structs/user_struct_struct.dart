// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart' hide Type;

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// Struct UserStruct
class UserStructStruct extends FFFirebaseStruct {
  UserStructStruct({
    /// UserStruct.uid
    String? uid,

    /// UserStruct.email
    String? email,

    /// UserStruct.displayName
    String? displayName,

    /// UserStruct.photoUrl
    String? photoUrl,

    /// UserStruct.phoneNumber
    String? phoneNumber,

    /// UserStruct.role
    String? role,

    /// UserStruct.createdTime
    DateTime? createdTime,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _uid = uid,
        _email = email,
        _displayName = displayName,
        _photoUrl = photoUrl,
        _phoneNumber = phoneNumber,
        _role = role,
        _createdTime = createdTime,
        super(firestoreUtilData);

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  set uid(String? val) => _uid = val;

  bool hasUid() => _uid != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "displayName" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  set displayName(String? val) => _displayName = val;

  bool hasDisplayName() => _displayName != null;

  // "photoUrl" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  set photoUrl(String? val) => _photoUrl = val;

  bool hasPhotoUrl() => _photoUrl != null;

  // "phoneNumber" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  set phoneNumber(String? val) => _phoneNumber = val;

  bool hasPhoneNumber() => _phoneNumber != null;

  // "role" field.
  String? _role;
  String get role => _role ?? '';
  set role(String? val) => _role = val;

  bool hasRole() => _role != null;

  // "createdTime" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  set createdTime(DateTime? val) => _createdTime = val;

  bool hasCreatedTime() => _createdTime != null;

  static UserStructStruct fromMap(Map<String, dynamic> data) =>
      UserStructStruct(
        uid: data['uid'] as String?,
        email: data['email'] as String?,
        displayName: data['displayName'] as String?,
        photoUrl: data['photoUrl'] as String?,
        phoneNumber: data['phoneNumber'] as String?,
        role: data['role'] as String?,
        createdTime: data['createdTime'] as DateTime?,
      );

  static UserStructStruct? maybeFromMap(dynamic data) => data is Map
      ? UserStructStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'uid': _uid,
        'email': _email,
        'displayName': _displayName,
        'photoUrl': _photoUrl,
        'phoneNumber': _phoneNumber,
        'role': _role,
        'createdTime': _createdTime,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'uid': serializeParam(
          _uid,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'displayName': serializeParam(
          _displayName,
          ParamType.String,
        ),
        'photoUrl': serializeParam(
          _photoUrl,
          ParamType.String,
        ),
        'phoneNumber': serializeParam(
          _phoneNumber,
          ParamType.String,
        ),
        'role': serializeParam(
          _role,
          ParamType.String,
        ),
        'createdTime': serializeParam(
          _createdTime,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static UserStructStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserStructStruct(
        uid: deserializeParam(
          data['uid'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        displayName: deserializeParam(
          data['displayName'],
          ParamType.String,
          false,
        ),
        photoUrl: deserializeParam(
          data['photoUrl'],
          ParamType.String,
          false,
        ),
        phoneNumber: deserializeParam(
          data['phoneNumber'],
          ParamType.String,
          false,
        ),
        role: deserializeParam(
          data['role'],
          ParamType.String,
          false,
        ),
        createdTime: deserializeParam(
          data['createdTime'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'UserStructStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserStructStruct &&
        uid == other.uid &&
        email == other.email &&
        displayName == other.displayName &&
        photoUrl == other.photoUrl &&
        phoneNumber == other.phoneNumber &&
        role == other.role &&
        createdTime == other.createdTime;
  }

  @override
  int get hashCode => const ListEquality().hash(
      [uid, email, displayName, photoUrl, phoneNumber, role, createdTime]);
}

UserStructStruct createUserStructStruct({
  String? uid,
  String? email,
  String? displayName,
  String? photoUrl,
  String? phoneNumber,
  String? role,
  DateTime? createdTime,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    UserStructStruct(
      uid: uid,
      email: email,
      displayName: displayName,
      photoUrl: photoUrl,
      phoneNumber: phoneNumber,
      role: role,
      createdTime: createdTime,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

UserStructStruct? updateUserStructStruct(
  UserStructStruct? userStruct, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    userStruct
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addUserStructStructData(
  Map<String, dynamic> firestoreData,
  UserStructStruct? userStruct,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (userStruct == null) {
    return;
  }
  if (userStruct.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && userStruct.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final userStructData = getUserStructFirestoreData(userStruct, forFieldValue);
  final nestedData = userStructData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = userStruct.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getUserStructFirestoreData(
  UserStructStruct? userStruct, [
  bool forFieldValue = false,
]) {
  if (userStruct == null) {
    return {};
  }
  final firestoreData = mapToFirestore(userStruct.toMap());

  // Add any Firestore field values
  mapToFirestore(userStruct.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getUserStructListFirestoreData(
  List<UserStructStruct>? userStructs,
) =>
    userStructs?.map((e) => getUserStructFirestoreData(e, true)).toList() ?? [];
