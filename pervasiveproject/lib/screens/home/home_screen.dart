import 'package:flutter/material.dart';

import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Lock and Go", 
          style: TextStyle(
            color: Color(0XFF8B8B8B), 
            fontSize: 18,
            ),
            ),
        iconTheme: IconThemeData(color: Colors.white),
        leading: Image.asset(
          'assets/lock1.png',
          width: 35,
          height: 35,
          ),

      ),
      body: Body(),
    );
  }
}