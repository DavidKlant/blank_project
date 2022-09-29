import 'package:flutter/foundation.dart';

class DevFunctions {
  static void log(String string) {
    if (kDebugMode) {
      print(string);
    }
  }
}
