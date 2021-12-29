import 'package:flutter/widgets.dart';
import 'package:pervasiveproject/screens/splash/splash_screen.dart';

// we use name route
// all routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
};