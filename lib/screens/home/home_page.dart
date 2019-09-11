import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pokedex/configs/config_event.dart';
import 'package:pokedex/locator.dart';
import 'package:pokedex/providers/config_provider.dart';
import 'package:pokedex/screens/home/index.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  static const String routeName = '/home';
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ConfigProvider>.value(
      value: getIt.get<ConfigProvider>(),
      child: Scaffold(
          appBar: AppBar(
            title: Text('Pokemon Home'),
            centerTitle: true,
            actions: <Widget>[
              Consumer<ConfigProvider>(
                builder: (context, config, child) {
                  return IconButton(
                    icon: Icon(
                      config.darkModeOn
                          ? FontAwesomeIcons.solidLightbulb
                          : FontAwesomeIcons.lightbulb,
                      size: 18,
                    ),
                    onPressed: _toggleDarkMode,
                  );
                },
              ),
            ],
          ),
          body: HomeScreen()),
    );
  }

  void _toggleDarkMode() {
    final darkModeEvent = getIt.get<DarkModeEvent>();
    bool darkModeOn = !getIt.get<ConfigProvider>().darkModeOn;
    darkModeEvent.apply(darkModeOn);
  }
}
