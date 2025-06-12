import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
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

  AdaptyProfileStruct _currentProfile = AdaptyProfileStruct.fromSerializableMap(
      jsonDecode(
          '{\"accessLevels\":\"[]\",\"profileId\":\"\",\"customerUserId\":\"\",\"nonsubscriptions\":\"[]\",\"subscriptions\":\"[]\"}'));
  AdaptyProfileStruct get currentProfile => _currentProfile;
  set currentProfile(AdaptyProfileStruct value) {
    _currentProfile = value;
  }

  void updateCurrentProfileStruct(Function(AdaptyProfileStruct) updateFn) {
    updateFn(_currentProfile);
  }
}
