import 'package:flutter/widgets.dart';
import 'package:pokedex/configs/index.dart';

class PokeNews extends StatelessWidget {
  const PokeNews({
    Key key,
    @required this.title,
    @required this.time,
    @required this.thumbnail,
  }) : super(key: key);

  final Image thumbnail;
  final String time;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Flexible(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 6),
                Text(
                  time,
                  style: TextStyle(
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 36),
          Flexible(
            flex: 1,
            child: AspectRatio(
              aspectRatio: 1.6,
              child: thumbnail,
            ),
          ),
        ],
      ),
    );
  }
}
