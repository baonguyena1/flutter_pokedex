import 'package:get_it/get_it.dart';
import 'blocs/config_event_bloc.dart';

GetIt getIt = GetIt.instance;

void setupLocator() {
  getIt.registerLazySingleton<ConfigEventBlocing>(() => ConfigEventBloc());
}