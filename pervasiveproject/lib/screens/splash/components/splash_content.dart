import 'package:flutter/material.dart';

import '../../../constant.dart';
import '../../../size_config.dart';

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
        Text(
          text,
          textAlign: TextAlign.center,
        ),
        Spacer(flex: 1),
        Image.asset(
          image,
          height: getProportionateScreenHeight(265),
          scale: 0.5
          // width: getProportionateScreenWidth(23500),
        ),
      ],
        
        );
  }
}