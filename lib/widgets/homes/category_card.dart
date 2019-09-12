import 'package:flutter/material.dart';
import 'package:pokedex/providers/config_provider.dart';
import 'package:provider/provider.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard(
      {@required this.onPressed,
      this.width,
      this.height,
      this.color,
      this.name = '',
      Key key})
      : super(key: key);

  final Function onPressed;
  final double width, height;
  final Color color;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Consumer<ConfigProvider>(
      builder: (context, config, child) => Container(
        decoration: BoxDecoration(
          color: config.darkModeOn ? color.withOpacity(0.8) : color,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
                color: config.darkModeOn ? Colors.black12 : Colors.grey[200],
                blurRadius: 10,
                spreadRadius: 5)
          ],
        ),
        width: width,
        height: height,
        child: InkWell(
          borderRadius: BorderRadius.circular(8),
          onTap: onPressed,
          child: Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Text(name,
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color:  Colors.white)),
                ),
              ),
              Positioned(
                top: -width * 0.2,
                left: -height * 0.2,
                child: CircleAvatar(
                  radius: width * 0.2,
                  backgroundColor: config.darkModeOn
                      ? Colors.black.withOpacity(0.2)
                      : Colors.white.withOpacity(0.2),
                ),
              ),
              Positioned(
                top: -10,
                right: -10,
                child: Image.asset(
                  'assets/images/pokeball.png',
                  height: height * 1.6,
                  scale: 1,
                  color: config.darkModeOn
                      ? Colors.black.withOpacity(0.2)
                      : Colors.white.withOpacity(0.2),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
