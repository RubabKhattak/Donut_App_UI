import 'package:donut_app_ui/util/donut_tile.dart';
import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {
  List donutOnSale = [
    // [ donutFlavor, donutPrice, donutColor, imageName ]
    ["Ice Cream", "36", Colors.blue, 'lib/images/donut (2).png'],
    ["Strawberry", "45", Colors.greenAccent, 'lib/images/donut (1).png'],
    ["Grape Ape", "80", Colors.orangeAccent, 'lib/images/donut (3).png'],
    ["Choco", "96", Colors.purpleAccent, 'lib/images/donut.png'],
  ];

  DonutTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: donutOnSale.length,
        padding: EdgeInsets.all(12),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 1 / 1.5),
        itemBuilder: (context, index) {
          return DonutTile(
            donutFlavor: donutOnSale[index][0],
            donutPrice: donutOnSale[index][1],
            donutColor: donutOnSale[index][2],
            imageName: donutOnSale[index][3],
          );
        });
  }
}
