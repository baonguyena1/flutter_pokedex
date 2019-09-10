import 'package:flutter/material.dart';
import 'package:pokedex/widgets/poke_container.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          _buildCards()
        ],
      ),
    );
  }

  Widget _buildCards() {
    return PokeContainer();
  }
}
