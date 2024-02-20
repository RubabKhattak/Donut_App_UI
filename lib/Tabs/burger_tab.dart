import 'package:donut_app_ui/util/burger_tile.dart';
import 'package:flutter/material.dart';

class BurgerTab extends StatelessWidget {
  List BurgerOnSale = [
    // [ burgerFlavor, burgerPrice, burgerColor, imageName1 ]
    ["Zinger", "36",Colors.greenAccent, 'lib/images/donut.png'],
    ["Beef", "45", Colors.greenAccent, 'lib/images/donut.png'],
    ["Beef Cheez", "80", Colors.orangeAccent, 'lib/images/donut.png'],
    ["Double Cheez Zinger", "96", Colors.purpleAccent, 'lib/images/donut.png'],
    ["Shami", "82", Colors.amberAccent, 'lib/images/donut.png'],
    ["Shami With Eggs", "90", Colors.blueGrey, 'lib/images/donut.png'],
    ["Double Zinger", "64", Colors.pinkAccent, 'lib/images/donut.png'],
    ["Double Shami", "78", Colors.orangeAccent, 'lib/images/donut.png' ],
    ["Beef Tikka", "88", Colors.redAccent, 'lib/images/donut.png'],
    ["Cheez Tikka", "65", Colors.yellowAccent, 'lib/images/donut.png'],
  ];

  BurgerTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: BurgerOnSale.length,
        padding: EdgeInsets.all(12),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 1 / 1.5),
        itemBuilder: (context, index) {
          return BurgerTile(
            BurgerFlavor: BurgerOnSale[index][0],
            BurgerPrice: BurgerOnSale[index][1],
            BurgerColor: BurgerOnSale[index][2],
            imageName1: BurgerOnSale[index][3],
          );
        });
  }
}
