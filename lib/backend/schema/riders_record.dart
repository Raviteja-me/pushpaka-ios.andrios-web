import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RidersRecord extends FirestoreRecord {
  RidersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "age_year" field.
  DateTime? _ageYear;
  DateTime? get ageYear => _ageYear;
  bool hasAgeYear() => _ageYear != null;

  // "verified" field.
  bool? _verified;
  bool get verified => _verified ?? false;
  bool hasVerified() => _verified != null;

  // "gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  bool hasGender() => _gender != null;

  // "adhar" field.
  String? _adhar;
  String get adhar => _adhar ?? '';
  bool hasAdhar() => _adhar != null;

  // "lisence" field.
  String? _lisence;
  String get lisence => _lisence ?? '';
  bool hasLisence() => _lisence != null;

  // "vehicleRegistration" field.
  String? _vehicleRegistration;
  String get vehicleRegistration => _vehicleRegistration ?? '';
  bool hasVehicleRegistration() => _vehicleRegistration != null;

  // "vehicleImage" field.
  String? _vehicleImage;
  String get vehicleImage => _vehicleImage ?? '';
  bool hasVehicleImage() => _vehicleImage != null;

  // "vehicleRegistrationImage" field.
  String? _vehicleRegistrationImage;
  String get vehicleRegistrationImage => _vehicleRegistrationImage ?? '';
  bool hasVehicleRegistrationImage() => _vehicleRegistrationImage != null;

  // "vehicle" field.
  String? _vehicle;
  String get vehicle => _vehicle ?? '';
  bool hasVehicle() => _vehicle != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "riderDocRef" field.
  DocumentReference? _riderDocRef;
  DocumentReference? get riderDocRef => _riderDocRef;
  bool hasRiderDocRef() => _riderDocRef != null;

  // "riderId" field.
  String? _riderId;
  String get riderId => _riderId ?? '';
  bool hasRiderId() => _riderId != null;

  // "whatsappnumber" field.
  String? _whatsappnumber;
  String get whatsappnumber => _whatsappnumber ?? '';
  bool hasWhatsappnumber() => _whatsappnumber != null;

  // "experience" field.
  String? _experience;
  String get experience => _experience ?? '';
  bool hasExperience() => _experience != null;

  // "emergencyContactName" field.
  String? _emergencyContactName;
  String get emergencyContactName => _emergencyContactName ?? '';
  bool hasEmergencyContactName() => _emergencyContactName != null;

  // "emergencyContactNumber" field.
  String? _emergencyContactNumber;
  String get emergencyContactNumber => _emergencyContactNumber ?? '';
  bool hasEmergencyContactNumber() => _emergencyContactNumber != null;

  // "lifeInsurence" field.
  bool? _lifeInsurence;
  bool get lifeInsurence => _lifeInsurence ?? false;
  bool hasLifeInsurence() => _lifeInsurence != null;

  // "vehicleModel" field.
  String? _vehicleModel;
  String get vehicleModel => _vehicleModel ?? '';
  bool hasVehicleModel() => _vehicleModel != null;

  // "vehicleInsurence" field.
  String? _vehicleInsurence;
  String get vehicleInsurence => _vehicleInsurence ?? '';
  bool hasVehicleInsurence() => _vehicleInsurence != null;

  // "riderLisence" field.
  String? _riderLisence;
  String get riderLisence => _riderLisence ?? '';
  bool hasRiderLisence() => _riderLisence != null;

  // "adharFrount" field.
  String? _adharFrount;
  String get adharFrount => _adharFrount ?? '';
  bool hasAdharFrount() => _adharFrount != null;

  // "adharBack" field.
  String? _adharBack;
  String get adharBack => _adharBack ?? '';
  bool hasAdharBack() => _adharBack != null;

  // "riderAdress" field.
  String? _riderAdress;
  String get riderAdress => _riderAdress ?? '';
  bool hasRiderAdress() => _riderAdress != null;

  // "riderCity" field.
  String? _riderCity;
  String get riderCity => _riderCity ?? '';
  bool hasRiderCity() => _riderCity != null;

  // "riderPincode" field.
  int? _riderPincode;
  int get riderPincode => _riderPincode ?? 0;
  bool hasRiderPincode() => _riderPincode != null;

  // "riderState" field.
  String? _riderState;
  String get riderState => _riderState ?? '';
  bool hasRiderState() => _riderState != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _ageYear = snapshotData['age_year'] as DateTime?;
    _verified = snapshotData['verified'] as bool?;
    _gender = snapshotData['gender'] as String?;
    _adhar = snapshotData['adhar'] as String?;
    _lisence = snapshotData['lisence'] as String?;
    _vehicleRegistration = snapshotData['vehicleRegistration'] as String?;
    _vehicleImage = snapshotData['vehicleImage'] as String?;
    _vehicleRegistrationImage =
        snapshotData['vehicleRegistrationImage'] as String?;
    _vehicle = snapshotData['vehicle'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _riderDocRef = snapshotData['riderDocRef'] as DocumentReference?;
    _riderId = snapshotData['riderId'] as String?;
    _whatsappnumber = snapshotData['whatsappnumber'] as String?;
    _experience = snapshotData['experience'] as String?;
    _emergencyContactName = snapshotData['emergencyContactName'] as String?;
    _emergencyContactNumber = snapshotData['emergencyContactNumber'] as String?;
    _lifeInsurence = snapshotData['lifeInsurence'] as bool?;
    _vehicleModel = snapshotData['vehicleModel'] as String?;
    _vehicleInsurence = snapshotData['vehicleInsurence'] as String?;
    _riderLisence = snapshotData['riderLisence'] as String?;
    _adharFrount = snapshotData['adharFrount'] as String?;
    _adharBack = snapshotData['adharBack'] as String?;
    _riderAdress = snapshotData['riderAdress'] as String?;
    _riderCity = snapshotData['riderCity'] as String?;
    _riderPincode = castToType<int>(snapshotData['riderPincode']);
    _riderState = snapshotData['riderState'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('riders');

  static Stream<RidersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RidersRecord.fromSnapshot(s));

  static Future<RidersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RidersRecord.fromSnapshot(s));

  static RidersRecord fromSnapshot(DocumentSnapshot snapshot) => RidersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RidersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RidersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RidersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RidersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRidersRecordData({
  String? email,
  DateTime? createdTime,
  DateTime? ageYear,
  bool? verified,
  String? gender,
  String? adhar,
  String? lisence,
  String? vehicleRegistration,
  String? vehicleImage,
  String? vehicleRegistrationImage,
  String? vehicle,
  String? displayName,
  String? photoUrl,
  DocumentReference? riderDocRef,
  String? riderId,
  String? whatsappnumber,
  String? experience,
  String? emergencyContactName,
  String? emergencyContactNumber,
  bool? lifeInsurence,
  String? vehicleModel,
  String? vehicleInsurence,
  String? riderLisence,
  String? adharFrount,
  String? adharBack,
  String? riderAdress,
  String? riderCity,
  int? riderPincode,
  String? riderState,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'created_time': createdTime,
      'age_year': ageYear,
      'verified': verified,
      'gender': gender,
      'adhar': adhar,
      'lisence': lisence,
      'vehicleRegistration': vehicleRegistration,
      'vehicleImage': vehicleImage,
      'vehicleRegistrationImage': vehicleRegistrationImage,
      'vehicle': vehicle,
      'display_name': displayName,
      'photo_url': photoUrl,
      'riderDocRef': riderDocRef,
      'riderId': riderId,
      'whatsappnumber': whatsappnumber,
      'experience': experience,
      'emergencyContactName': emergencyContactName,
      'emergencyContactNumber': emergencyContactNumber,
      'lifeInsurence': lifeInsurence,
      'vehicleModel': vehicleModel,
      'vehicleInsurence': vehicleInsurence,
      'riderLisence': riderLisence,
      'adharFrount': adharFrount,
      'adharBack': adharBack,
      'riderAdress': riderAdress,
      'riderCity': riderCity,
      'riderPincode': riderPincode,
      'riderState': riderState,
    }.withoutNulls,
  );

  return firestoreData;
}

