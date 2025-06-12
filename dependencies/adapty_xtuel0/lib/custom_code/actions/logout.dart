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

Future<AdaptyErrorStruct?> logout() async {
  try {
    await Adapty().logout();
    return null;
  } on AdaptyError catch (adaptyError) {
    return adaptyError.toFFStruct();
  } catch (e) {
    return AdaptyErrorStruct(
      errorCode: 0,
      errorMessage: e.toString(),
    );
  }
}
