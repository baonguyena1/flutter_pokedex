import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pokedex/configs/index.dart';
import 'package:pokedex/widgets/homes/category_card.dart';

class CatagoryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return actions(context);
  }

  Widget actions(context) {
    final screenSize = MediaQuery.of(context).size;
    final width = screenSize.width * 0.4;
    final height = screenSize.height * 0.08;

    return Wrap(
      alignment: WrapAlignment.center,
      spacing: 20,
      runSpacing: 20,
      children: <Widget>[
        CategoryCard(
          name: 'Pokedex',
          width: width,
          height: height,
          color: AppColors.teal,
          onPressed: () {},
        ),
        CategoryCard(
          name: 'Moves',
          width: width,
          height: height,
          color: AppColors.red,
          onPressed: () {},
        ),
        CategoryCard(
          name: 'Abilities',
          width: width,
          height: height,
          color: AppColors.blue,
          onPressed: () {},
        ),
        CategoryCard(
          name: 'Items',
          width: width,
          height: height,
          color: AppColors.yellow,
          onPressed: () {},
        ),
        CategoryCard(
          name: 'Locations',
          width: width,
          height: height,
          color: AppColors.purple,
          onPressed: () {},
        ),
        CategoryCard(
          name: 'Type Charts',
          width: width,
          height: height,
          color: AppColors.brown,
          onPressed: () {},
        ),
      ],
    );
  }
}