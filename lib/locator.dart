import 'package:get_it/get_it.dart';
import 'package:pokedex/providers/config_provider.dart';
import 'package:rxdart/subjects.dart';

import 'blocs/config_event_bloc.dart';
import 'configs/config_event.dart';

GetIt getIt = GetIt.instance;

void setupLocator() {
  getIt.registerLazySingleton<ConfigEventBlocing>(() {
    // final subject = BehaviorSubject<bool>.seeded(false);
    return ConfigEventBloc();
  });
}