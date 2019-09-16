import 'package:flutter/material.dart';
import 'package:pokedex/blocs/config_event_bloc.dart';
import 'package:pokedex/locator.dart';
import 'package:pokedex/providers/config_provider.dart';

class PokeContainer extends StatelessWidget {
  const PokeContainer({@required this.children, this.decoration, Key key})
      : super(key: key);

  final List<Widget> children;
  final BoxDecoration decoration;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final boxWidth = screenSize.width;
    final darkMode = getIt<ConfigEventBlocing>().darkMode;

    return Container(
      decoration: decoration,
      child: Stack(
        children: <Widget>[
          Positioned(
            top: -boxWidth * 0.154,
            right: -boxWidth * 0.23,
            child: StreamBuilder(
              stream: darkMode ,
              initialData: darkMode.value ,
              builder: (BuildContext context, AsyncSnapshot<bool> snapshot){
                return Container(
                  child: Image.asset(
                'assets/images/pokeball.png',
                width: boxWidth * 0.8,
                scale: 1,
                color: Color(snapshot.data ? 0xFFFFFFFF : 0xFF303943)
                    .withOpacity(snapshot.data ? 0.2 : 0.05),
              ),
                );
              },
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[if (children != null) ...children],
          ),
        ],
      ),
    );
  }
}
