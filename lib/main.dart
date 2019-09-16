import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pokedex/configs/app_color.dart';
import 'package:pokedex/locator.dart';
import 'package:pokedex/screens/home/index.dart';
import 'blocs/config_event_bloc.dart';

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
    final darkMode = getIt<ConfigEventBlocing>().darkMode;
    return StreamBuilder(
      stream: darkMode,
      initialData: darkMode.value,
      builder: (BuildContext context, AsyncSnapshot<bool> snapshot){
        return Container(
          child: MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
                primarySwatch: Colors.red,
                primaryColor: snapshot.data ? Colors.black : Colors.white,
                disabledColor: Colors.grey,
                brightness:
                    snapshot.data ? Brightness.dark : Brightness.light,
                buttonTheme: Theme.of(context).buttonTheme.copyWith(
                    colorScheme: snapshot.data
                        ? ColorScheme.dark()
                        : ColorScheme.light()),
                iconTheme: Theme.of(context).iconTheme.copyWith(
                    color: snapshot.data ? Colors.black : Colors.white),
                appBarTheme: AppBarTheme(elevation: 0),
                scaffoldBackgroundColor: snapshot.data
                    ? AppColors.darkerGrey
                    : AppColors.lighterGrey),
            home: HomePage(),
            routes: {
              HomePage.routeName: (context) => HomePage(),
            },
            debugShowCheckedModeBanner: false,
          ),
        );
      },
    );
  }
}
