import 'package:flutter/material.dart';

import 'components/body.dart';
// import 'package:pervasiveproject/screens/login_success/components/body.dart';

class LoginSuccessScreen extends StatelessWidget {
  static String routeName = "/login_success";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Login Success", 
          style: TextStyle(
            color: Color(0XFF8B8B8B), 
            fontSize: 18,
            ),
            ),
        iconTheme: IconThemeData(color: Colors.white),

      ),
      body: Body(),
    );
  }
}