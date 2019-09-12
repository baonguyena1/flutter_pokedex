import 'package:get_it/get_it.dart';
import 'package:pokedex/providers/config_provider.dart';

import 'configs/config_event.dart';

GetIt getIt = GetIt.instance;

void setupLocator() {
  getIt.registerLazySingleton<ConfigProvider>(() {
    return ConfigProvider();
  });

  getIt.registerLazySingleton<DarkModeEvent>(() {
    final config = getIt.get<ConfigProvider>();
    return DarkModeEvent(config);
  });
}