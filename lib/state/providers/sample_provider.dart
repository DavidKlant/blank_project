import 'package:flutter/material.dart';

class SampleProvider extends ChangeNotifier {
  String _sampleData = "Sample Data";

  SampleProvider();

  set sampleData(String value) {
    _sampleData = sampleData;
    notifyListeners();
  }

  String get sampleData {
    return _sampleData;
  }
}
