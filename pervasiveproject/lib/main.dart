import 'package:flutter/material.dart';
import 'package:pervasiveproject/constant.dart';
import 'package:pervasiveproject/screens/splash/splash_screen.dart';
import 'package:pervasiveproject/routes.dart';
import 'package:pervasiveproject/theme.dart';
// import 'package:pervasiveproject/screens/sign_in/sign_in_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      // home: SplashScreen(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}



