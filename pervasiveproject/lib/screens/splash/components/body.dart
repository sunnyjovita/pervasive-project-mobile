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
      child: Column(
      children: <Widget>[
        Expanded(
          flex: 3, // length of the box
          child: Column(
            children: <Widget>[
              Text(
                "Lock&Go", 
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(36),
                  color: kPrimaryColor,
                  fontWeight: FontWeight.bold,
              ),
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
    );

  }
}