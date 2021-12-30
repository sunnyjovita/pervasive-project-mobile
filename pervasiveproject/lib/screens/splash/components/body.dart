import 'package:flutter/material.dart';
import 'package:pervasiveproject/constant.dart';
import 'package:pervasiveproject/screens/sign_in/sign_in_screen.dart';
import 'package:pervasiveproject/size_config.dart';

import '../components/splash_content.dart';
import '../../../components/default_button.dart';

class Body extends StatefulWidget{
  @override 
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body>{
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "Welcome to Lock&Go, have you locked your door?",
      "image": "./assets/images/remote-control-door-lock.png"
    },
    {
      "text": "The only smart lock you will ever need",
      "image": "./assets/images/thumbnail_smartphone_smartlock_chandsfree.jpg"
    },
    
  ];
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
          // Set the buildDot 
          onPageChanged: (value){
            setState(() {
              currentPage = value;
            });
          },
          itemCount: splashData.length,
          itemBuilder: (context, index) => SplashContent(
            image: splashData[index]["image"].toString(),
              // image: "./assets/images/thumbnail_smartphone_smartlock_chandsfree.jpg",
            text: splashData[index]["text"].toString(),
          ),
      )),
      Expanded(
        flex: 2,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20) // setting up the padding 
          ),
          child: Column(
            children: <Widget>[
              Spacer(),
              Row(
                // set the dot in the middle
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  splashData.length, 
                  (index) => buildDot(index: index)
                ),
              ),

              Spacer(flex: 3),

              // create button 'Continue'
              DefaultButton(
                text: "Continue",
                press: (){
                  // move to the sign in page
                  Navigator.pushNamed(context, SignInScreen.routeName);
                },
              ),
              Spacer(),

            ],
            ),
        ),
        ),
      ],
    ),
    ),
    );

  }

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
            margin: EdgeInsets.only(right: 5),
            height: 6,
            width: currentPage == index ? 20:6,
            decoration: BoxDecoration(
              color: currentPage == index ? kPrimaryColor: Color(0xFFD8D8D8),
              borderRadius: BorderRadius.circular(3),
            ),
          );
  }
}




