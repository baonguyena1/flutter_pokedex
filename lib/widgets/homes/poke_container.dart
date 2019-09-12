import 'package:flutter/material.dart';
import 'package:pokedex/providers/config_provider.dart';
import 'package:provider/provider.dart';

class PokeContainer extends StatelessWidget {
  const PokeContainer({@required this.children, this.decoration, Key key})
      : super(key: key);

  final List<Widget> children;
  final BoxDecoration decoration;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final boxWidth = screenSize.width;

    return Container(
      decoration: decoration,
      child: Stack(
        children: <Widget>[
          Positioned(
            top: -boxWidth * 0.154,
            right: -boxWidth * 0.23,
            child: Consumer<ConfigProvider>(
              builder: (context, config, child) => Image.asset(
                'assets/images/pokeball.png',
                width: boxWidth * 0.8,
                scale: 1,
                color: Color(config.darkModeOn ? 0xFFFFFFFF : 0xFF303943)
                    .withOpacity(config.darkModeOn ? 0.2 : 0.05),
              ),
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
