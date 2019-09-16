import 'package:rxdart/rxdart.dart';
import 'package:rxdart/subjects.dart';

abstract class BlocBase {
  void dispose();
}

abstract class ConfigEventBlocing {
  BehaviorSubject<bool> _darkModeSubject;
  ValueObservable<bool> get darkMode;
  void changeDarkMode(bool darkMode);
}

class ConfigEventBloc extends ConfigEventBlocing implements BlocBase {
  BehaviorSubject<bool> _darkModeSubject;
  ValueObservable<bool> get darkMode => _darkModeSubject.stream;

  ConfigEventBloc()
      : this._darkModeSubject = BehaviorSubject<bool>.seeded(false);

  @override
  void dispose() {
    _darkModeSubject.close();
  }

  @override
  void changeDarkMode(bool darkMode) {
    _darkModeSubject.sink.add(darkMode);
  }
}
