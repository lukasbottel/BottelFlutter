import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
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

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  bool _cat1 = true;
  bool get cat1 => _cat1;
  set cat1(bool _value) {
    _cat1 = _value;
  }

  bool _cat2 = false;
  bool get cat2 => _cat2;
  set cat2(bool _value) {
    _cat2 = _value;
  }

  bool _cat3 = false;
  bool get cat3 => _cat3;
  set cat3(bool _value) {
    _cat3 = _value;
  }

  bool _cat4 = false;
  bool get cat4 => _cat4;
  set cat4(bool _value) {
    _cat4 = _value;
  }

  bool _cat5 = false;
  bool get cat5 => _cat5;
  set cat5(bool _value) {
    _cat5 = _value;
  }

  bool _red = true;
  bool get red => _red;
  set red(bool _value) {
    _red = _value;
  }
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
