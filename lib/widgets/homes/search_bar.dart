import 'package:flutter/material.dart';
import 'package:pokedex/blocs/config_event_bloc.dart';
import 'package:pokedex/locator.dart';
import 'package:pokedex/providers/config_provider.dart';

class SearchBar extends StatelessWidget {
  const SearchBar(
      {this.margin = const EdgeInsets.symmetric(horizontal: 16), Key key})
      : super(key: key);

  final EdgeInsets margin;
  @override
  Widget build(BuildContext context) {
    final darkMode = getIt<ConfigEventBlocing>().darkMode;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      margin: const EdgeInsets.symmetric(horizontal: 16),
      decoration: ShapeDecoration(
          shape: StadiumBorder(),
          color: Theme.of(context).scaffoldBackgroundColor),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.search,
            color: Theme.of(context).disabledColor,
          ),
          SizedBox(
            width: 16,
          ),
          Expanded(
            child: TextFormField(
              decoration: InputDecoration(
                  hintText: 'Search Pokemon, Move, Ability etc',
                  hintStyle: TextStyle(fontSize: 14),
                  border: InputBorder.none),
            ),
          )
        ],
      ),
    );
  }
}
