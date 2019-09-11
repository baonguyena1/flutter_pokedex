import 'package:flutter/foundation.dart';

class ConfigProvider extends ChangeNotifier {
  bool _darkModeOn = false;

  bool get darkModeOn => _darkModeOn;
  
  setDarkMode(bool darkOn) {
    _darkModeOn = darkOn;
    notifyListeners();
  }
}