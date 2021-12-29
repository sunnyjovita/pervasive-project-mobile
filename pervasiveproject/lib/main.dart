import 'package:flutter/material.dart';
import 'package:pervasiveproject/constant.dart';
import 'package:pervasiveproject/screens/splash/splash_screen.dart';
import 'package:pervasiveproject/routes.dart';

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
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        // fontFamily: "Muli",
        fontFamily: "Montserrat",
        textTheme: TextTheme(
          bodyText1: TextStyle(color: kTextColor),
          bodyText2: TextStyle(color: kTextColor),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // home: SplashScreen(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

