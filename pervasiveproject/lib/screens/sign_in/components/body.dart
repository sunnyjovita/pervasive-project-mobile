import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:pervasiveproject/components/socal_card.dart';
import 'package:pervasiveproject/constant.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:pervasiveproject/components/default_button.dart';
// import 'package:pervasiveproject/components/form_error.dart';
// import 'package:pervasiveproject/constant.dart';
// import 'package:pervasiveproject/components/custom_surfix_icon.dart';
import 'package:pervasiveproject/screens/sign_in/components/sign_form.dart';
import 'package:pervasiveproject/screens/sign_up/sign_up_screen.dart';
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
          child: SingleChildScrollView(
            child: Column(
              children:[
                 SizedBox(height: SizeConfig.screenHeight * 0.04),
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
          
                SizedBox(height: SizeConfig.screenHeight * 0.08),
          
                SignForm(),
          
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                
                // for social media icons
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocalCard( // google
                      icon: "./assets/icons/google-icon.svg",
                      press: (){},  
                    ),
                    SocalCard( // facebook
                      icon: "./assets/icons/facebook-2.svg",
                      press: (){},  
                    ),
                    SocalCard( // twitter
                      icon: "./assets/icons/twitter.svg",
                      press: (){},  
                    ),
                  ],
                ),
          
                SizedBox(height: getProportionateScreenHeight(20)),
          
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     Text(
                //       "Don't have an account? ",
                //       style: TextStyle(
                //         fontSize: getProportionateScreenWidth(16),
                //       ),
                //     ),
                //     Text(
                //       "Sign Up",
                //       style: TextStyle(
                //         fontSize: getProportionateScreenWidth(16),
                //         color: kPrimaryColor,
                //       ),
                //     )
                //   ],
                // ),

        
    Row(
       mainAxisAlignment: MainAxisAlignment.center,
       children: [
    RichText(
      text: TextSpan(
        style: TextStyle(color: Colors.grey, fontSize: 20.0, fontFamily: "Montserrat"),
        children: <TextSpan>[
          TextSpan(text: "Don't have an account? "),
          
          TextSpan(
              text: "Sign Up",
              style: TextStyle(fontSize: 20.0,
                        color: kPrimaryColor),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  // move to the sign up screen
                       Navigator.pushNamed(context, SignUpScreen.routeName);
                }),
        ],
      ),
    ),
  // }
       ],
    ),
          
              ], 
            ),
          ),
        ),
      ),
    );
  }
}

