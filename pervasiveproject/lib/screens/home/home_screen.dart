import 'package:flutter/material.dart';

import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Lock and Go", 
          style: TextStyle(
            // color: Color(0XFF8B8B8B), 
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
            ),
            ),
        iconTheme: IconThemeData(color: Colors.white),
        leading: Image.asset(
          "assets/images/lock3.png",
          // width: 100,
          // height: 100,
        ),
        ),

      body: Body(),
    );
  }
}