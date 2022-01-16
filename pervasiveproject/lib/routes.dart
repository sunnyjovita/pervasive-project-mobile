import 'package:flutter/widgets.dart';
import 'package:pervasiveproject/screens/gallery/gallery_screen.dart';
import 'package:pervasiveproject/screens/login_success/login_success_screen.dart';
import 'package:pervasiveproject/screens/sign_in/sign_in_screen.dart';
import 'package:pervasiveproject/screens/sign_up/sign_up_screen.dart';
import 'package:pervasiveproject/screens/splash/splash_screen.dart';
import 'package:pervasiveproject/screens/home/home_screen.dart';
// import 'package:pervasiveproject/screens/gallery/gallery_screen.dart';

// we use name route
// all routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  GalleryScreen.routeName: (context) => GalleryScreen(),
};