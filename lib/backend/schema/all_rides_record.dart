import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AllRidesRecord extends FirestoreRecord {
  AllRidesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "pickUpLocation" field.
  LatLng? _pickUpLocation;
  LatLng? get pickUpLocation => _pickUpLocation;
  bool hasPickUpLocation() => _pickUpLocation != null;

  // "dropOffLocation" field.
  LatLng? _dropOffLocation;
  LatLng? get dropOffLocation => _dropOffLocation;
  bool hasDropOffLocation() => _dropOffLocation != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "distance" field.
  String? _distance;
  String get distance => _distance ?? '';
  bool hasDistance() => _distance != null;

  // "time_duration" field.
  String? _timeDuration;
  String get timeDuration => _timeDuration ?? '';
  bool hasTimeDuration() => _timeDuration != null;

  // "price" field.
  String? _price;
  String get price => _price ?? '';
  bool hasPrice() => _price != null;

  // "comments" field.
  String? _comments;
  String get comments => _comments ?? '';
  bool hasComments() => _comments != null;

  // "driverPhone" field.
  String? _driverPhone;
  String get driverPhone => _driverPhone ?? '';
  bool hasDriverPhone() => _driverPhone != null;

  // "userReqVehicle" field.
  String? _userReqVehicle;
  String get userReqVehicle => _userReqVehicle ?? '';
  bool hasUserReqVehicle() => _userReqVehicle != null;

  // "pickupString" field.
  String? _pickupString;
  String get pickupString => _pickupString ?? '';
  bool hasPickupString() => _pickupString != null;

  // "dropString" field.
  String? _dropString;
  String get dropString => _dropString ?? '';
  bool hasDropString() => _dropString != null;

  // "userPhone" field.
  String? _userPhone;
  String get userPhone => _userPhone ?? '';
  bool hasUserPhone() => _userPhone != null;

  // "riderlocation" field.
  LatLng? _riderlocation;
  LatLng? get riderlocation => _riderlocation;
  bool hasRiderlocation() => _riderlocation != null;

  // "userid" field.
  String? _userid;
  String get userid => _userid ?? '';
  bool hasUserid() => _userid != null;

  // "riderId" field.
  String? _riderId;
  String get riderId => _riderId ?? '';
  bool hasRiderId() => _riderId != null;

  // "nearbyRidersList" field.
  List<DocumentReference>? _nearbyRidersList;
  List<DocumentReference> get nearbyRidersList => _nearbyRidersList ?? const [];
  bool hasNearbyRidersList() => _nearbyRidersList != null;

  // "nearbyridesid" field.
  List<String>? _nearbyridesid;
  List<String> get nearbyridesid => _nearbyridesid ?? const [];
  bool hasNearbyridesid() => _nearbyridesid != null;

  // "exra20Id" field.
  List<String>? _exra20Id;
  List<String> get exra20Id => _exra20Id ?? const [];
  bool hasExra20Id() => _exra20Id != null;

  // "extra20List" field.
  List<DocumentReference>? _extra20List;
  List<DocumentReference> get extra20List => _extra20List ?? const [];
  bool hasExtra20List() => _extra20List != null;

  // "extra40id" field.
  List<String>? _extra40id;
  List<String> get extra40id => _extra40id ?? const [];
  bool hasExtra40id() => _extra40id != null;

  // "extra40RidersList" field.
  List<DocumentReference>? _extra40RidersList;
  List<DocumentReference> get extra40RidersList =>
      _extra40RidersList ?? const [];
  bool hasExtra40RidersList() => _extra40RidersList != null;

  // "extra60id" field.
  List<String>? _extra60id;
  List<String> get extra60id => _extra60id ?? const [];
  bool hasExtra60id() => _extra60id != null;

  // "extra60RidersList" field.
  List<DocumentReference>? _extra60RidersList;
  List<DocumentReference> get extra60RidersList =>
      _extra60RidersList ?? const [];
  bool hasExtra60RidersList() => _extra60RidersList != null;

  // "extra100id" field.
  List<String>? _extra100id;
  List<String> get extra100id => _extra100id ?? const [];
  bool hasExtra100id() => _extra100id != null;

  // "extra100RidersList" field.
  DocumentReference? _extra100RidersList;
  DocumentReference? get extra100RidersList => _extra100RidersList;
  bool hasExtra100RidersList() => _extra100RidersList != null;

  // "userreference" field.
  DocumentReference? _userreference;
  DocumentReference? get userreference => _userreference;
  bool hasUserreference() => _userreference != null;

  // "conformedriderReference" field.
  DocumentReference? _conformedriderReference;
  DocumentReference? get conformedriderReference => _conformedriderReference;
  bool hasConformedriderReference() => _conformedriderReference != null;

  // "extraTip" field.
  double? _extraTip;
  double get extraTip => _extraTip ?? 0.0;
  bool hasExtraTip() => _extraTip != null;

  // "fine" field.
  double? _fine;
  double get fine => _fine ?? 0.0;
  bool hasFine() => _fine != null;

  // "userComplient" field.
  String? _userComplient;
  String get userComplient => _userComplient ?? '';
  bool hasUserComplient() => _userComplient != null;

  // "compliant" field.
  bool? _compliant;
  bool get compliant => _compliant ?? false;
  bool hasCompliant() => _compliant != null;

  // "timeCreated" field.
  DateTime? _timeCreated;
  DateTime? get timeCreated => _timeCreated;
  bool hasTimeCreated() => _timeCreated != null;

  void _initializeFields() {
    _pickUpLocation = snapshotData['pickUpLocation'] as LatLng?;
    _dropOffLocation = snapshotData['dropOffLocation'] as LatLng?;
    _status = snapshotData['status'] as String?;
    _distance = snapshotData['distance'] as String?;
    _timeDuration = snapshotData['time_duration'] as String?;
    _price = snapshotData['price'] as String?;
    _comments = snapshotData['comments'] as String?;
    _driverPhone = snapshotData['driverPhone'] as String?;
    _userReqVehicle = snapshotData['userReqVehicle'] as String?;
    _pickupString = snapshotData['pickupString'] as String?;
    _dropString = snapshotData['dropString'] as String?;
    _userPhone = snapshotData['userPhone'] as String?;
    _riderlocation = snapshotData['riderlocation'] as LatLng?;
    _userid = snapshotData['userid'] as String?;
    _riderId = snapshotData['riderId'] as String?;
    _nearbyRidersList = getDataList(snapshotData['nearbyRidersList']);
    _nearbyridesid = getDataList(snapshotData['nearbyridesid']);
    _exra20Id = getDataList(snapshotData['exra20Id']);
    _extra20List = getDataList(snapshotData['extra20List']);
    _extra40id = getDataList(snapshotData['extra40id']);
    _extra40RidersList = getDataList(snapshotData['extra40RidersList']);
    _extra60id = getDataList(snapshotData['extra60id']);
    _extra60RidersList = getDataList(snapshotData['extra60RidersList']);
    _extra100id = getDataList(snapshotData['extra100id']);
    _extra100RidersList =
        snapshotData['extra100RidersList'] as DocumentReference?;
    _userreference = snapshotData['userreference'] as DocumentReference?;
    _conformedriderReference =
        snapshotData['conformedriderReference'] as DocumentReference?;
    _extraTip = castToType<double>(snapshotData['extraTip']);
    _fine = castToType<double>(snapshotData['fine']);
    _userComplient = snapshotData['userComplient'] as String?;
    _compliant = snapshotData['compliant'] as bool?;
    _timeCreated = snapshotData['timeCreated'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('allRides');

  static Stream<AllRidesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AllRidesRecord.fromSnapshot(s));

  static Future<AllRidesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AllRidesRecord.fromSnapshot(s));

  static AllRidesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AllRidesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AllRidesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AllRidesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AllRidesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AllRidesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAllRidesRecordData({
  LatLng? pickUpLocation,
  LatLng? dropOffLocation,
  String? status,
  String? distance,
  String? timeDuration,
  String? price,
  String? comments,
  String? driverPhone,
  String? userReqVehicle,
  String? pickupString,
  String? dropString,
  String? userPhone,
  LatLng? riderlocation,
  String? userid,
  String? riderId,
  DocumentReference? extra100RidersList,
  DocumentReference? userreference,
  DocumentReference? conformedriderReference,
  double? extraTip,
  double? fine,
  String? userComplient,
  bool? compliant,
  DateTime? timeCreated,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'pickUpLocation': pickUpLocation,
      'dropOffLocation': dropOffLocation,
      'status': status,
      'distance': distance,
      'time_duration': timeDuration,
      'price': price,
      'comments': comments,
      'driverPhone': driverPhone,
      'userReqVehicle': userReqVehicle,
      'pickupString': pickupString,
      'dropString': dropString,
      'userPhone': userPhone,
      'riderlocation': riderlocation,
      'userid': userid,
      'riderId': riderId,
      'extra100RidersList': extra100RidersList,
      'userreference': userreference,
      'conformedriderReference': conformedriderReference,
      'extraTip': extraTip,
      'fine': fine,
      'userComplient': userComplient,
      'compliant': compliant,
      'timeCreated': timeCreated,
    }.withoutNulls,
  );

  return firestoreData;
}

