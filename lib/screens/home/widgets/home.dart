import 'package:flutter/material.dart';
import 'package:pokedex/configs/index.dart';
import 'package:pokedex/widgets/homes/index.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: <Widget>[
            _buildCards(),
            _buildNews()
          ],
        ),
    );
  }

  Widget _buildCards() {
    return PokeContainer(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
      children: <Widget>[
        SizedBox(
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'What Pokemon\nnare you looking for?',
            style: TextStyle(
                fontSize: 26, height: 0.9, fontWeight: FontWeight.w900),
          ),
        ),
        SizedBox(
          height: 40,
        ),
        SearchBar(),
        SizedBox(
          height: 40,
        ),
        CatagoryList(),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }

  Widget _buildNews() {
    return Container(
      child: ListView(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 16, left: 16, right: 16, bottom: 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Pokémon News',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w900)),
                Text(
                  'See All',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColors.indigo,
                  ),
                )
              ],
            ),
          ),
          NewsList()
        ],
      ),
    );
  }
}
