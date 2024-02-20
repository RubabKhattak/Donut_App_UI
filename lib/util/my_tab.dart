import 'package:flutter/material.dart';

class MyTab extends StatelessWidget {

  final String iconPath;

  const MyTab({super.key, required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return Tab(
      height: 80,
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 202, 99, 133)
        ),
        child: Image.asset(iconPath,
        color: Colors.black,),
      ),
    );
  }
}