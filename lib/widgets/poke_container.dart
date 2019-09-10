import 'package:flutter/material.dart';

class PokeContainer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final boxWidth = screenSize.width;

    return Container(
      constraints: BoxConstraints.expand(height: screenSize.height * 0.5),
      decoration: BoxDecoration(
        color: Colors.red
      ),
    );
  }
}
