import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pokedex/configs/app_color.dart';
import 'package:pokedex/locator.dart';
import 'package:pokedex/provider_setup.dart';
import 'package:pokedex/providers/config_provider.dart';
import 'package:pokedex/screens/home/index.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: providers,
      child: ChangeNotifierProvider<ConfigProvider>(
        builder: (context) => getIt.get<ConfigProvider>(),
        child: Consumer<ConfigProvider>(
          builder: (context, config, child) => MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
                primarySwatch: Colors.red,
                primaryColor: config.darkModeOn ? Colors.black : Colors.white,
                disabledColor: Colors.grey,
                brightness:
                    config.darkModeOn ? Brightness.dark : Brightness.light,
                buttonTheme: Theme.of(context).buttonTheme.copyWith(
                    colorScheme: config.darkModeOn
                        ? ColorScheme.dark()
                        : ColorScheme.light()),
                iconTheme: Theme.of(context).iconTheme.copyWith(
                    color: config.darkModeOn ? Colors.black : Colors.white),
                appBarTheme: AppBarTheme(elevation: 0),
                scaffoldBackgroundColor: config.darkModeOn
                    ? AppColors.darkerGrey
                    : AppColors.lighterGrey),
            home: HomePage(),
            routes: {
              HomePage.routeName: (context) => HomePage(),
            },
            debugShowCheckedModeBanner: false,
          ),
        ),
      ),
    );
  }
}
