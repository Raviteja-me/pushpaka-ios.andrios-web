import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "age_year" field.
  int? _ageYear;
  int get ageYear => _ageYear ?? 0;
  bool hasAgeYear() => _ageYear != null;

  // "gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  bool hasGender() => _gender != null;

  // "last_active_time" field.
  DateTime? _lastActiveTime;
  DateTime? get lastActiveTime => _lastActiveTime;
  bool hasLastActiveTime() => _lastActiveTime != null;

  // "role" field.
  String? _role;
  String get role => _role ?? '';
  bool hasRole() => _role != null;

  // "userCorrentLocation" field.
  LatLng? _userCorrentLocation;
  LatLng? get userCorrentLocation => _userCorrentLocation;
  bool hasUserCorrentLocation() => _userCorrentLocation != null;

  // "status" field.
  bool? _status;
  bool get status => _status ?? false;
  bool hasStatus() => _status != null;

  // "oneClickRide" field.
  bool? _oneClickRide;
  bool get oneClickRide => _oneClickRide ?? false;
  bool hasOneClickRide() => _oneClickRide != null;

  // "isRider" field.
  bool? _isRider;
  bool get isRider => _isRider ?? false;
  bool hasIsRider() => _isRider != null;

  // "isWorking" field.
  bool? _isWorking;
  bool get isWorking => _isWorking ?? false;
  bool hasIsWorking() => _isWorking != null;

  // "isDriving" field.
  bool? _isDriving;
  bool get isDriving => _isDriving ?? false;
  bool hasIsDriving() => _isDriving != null;

  // "isVerified" field.
  bool? _isVerified;
  bool get isVerified => _isVerified ?? false;
  bool hasIsVerified() => _isVerified != null;

  // "riderCurrentLocation" field.
  LatLng? _riderCurrentLocation;
  LatLng? get riderCurrentLocation => _riderCurrentLocation;
  bool hasRiderCurrentLocation() => _riderCurrentLocation != null;

  // "riderVehicle" field.
  String? _riderVehicle;
  String get riderVehicle => _riderVehicle ?? '';
  bool hasRiderVehicle() => _riderVehicle != null;

  // "riderLastRideStatus" field.
  bool? _riderLastRideStatus;
  bool get riderLastRideStatus => _riderLastRideStatus ?? false;
  bool hasRiderLastRideStatus() => _riderLastRideStatus != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _ageYear = castToType<int>(snapshotData['age_year']);
    _gender = snapshotData['gender'] as String?;
    _lastActiveTime = snapshotData['last_active_time'] as DateTime?;
    _role = snapshotData['role'] as String?;
    _userCorrentLocation = snapshotData['userCorrentLocation'] as LatLng?;
    _status = snapshotData['status'] as bool?;
    _oneClickRide = snapshotData['oneClickRide'] as bool?;
    _isRider = snapshotData['isRider'] as bool?;
    _isWorking = snapshotData['isWorking'] as bool?;
    _isDriving = snapshotData['isDriving'] as bool?;
    _isVerified = snapshotData['isVerified'] as bool?;
    _riderCurrentLocation = snapshotData['riderCurrentLocation'] as LatLng?;
    _riderVehicle = snapshotData['riderVehicle'] as String?;
    _riderLastRideStatus = snapshotData['riderLastRideStatus'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  int? ageYear,
  String? gender,
  DateTime? lastActiveTime,
  String? role,
  LatLng? userCorrentLocation,
  bool? status,
  bool? oneClickRide,
  bool? isRider,
  bool? isWorking,
  bool? isDriving,
  bool? isVerified,
  LatLng? riderCurrentLocation,
  String? riderVehicle,
  bool? riderLastRideStatus,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'age_year': ageYear,
      'gender': gender,
      'last_active_time': lastActiveTime,
      'role': role,
      'userCorrentLocation': userCorrentLocation,
      'status': status,
      'oneClickRide': oneClickRide,
      'isRider': isRider,
      'isWorking': isWorking,
      'isDriving': isDriving,
      'isVerified': isVerified,
      'riderCurrentLocation': riderCurrentLocation,
      'riderVehicle': riderVehicle,
      'riderLastRideStatus': riderLastRideStatus,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.ageYear == e2?.ageYear &&
        e1?.gender == e2?.gender &&
        e1?.lastActiveTime == e2?.lastActiveTime &&
        e1?.role == e2?.role &&
        e1?.userCorrentLocation == e2?.userCorrentLocation &&
        e1?.status == e2?.status &&
        e1?.oneClickRide == e2?.oneClickRide &&
        e1?.isRider == e2?.isRider &&
        e1?.isWorking == e2?.isWorking &&
        e1?.isDriving == e2?.isDriving &&
        e1?.isVerified == e2?.isVerified &&
        e1?.riderCurrentLocation == e2?.riderCurrentLocation &&
        e1?.riderVehicle == e2?.riderVehicle &&
        e1?.riderLastRideStatus == e2?.riderLastRideStatus;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.ageYear,
        e?.gender,
        e?.lastActiveTime,
        e?.role,
        e?.userCorrentLocation,
        e?.status,
        e?.oneClickRide,
        e?.isRider,
        e?.isWorking,
        e?.isDriving,
        e?.isVerified,
        e?.riderCurrentLocation,
        e?.riderVehicle,
        e?.riderLastRideStatus
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
