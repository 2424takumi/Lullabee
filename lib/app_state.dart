import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';

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

  bool _button = false;
  bool get button => _button;
  set button(bool value) {
    _button = value;
  }

  Color _buttonColor = Color(4294964947);
  Color get buttonColor => _buttonColor;
  set buttonColor(Color value) {
    _buttonColor = value;
  }

  Position? _position = Position.noPosition;
  Position? get position => _position;
  set position(Position? value) {
    _position = value;
  }

  /// オンボーディングで使用する名前の一時保存
  String _MyName = '';
  String get MyName => _MyName;
  set MyName(String value) {
    _MyName = value;
  }

  /// オンボーディングで使用する子供の名前の一時保存
  List<String> _childrensName = [];
  List<String> get childrensName => _childrensName;
  set childrensName(List<String> value) {
    _childrensName = value;
  }

  void addToChildrensName(String value) {
    childrensName.add(value);
  }

  void removeFromChildrensName(String value) {
    childrensName.remove(value);
  }

  void removeAtIndexFromChildrensName(int index) {
    childrensName.removeAt(index);
  }

  void updateChildrensNameAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    childrensName[index] = updateFn(_childrensName[index]);
  }

  void insertAtIndexInChildrensName(int index, String value) {
    childrensName.insert(index, value);
  }

  String _uuid = '';
  String get uuid => _uuid;
  set uuid(String value) {
    _uuid = value;
  }

  bool _isRecordingState = false;
  bool get isRecordingState => _isRecordingState;
  set isRecordingState(bool value) {
    _isRecordingState = value;
  }

  /// 曲を再生中
  bool _audioPlaying = false;
  bool get audioPlaying => _audioPlaying;
  set audioPlaying(bool value) {
    _audioPlaying = value;
  }

  /// 再生中の音声
  DocumentReference? _playingAudio;
  DocumentReference? get playingAudio => _playingAudio;
  set playingAudio(DocumentReference? value) {
    _playingAudio = value;
  }

  /// 流れている音声のURL
  String _currentAudioUrl = '';
  String get currentAudioUrl => _currentAudioUrl;
  set currentAudioUrl(String value) {
    _currentAudioUrl = value;
  }

  /// 再生中の音声のタイトル
  String _currentTitle = '';
  String get currentTitle => _currentTitle;
  set currentTitle(String value) {
    _currentTitle = value;
  }
}

Color? _colorFromIntValue(int? val) {
  if (val == null) {
    return null;
  }
  return Color(val);
}
