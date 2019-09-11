import 'dart:async';
import 'package:meta/meta.dart';
import 'package:pokedex/providers/config_provider.dart';

@immutable
abstract class ConfigEvent {
  Future<void> apply(bool darkOn);
}

class DarkModeEvent extends ConfigEvent {
  final ConfigProvider config;
  DarkModeEvent(this.config);

  @override
  String toString() => 'DarkModeEvent';

  @override
  Future<void> apply(bool darkOn) async {
    try {
      config.setDarkMode(darkOn);
    } catch (_, stackTrace) {
      print('$_ $stackTrace');
    }
  }

}