class AllRidesRecordDocumentEquality implements Equality<AllRidesRecord> {
  const AllRidesRecordDocumentEquality();

  @override
  bool equals(AllRidesRecord? e1, AllRidesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.pickUpLocation == e2?.pickUpLocation &&
        e1?.dropOffLocation == e2?.dropOffLocation &&
        e1?.status == e2?.status &&
        e1?.distance == e2?.distance &&
        e1?.timeDuration == e2?.timeDuration &&
        e1?.price == e2?.price &&
        e1?.comments == e2?.comments &&
        e1?.driverPhone == e2?.driverPhone &&
        e1?.userReqVehicle == e2?.userReqVehicle &&
        e1?.pickupString == e2?.pickupString &&
        e1?.dropString == e2?.dropString &&
        e1?.userPhone == e2?.userPhone &&
        e1?.riderlocation == e2?.riderlocation &&
        e1?.userid == e2?.userid &&
        e1?.riderId == e2?.riderId &&
        listEquality.equals(e1?.nearbyRidersList, e2?.nearbyRidersList) &&
        listEquality.equals(e1?.nearbyridesid, e2?.nearbyridesid) &&
        listEquality.equals(e1?.exra20Id, e2?.exra20Id) &&
        listEquality.equals(e1?.extra20List, e2?.extra20List) &&
        listEquality.equals(e1?.extra40id, e2?.extra40id) &&
        listEquality.equals(e1?.extra40RidersList, e2?.extra40RidersList) &&
        listEquality.equals(e1?.extra60id, e2?.extra60id) &&
        listEquality.equals(e1?.extra60RidersList, e2?.extra60RidersList) &&
        listEquality.equals(e1?.extra100id, e2?.extra100id) &&
        e1?.extra100RidersList == e2?.extra100RidersList &&
        e1?.userreference == e2?.userreference &&
        e1?.conformedriderReference == e2?.conformedriderReference &&
        e1?.extraTip == e2?.extraTip &&
        e1?.fine == e2?.fine &&
        e1?.userComplient == e2?.userComplient &&
        e1?.compliant == e2?.compliant &&
        e1?.timeCreated == e2?.timeCreated;
  }

  @override
  int hash(AllRidesRecord? e) => const ListEquality().hash([
        e?.pickUpLocation,
        e?.dropOffLocation,
        e?.status,
        e?.distance,
        e?.timeDuration,
        e?.price,
        e?.comments,
        e?.driverPhone,
        e?.userReqVehicle,
        e?.pickupString,
        e?.dropString,
        e?.userPhone,
        e?.riderlocation,
        e?.userid,
        e?.riderId,
        e?.nearbyRidersList,
        e?.nearbyridesid,
        e?.exra20Id,
        e?.extra20List,
        e?.extra40id,
        e?.extra40RidersList,
        e?.extra60id,
        e?.extra60RidersList,
        e?.extra100id,
        e?.extra100RidersList,
        e?.userreference,
        e?.conformedriderReference,
        e?.extraTip,
        e?.fine,
        e?.userComplient,
        e?.compliant,
        e?.timeCreated
      ]);

  @override
  bool isValidKey(Object? o) => o is AllRidesRecord;
}
