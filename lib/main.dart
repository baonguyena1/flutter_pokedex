import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pokedex/configs/app_color.dart';
import 'package:pokedex/screens/home/widgets/index.dart';

Future<void> main() async {
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: AppColors.lighterGrey
      ),
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}