// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class BurgerTile extends StatelessWidget {
  final String BurgerFlavor;
  final String BurgerPrice;
  final BurgerColor;
  final String imageName1;

  final double borderRadius = 18;

  const BurgerTile({
    super.key,
    required this.BurgerFlavor,
    required this.BurgerPrice,
    required this.BurgerColor,
    required this.imageName1,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          //price
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: BurgerColor[200],
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(borderRadius),
                        topRight: Radius.circular(borderRadius))),
                        padding: EdgeInsets.all(12),
                    child: Text(
                      '\$$BurgerPrice',
                      style: TextStyle(
                          color: BurgerColor[800], fontWeight: FontWeight.bold),
                    )
              ),
            ],
          ),
          //Burger Picture
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 43.0, vertical: 16),
            child: Image.asset(imageName1),
          ),

          //Burger Flavor
          Text(
            BurgerFlavor,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            'Cheezie',
            style: TextStyle(color: Colors.grey[600]),
          ),

          //love icon + Add button
          Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //love icon
                  Icon(Icons.favorite,
                  color: Colors.pink,),
                  //plus button
                  Icon(Icons.add,
                  color: Colors.grey[800],),
                ],
              ),
            )
        ],
      ),
    );
  }
}
