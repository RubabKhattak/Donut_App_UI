import 'package:donut_app_ui/Tabs/burger_tab.dart';
import 'package:donut_app_ui/Tabs/donut_tab.dart';
import 'package:donut_app_ui/Tabs/pancake_tab.dart';
import 'package:donut_app_ui/Tabs/pizz_tab.dart';
import 'package:donut_app_ui/Tabs/smoothie_tab.dart';
import 'package:donut_app_ui/util/my_tab.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //list of tabs
  List<Widget> myTabs = const [
    //donut tab
    MyTab(
      iconPath: 'lib/icons/doughnut.png',
    ),

    //burger tab
    MyTab(
      iconPath: 'lib/icons/burger.png',
    ),

    //smoothie tab

    MyTab(
      iconPath: 'lib/icons/smoothie.png',
    ),

    //pancake tab
    MyTab(
      iconPath: 'lib/icons/pancakes.png',
    ),

    //pizza tab
    MyTab(
      iconPath: 'lib/icons/pizza.png',
    )
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: Padding(
            padding: EdgeInsets.only(left: 24.0),
            child: IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.black,
                size: 36,
              ),
              onPressed: () {
                //opewn drawer
              },
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 24.0),
              child: IconButton(
                icon: Icon(
                  Icons.person,
                  size: 36,
                  color: Colors.black,
                ),
                onPressed: () {
                  //account button tapped
                },
              ),
            )
          ],
        ),
        body: Column(children: [
          // i want to eat
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 36.0),
            child: Row(
              children: [
                Text(
                  "I want to ",
                  style: TextStyle(fontSize: 24),
                ),
                Text(
                  "Eat",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          // tab bar
          TabBar(tabs: myTabs),

          // tab bar view
          Expanded(
              child: TabBarView(
            children: [
              //donut page
              DonutTab(),

              //burger page
              BurgerTab(),

              //smoothie page
              SmoothieTab(),

              //pancake page
              PancakeTab(),

              //pizza page
              PizzaTab(),
            ],
          ))
        ]),
      ),
    );
  }
}
