import 'package:pokedex/locator.dart';
import 'package:pokedex/providers/config_provider.dart';
import 'package:provider/provider.dart';

List<SingleChildCloneableWidget> providers = [
  ...independentServices,
  ...dependentServices,
  ...uiConsumableProviders
];

List<SingleChildCloneableWidget> independentServices = [
  Provider.value(value: getIt.get<ConfigProvider>(),)
];

List<SingleChildCloneableWidget> dependentServices = [
];
List<SingleChildCloneableWidget> uiConsumableProviders = [

];