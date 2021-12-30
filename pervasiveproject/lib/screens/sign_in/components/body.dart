import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pervasiveproject/constant.dart';
// import 'package:pervasiveproject/theme.dart';

import '../../../size_config.dart';

class Body extends StatelessWidget {
  @override 
  Widget build(BuildContext context){
    return SafeArea(
      child: SizedBox(
        // make the welcome back ang sign in with... in the center
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20), 
          ),
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
                "Sign in with your email and password \nor continue with social media",
                textAlign: TextAlign.center,
              ),
              SignForm(),
            ], 
          ),
        ),
      ),
    );
  }
}

class SignForm extends StatefulWidget {
  // const ({ Key? key }) : super(key: key);
  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              labelText: "Email",
              hintText: "Enter your email",
              floatingLabelBehavior: FloatingLabelBehavior.always,

              // create icon email 
              // suffixIcon: SvgPicture.asset("assets/icons/Mail.svg"),


            ),
          ),

      ],
      ),
      
    );
  }
}