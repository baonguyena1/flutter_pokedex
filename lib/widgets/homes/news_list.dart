import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pokedex/widgets/homes/poke_news.dart';

class NewsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index) => PokeNews(
        title: "Pokémon Rumble Rush Arrives Soon",
        time: "15 May 2019",
        thumbnail: Image.asset("assets/images/thumbnail.png"),
      ),
      separatorBuilder: (BuildContext context, int index) => Divider(),
    );
  }
}
