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
          child: PageView.builder( // slider page
            itemBuilder: (context, index) => SplashContent(
            image: "./assets/images/remote-control-door-lock.png",
            text: "Welcome to Lock&Go, have you locked your door?",
          ),
      )),
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

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key, required this.text, required this.image, 
  }) : super(key: key);
  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
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
        Text(text),
        Spacer(flex: 1),
        Image.asset(
          image,
          height: getProportionateScreenHeight(265),
          // width: getProportionateScreenWidth(235),
        ),
      ],
        
        );
  }
}
