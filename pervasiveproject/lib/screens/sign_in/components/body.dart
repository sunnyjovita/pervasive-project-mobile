import 'package:flutter/material.dart';
import 'package:pervasiveproject/theme.dart';

import '../../../size_config.dart';

class Body extends StatelessWidget {
  @override 
  Widget build(BuildContext context){
    return SafeArea(
      child: Column(
        children:[
          Text(
            "Welcome Back",
            style: TextStyle(
              color: Colors.black,
              fontSize: getProportionateScreenWidth(28),
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "Sign in with your email and password \nor continue with social media"
          ),
        ], 
      ),
    );
  }
}