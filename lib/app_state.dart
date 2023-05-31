import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _localDarkOn = prefs.getBool('ff_localDarkOn') ?? _localDarkOn;
    _localEditProfileOn =
        prefs.getBool('ff_localEditProfileOn') ?? _localEditProfileOn;
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _localDarkOn = false;
  bool get localDarkOn => _localDarkOn;
  set localDarkOn(bool _value) {
    _localDarkOn = _value;
    prefs.setBool('ff_localDarkOn', _value);
  }

  bool _localEditProfileOn = false;
  bool get localEditProfileOn => _localEditProfileOn;
  set localEditProfileOn(bool _value) {
    _localEditProfileOn = _value;
    prefs.setBool('ff_localEditProfileOn', _value);
  }

  final _userProfilebyProfileIDManager = FutureRequestManager<UsersRecord>();
  Future<UsersRecord> userProfilebyProfileID({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<UsersRecord> Function() requestFn,
  }) =>
      _userProfilebyProfileIDManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearUserProfilebyProfileIDCache() =>
      _userProfilebyProfileIDManager.clear();
  void clearUserProfilebyProfileIDCacheKey(String? uniqueKey) =>
      _userProfilebyProfileIDManager.clearRequest(uniqueKey);
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
