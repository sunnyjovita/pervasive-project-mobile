import 'package:flutter/material.dart';
import 'package:pervasiveproject/components/default_button.dart';
import 'package:pervasiveproject/size_config.dart';

class Body extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // SizedBox(height: SizeConfig.screenHeight * 0.1),
        Image.asset(
          "assets/images/success-4.png",
          height: SizeConfig.screenHeight * 0.5,
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.05),

        Text(
          "Login Success",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(30),
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Spacer(),
        // create button to home page
        SizedBox(
          width: SizeConfig.screenWidth * 0.6,
          child: DefaultButton(
            text: "Back to home", 
            press: (){},
            ),
        ),
        Spacer(),
      ],   
    );
  }
}