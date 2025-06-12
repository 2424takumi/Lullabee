import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter/foundation.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';

import 'package:adapty_xtuel0/backend/schema/enums/enums.dart';
import 'package:adapty_xtuel0/backend/schema/structs/index.dart';
import 'package:adapty_xtuel0/app_constants.dart';

class FFLibraryValues {
  static FFLibraryValues _instance = FFLibraryValues._internal();

  factory FFLibraryValues() {
    return _instance;
  }

  FFLibraryValues._internal();

  static void reset() {
    _instance = FFLibraryValues._internal();
  }

  String AdaptyApiKey = 'YOUR_API_KEY';
}
