// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class UsersStruct extends FFFirebaseStruct {
  UsersStruct({
    String? email,
    String? userid,
    DateTime? createTime,
    String? displayName,
    String? photoUrl,
    int? phonenumber,
    int? ageYear,
    String? gender,
    String? role,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _email = email,
        _userid = userid,
        _createTime = createTime,
        _displayName = displayName,
        _photoUrl = photoUrl,
        _phonenumber = phonenumber,
        _ageYear = ageYear,
        _gender = gender,
        _role = role,
        super(firestoreUtilData);

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "userid" field.
  String? _userid;
  String get userid => _userid ?? '';
  set userid(String? val) => _userid = val;

  bool hasUserid() => _userid != null;

  // "createTime" field.
  DateTime? _createTime;
  DateTime? get createTime => _createTime;
  set createTime(DateTime? val) => _createTime = val;

  bool hasCreateTime() => _createTime != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  set displayName(String? val) => _displayName = val;

  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  set photoUrl(String? val) => _photoUrl = val;

  bool hasPhotoUrl() => _photoUrl != null;

  // "phonenumber" field.
  int? _phonenumber;
  int get phonenumber => _phonenumber ?? 0;
  set phonenumber(int? val) => _phonenumber = val;

  void incrementPhonenumber(int amount) => phonenumber = phonenumber + amount;

  bool hasPhonenumber() => _phonenumber != null;

  // "age_year" field.
  int? _ageYear;
  int get ageYear => _ageYear ?? 0;
  set ageYear(int? val) => _ageYear = val;

  void incrementAgeYear(int amount) => ageYear = ageYear + amount;

  bool hasAgeYear() => _ageYear != null;

  // "gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  set gender(String? val) => _gender = val;

  bool hasGender() => _gender != null;

  // "role" field.
  String? _role;
  String get role => _role ?? '';
  set role(String? val) => _role = val;

  bool hasRole() => _role != null;

  static UsersStruct fromMap(Map<String, dynamic> data) => UsersStruct(
        email: data['email'] as String?,
        userid: data['userid'] as String?,
        createTime: data['createTime'] as DateTime?,
        displayName: data['display_name'] as String?,
        photoUrl: data['photo_url'] as String?,
        phonenumber: castToType<int>(data['phonenumber']),
        ageYear: castToType<int>(data['age_year']),
        gender: data['gender'] as String?,
        role: data['role'] as String?,
      );

  static UsersStruct? maybeFromMap(dynamic data) =>
      data is Map ? UsersStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'email': _email,
        'userid': _userid,
        'createTime': _createTime,
        'display_name': _displayName,
        'photo_url': _photoUrl,
        'phonenumber': _phonenumber,
        'age_year': _ageYear,
        'gender': _gender,
        'role': _role,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'userid': serializeParam(
          _userid,
          ParamType.String,
        ),
        'createTime': serializeParam(
          _createTime,
          ParamType.DateTime,
        ),
        'display_name': serializeParam(
          _displayName,
          ParamType.String,
        ),
        'photo_url': serializeParam(
          _photoUrl,
          ParamType.String,
        ),
        'phonenumber': serializeParam(
          _phonenumber,
          ParamType.int,
        ),
        'age_year': serializeParam(
          _ageYear,
          ParamType.int,
        ),
        'gender': serializeParam(
          _gender,
          ParamType.String,
        ),
        'role': serializeParam(
          _role,
          ParamType.String,
        ),
      }.withoutNulls;

  static UsersStruct fromSerializableMap(Map<String, dynamic> data) =>
      UsersStruct(
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        userid: deserializeParam(
          data['userid'],
          ParamType.String,
          false,
        ),
        createTime: deserializeParam(
          data['createTime'],
          ParamType.DateTime,
          false,
        ),
        displayName: deserializeParam(
          data['display_name'],
          ParamType.String,
          false,
        ),
        photoUrl: deserializeParam(
          data['photo_url'],
          ParamType.String,
          false,
        ),
        phonenumber: deserializeParam(
          data['phonenumber'],
          ParamType.int,
          false,
        ),
        ageYear: deserializeParam(
          data['age_year'],
          ParamType.int,
          false,
        ),
        gender: deserializeParam(
          data['gender'],
          ParamType.String,
          false,
        ),
        role: deserializeParam(
          data['role'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UsersStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UsersStruct &&
        email == other.email &&
        userid == other.userid &&
        createTime == other.createTime &&
        displayName == other.displayName &&
        photoUrl == other.photoUrl &&
        phonenumber == other.phonenumber &&
        ageYear == other.ageYear &&
        gender == other.gender &&
        role == other.role;
  }

  @override
  int get hashCode => const ListEquality().hash([
        email,
        userid,
        createTime,
        displayName,
        photoUrl,
        phonenumber,
        ageYear,
        gender,
        role
      ]);
}

UsersStruct createUsersStruct({
  String? email,
  String? userid,
  DateTime? createTime,
  String? displayName,
  String? photoUrl,
  int? phonenumber,
  int? ageYear,
  String? gender,
  String? role,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    UsersStruct(
      email: email,
      userid: userid,
      createTime: createTime,
      displayName: displayName,
      photoUrl: photoUrl,
      phonenumber: phonenumber,
      ageYear: ageYear,
      gender: gender,
      role: role,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

UsersStruct? updateUsersStruct(
  UsersStruct? users, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    users
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addUsersStructData(
  Map<String, dynamic> firestoreData,
  UsersStruct? users,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (users == null) {
    return;
  }
  if (users.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && users.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final usersData = getUsersFirestoreData(users, forFieldValue);
  final nestedData = usersData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = users.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getUsersFirestoreData(
  UsersStruct? users, [
  bool forFieldValue = false,
]) {
  if (users == null) {
    return {};
  }
  final firestoreData = mapToFirestore(users.toMap());

  // Add any Firestore field values
  users.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getUsersListFirestoreData(
  List<UsersStruct>? userss,
) =>
    userss?.map((e) => getUsersFirestoreData(e, true)).toList() ?? [];
