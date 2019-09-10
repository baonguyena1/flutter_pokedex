import 'package:flutter/material.dart';

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
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(color: Colors.grey[200], blurRadius: 10, spreadRadius: 5)
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
                        color: Colors.white)),
              ),
            ),
            Positioned(
              top: -width * 0.2,
              left: -height * 0.2,
              child: CircleAvatar(
                radius: width * 0.2,
                backgroundColor: Colors.white.withOpacity(0.2),
              ),
            ),
            Positioned(
              top: -10,
              right: -10,
              child: Image.asset(
                'assets/images/pokeball.png',
                height: height * 1.6,
                scale: 1,
                color: Colors.white.withOpacity(0.2),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