class RidersRecordDocumentEquality implements Equality<RidersRecord> {
  const RidersRecordDocumentEquality();

  @override
  bool equals(RidersRecord? e1, RidersRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.createdTime == e2?.createdTime &&
        e1?.ageYear == e2?.ageYear &&
        e1?.verified == e2?.verified &&
        e1?.gender == e2?.gender &&
        e1?.adhar == e2?.adhar &&
        e1?.lisence == e2?.lisence &&
        e1?.vehicleRegistration == e2?.vehicleRegistration &&
        e1?.vehicleImage == e2?.vehicleImage &&
        e1?.vehicleRegistrationImage == e2?.vehicleRegistrationImage &&
        e1?.vehicle == e2?.vehicle &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.riderDocRef == e2?.riderDocRef &&
        e1?.riderId == e2?.riderId &&
        e1?.whatsappnumber == e2?.whatsappnumber &&
        e1?.experience == e2?.experience &&
        e1?.emergencyContactName == e2?.emergencyContactName &&
        e1?.emergencyContactNumber == e2?.emergencyContactNumber &&
        e1?.lifeInsurence == e2?.lifeInsurence &&
        e1?.vehicleModel == e2?.vehicleModel &&
        e1?.vehicleInsurence == e2?.vehicleInsurence &&
        e1?.riderLisence == e2?.riderLisence &&
        e1?.adharFrount == e2?.adharFrount &&
        e1?.adharBack == e2?.adharBack &&
        e1?.riderAdress == e2?.riderAdress &&
        e1?.riderCity == e2?.riderCity &&
        e1?.riderPincode == e2?.riderPincode &&
        e1?.riderState == e2?.riderState;
  }

  @override
  int hash(RidersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.createdTime,
        e?.ageYear,
        e?.verified,
        e?.gender,
        e?.adhar,
        e?.lisence,
        e?.vehicleRegistration,
        e?.vehicleImage,
        e?.vehicleRegistrationImage,
        e?.vehicle,
        e?.displayName,
        e?.photoUrl,
        e?.riderDocRef,
        e?.riderId,
        e?.whatsappnumber,
        e?.experience,
        e?.emergencyContactName,
        e?.emergencyContactNumber,
        e?.lifeInsurence,
        e?.vehicleModel,
        e?.vehicleInsurence,
        e?.riderLisence,
        e?.adharFrount,
        e?.adharBack,
        e?.riderAdress,
        e?.riderCity,
        e?.riderPincode,
        e?.riderState
      ]);

  @override
  bool isValidKey(Object? o) => o is RidersRecord;
}
