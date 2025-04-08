import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    secureStorage = FlutterSecureStorage();
    await _safeInitAsync(() async {
      _ApiKeyAuth =
          await secureStorage.getString('ff_ApiKeyAuth') ?? _ApiKeyAuth;
    });
    await _safeInitAsync(() async {
      _language = await secureStorage.getString('ff_language') ?? _language;
    });
    await _safeInitAsync(() async {
      _pickup = latLngFromString(await secureStorage.getString('ff_pickup')) ??
          _pickup;
    });
    await _safeInitAsync(() async {
      _drop =
          latLngFromString(await secureStorage.getString('ff_drop')) ?? _drop;
    });
    await _safeInitAsync(() async {
      _activeRide = await secureStorage.getBool('ff_activeRide') ?? _activeRide;
    });
    await _safeInitAsync(() async {
      _requestedVehicle =
          await secureStorage.getString('ff_requestedVehicle') ??
              _requestedVehicle;
    });
    await _safeInitAsync(() async {
      _isVerified = await secureStorage.getBool('ff_isVerified') ?? _isVerified;
    });
    await _safeInitAsync(() async {
      _isRider = await secureStorage.getBool('ff_isRider') ?? _isRider;
    });
    await _safeInitAsync(() async {
      _isDriving = await secureStorage.getString('ff_isDriving') ?? _isDriving;
    });
    await _safeInitAsync(() async {
      _phone = await secureStorage.getString('ff_phone') ?? _phone;
    });
    await _safeInitAsync(() async {
      _policyAccepted =
          await secureStorage.getBool('ff_policyAccepted') ?? _policyAccepted;
    });
    await _safeInitAsync(() async {
      _isOneClickRide =
          await secureStorage.getBool('ff_isOneClickRide') ?? _isOneClickRide;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  String _gender = '';
  String get gender => _gender;
  set gender(String value) {
    _gender = value;
  }

  String _rideStatus = '';
  String get rideStatus => _rideStatus;
  set rideStatus(String value) {
    _rideStatus = value;
  }

  String _speechToTextResponse = '';
  String get speechToTextResponse => _speechToTextResponse;
  set speechToTextResponse(String value) {
    _speechToTextResponse = value;
  }

  String _ApiKeyAuth = '';
  String get ApiKeyAuth => _ApiKeyAuth;
  set ApiKeyAuth(String value) {
    _ApiKeyAuth = value;
    secureStorage.setString('ff_ApiKeyAuth', value);
  }

  void deleteApiKeyAuth() {
    secureStorage.delete(key: 'ff_ApiKeyAuth');
  }

  String _language = 'English';
  String get language => _language;
  set language(String value) {
    _language = value;
    secureStorage.setString('ff_language', value);
  }

  void deleteLanguage() {
    secureStorage.delete(key: 'ff_language');
  }

  LatLng? _pickup = LatLng(14.63117, 77.626124);
  LatLng? get pickup => _pickup;
  set pickup(LatLng? value) {
    _pickup = value;
    value != null
        ? secureStorage.setString('ff_pickup', value.serialize())
        : secureStorage.remove('ff_pickup');
  }

  void deletePickup() {
    secureStorage.delete(key: 'ff_pickup');
  }

  LatLng? _drop = LatLng(14.6859237, 77.6008045);
  LatLng? get drop => _drop;
  set drop(LatLng? value) {
    _drop = value;
    value != null
        ? secureStorage.setString('ff_drop', value.serialize())
        : secureStorage.remove('ff_drop');
  }

  void deleteDrop() {
    secureStorage.delete(key: 'ff_drop');
  }

  String _routeDistance = '';
  String get routeDistance => _routeDistance;
  set routeDistance(String value) {
    _routeDistance = value;
  }

  String _routeDuration = '';
  String get routeDuration => _routeDuration;
  set routeDuration(String value) {
    _routeDuration = value;
  }

  String _pickupString = '';
  String get pickupString => _pickupString;
  set pickupString(String value) {
    _pickupString = value;
  }

  String _dropString = '';
  String get dropString => _dropString;
  set dropString(String value) {
    _dropString = value;
  }

  bool _activeRide = false;
  bool get activeRide => _activeRide;
  set activeRide(bool value) {
    _activeRide = value;
    secureStorage.setBool('ff_activeRide', value);
  }

  void deleteActiveRide() {
    secureStorage.delete(key: 'ff_activeRide');
  }

  String _requestedVehicle = '';
  String get requestedVehicle => _requestedVehicle;
  set requestedVehicle(String value) {
    _requestedVehicle = value;
    secureStorage.setString('ff_requestedVehicle', value);
  }

  void deleteRequestedVehicle() {
    secureStorage.delete(key: 'ff_requestedVehicle');
  }

  DateTime? _date = DateTime.fromMillisecondsSinceEpoch(1730677380000);
  DateTime? get date => _date;
  set date(DateTime? value) {
    _date = value;
  }

  bool _isVerified = false;
  bool get isVerified => _isVerified;
  set isVerified(bool value) {
    _isVerified = value;
    secureStorage.setBool('ff_isVerified', value);
  }

  void deleteIsVerified() {
    secureStorage.delete(key: 'ff_isVerified');
  }

  bool _isRider = false;
  bool get isRider => _isRider;
  set isRider(bool value) {
    _isRider = value;
    secureStorage.setBool('ff_isRider', value);
  }

  void deleteIsRider() {
    secureStorage.delete(key: 'ff_isRider');
  }

  bool _isWorking = false;
  bool get isWorking => _isWorking;
  set isWorking(bool value) {
    _isWorking = value;
  }

  String _isDriving = '';
  String get isDriving => _isDriving;
  set isDriving(String value) {
    _isDriving = value;
    secureStorage.setString('ff_isDriving', value);
  }

  void deleteIsDriving() {
    secureStorage.delete(key: 'ff_isDriving');
  }

  String _riderVehicle = 'bike';
  String get riderVehicle => _riderVehicle;
  set riderVehicle(String value) {
    _riderVehicle = value;
  }

  String _phone = '';
  String get phone => _phone;
  set phone(String value) {
    _phone = value;
    secureStorage.setString('ff_phone', value);
  }

  void deletePhone() {
    secureStorage.delete(key: 'ff_phone');
  }

  bool _policyAccepted = false;
  bool get policyAccepted => _policyAccepted;
  set policyAccepted(bool value) {
    _policyAccepted = value;
    secureStorage.setBool('ff_policyAccepted', value);
  }

  void deletePolicyAccepted() {
    secureStorage.delete(key: 'ff_policyAccepted');
  }

  bool _isOneClickRide = false;
  bool get isOneClickRide => _isOneClickRide;
  set isOneClickRide(bool value) {
    _isOneClickRide = value;
    secureStorage.setBool('ff_isOneClickRide', value);
  }

  void deleteIsOneClickRide() {
    secureStorage.delete(key: 'ff_isOneClickRide');
  }

  List<String> _pickupAddresses = [];
  List<String> get pickupAddresses => _pickupAddresses;
  set pickupAddresses(List<String> value) {
    _pickupAddresses = value;
  }

  void addToPickupAddresses(String value) {
    pickupAddresses.add(value);
  }

  void removeFromPickupAddresses(String value) {
    pickupAddresses.remove(value);
  }

  void removeAtIndexFromPickupAddresses(int index) {
    pickupAddresses.removeAt(index);
  }

  void updatePickupAddressesAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    pickupAddresses[index] = updateFn(_pickupAddresses[index]);
  }

  void insertAtIndexInPickupAddresses(int index, String value) {
    pickupAddresses.insert(index, value);
  }

  List<LatLng> _pickupLatLng = [];
  List<LatLng> get pickupLatLng => _pickupLatLng;
  set pickupLatLng(List<LatLng> value) {
    _pickupLatLng = value;
  }

  void addToPickupLatLng(LatLng value) {
    pickupLatLng.add(value);
  }

  void removeFromPickupLatLng(LatLng value) {
    pickupLatLng.remove(value);
  }

  void removeAtIndexFromPickupLatLng(int index) {
    pickupLatLng.removeAt(index);
  }

  void updatePickupLatLngAtIndex(
    int index,
    LatLng Function(LatLng) updateFn,
  ) {
    pickupLatLng[index] = updateFn(_pickupLatLng[index]);
  }

  void insertAtIndexInPickupLatLng(int index, LatLng value) {
    pickupLatLng.insert(index, value);
  }

  String _price = '';
  String get price => _price;
  set price(String value) {
    _price = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: ListToCsvConverter().convert([value]));
}
