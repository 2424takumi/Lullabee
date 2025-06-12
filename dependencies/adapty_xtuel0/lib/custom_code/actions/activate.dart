// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:adapty_flutter/adapty_flutter.dart';
import '/custom_code/actions/get_profile.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:io' show Platform;

Future activate() async {
  final adapty = Adapty();
  final apiKeyValue = FFLibraryValues().AdaptyApiKey;

  adapty.setLogLevel(AdaptyLogLevel.verbose);
  adapty.activate(apiKey: apiKeyValue);

  adapty.didUpdateProfileStream.listen(
    (profile) => _updateCurrentProfileState(profile),
  );

  // Don't need to wait the result, so no await here
  _setFallbackPaywalls();
  _fetchInitialProfile();
}

Future _fetchInitialProfile() async {
  try {
    final profile = await Adapty().getProfile();
    _updateCurrentProfileState(profile);
  } catch (e) {
    // TODO: Log error?
  }
}

void _updateCurrentProfileState(AdaptyProfile profile) {
  FFAppState().update(
    () => FFAppState().currentProfile = profile.toFFStruct(),
  );
}

Future<void> _setFallbackPaywalls() async {
  try {
    final filePath = Platform.isIOS
        ? 'assets/lottie_animations/adapty_fallback_ios.json'
        : 'assets/lottie_animations/adapty_fallback_android.json';
    final jsonString = await rootBundle.loadString(filePath);

    await Adapty().setFallbackPaywalls(jsonString);
  } catch (e) {
    print('setFallbackPaywalls ${e}');
  }
}
