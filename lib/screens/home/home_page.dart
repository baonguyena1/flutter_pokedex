import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pokedex/blocs/config_event_bloc.dart';
import 'package:pokedex/configs/config_event.dart';
import 'package:pokedex/locator.dart';
import 'package:pokedex/providers/config_provider.dart';
import 'package:pokedex/screens/home/index.dart';

class HomePage extends StatelessWidget {
  static const String routeName = '/home';
  @override
  Widget build(BuildContext context) {
    final darkMode = getIt<ConfigEventBlocing>().darkMode;
    return Scaffold(
        appBar: AppBar(
          title: Text('Pokemon Home'),
          centerTitle: true,
          actions: <Widget>[
            StreamBuilder(
              stream: darkMode,
              initialData: darkMode.value,
              builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
                return Container(
                  child: IconButton(
                    icon: Icon(
                      snapshot.data
                          ? FontAwesomeIcons.solidLightbulb
                          : FontAwesomeIcons.lightbulb,
                      size: 18,
                    ),
                    onPressed: _toggleDarkMode,
                  ),
                );
              },
            ),
          ],
        ),
        body: HomeScreen());
  }

  void _toggleDarkMode() {
    final config = getIt<ConfigEventBlocing>();
    config.changeDarkMode(!config.darkMode.value);
  }
}
