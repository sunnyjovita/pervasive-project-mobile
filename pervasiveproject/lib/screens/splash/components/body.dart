import 'package:flutter/material.dart';
import 'package:pervasiveproject/constant.dart';
import 'package:pervasiveproject/size_config.dart';

class Body extends StatefulWidget{
  @override 
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body>{
  @override 
  Widget build(BuildContext context){

    // change safearea to move the title
    return SafeArea(
      child: SizedBox(
        width: double.infinity, // move words into middle
      child: Column(
      children: <Widget>[
        Expanded(
          flex: 3, // length of the box
          child: Column(
            children: <Widget>[
              Spacer(),
              Text(
                "Lock&Go", 
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(36), // title size
                  color: kPrimaryColor,
                  fontWeight: FontWeight.bold,
              ),
              ),
              Text("Welcome to Lock&Go, have you locked your door?"),
              Spacer(flex: 2),
              Image.asset(
                "./assets/images/splash_1.png",
              //   // height: getProportionateScreenHeight(265),
              //   // width: getProportionateScreenWidth(235),
              ),
            ],
        
        ),
        ),
      Expanded(
        flex: 2,
        child: SizedBox(),
        ),
      ],
    ),
    ),
    );

  }
}
