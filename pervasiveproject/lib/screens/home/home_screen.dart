import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:pervasiveproject/screens/gallery/gallery_screen.dart';
import 'package:pervasiveproject/screens/splash/splash_screen.dart';

import 'components/body.dart';
import 'package:pervasiveproject/constant.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = "/home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool color1 = false;

  bool text1 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Lock and Go", 
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
            ),
            ),
        iconTheme: IconThemeData(color: Colors.white),

        
        leading: Image.asset(
          "assets/images/lock3.png",
          width: 100,
          height: 100,
        ),
        ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
        children: [
          SizedBox(height: 45),
          Center(child:
          text1? 
          Text(
            'Your house is locked', 
            style: 
          TextStyle( 
            fontWeight: FontWeight.bold, 
            fontSize: 20, 
            color: Colors.blue),
          // Theme.of(context).textTheme.bodyText1, 
          ): 
          Text(
            'Your house is unlocked', 
            style: 
          TextStyle( 
            fontWeight: FontWeight.bold, 
            fontSize: 20, 
            color: Colors.black),
          // Theme.of(context).textTheme.bodyText1, 
          )
          ),
          SizedBox(height:8),

          Center(child: Text('Sunnyjo', style: Theme.of(context).textTheme.bodyText1?.copyWith(color:Color.fromRGBO(37,112,252,1),
           fontWeight: FontWeight.w600, fontSize: 18),
           )),

          // avatarGlow
         
           // create button locked and unlocked
           SizedBox(height:25),
           Center(
             child: AvatarGlow(
            glowColor: color1? Colors.blue:Colors.red, 
            endRadius: 100.0,
            duration: Duration(milliseconds: 2000),
            repeat: true,
            showTwoGlows: false,
            repeatPauseDuration: Duration(milliseconds: 100),
            shape: BoxShape.circle,
            // child: Center(
              child: MaterialButton(
                   onPressed: (){
                      setState(() {
                color1 = !color1;
                text1 = !text1;
              }
              );
                   },
                // elevation: 2,
                shape: CircleBorder(),
                 color: color1? Color(0xFF189AD3):Colors.red,
                 child: SizedBox(
                   height: 150,
                   width: 150,
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.center,
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Icon(Icons.power_settings_new, color: Colors.white, size: 50),
                       SizedBox(height: 10),
                       text1? Text('Locked', style: Theme.of(context).textTheme.bodyText2?.copyWith(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 18),
                       ): Text('Unlocked', style: Theme.of(context).textTheme.bodyText2?.copyWith(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 18),
                       )
                     ],
                   ),
                 ),
              
                 ),

           
          ),
           ),


          //  SizedBox(height: 10),
          //  Center(child: Text('00.00.01', style: Theme.of(context).textTheme.bodyText2?.copyWith(fontWeight: FontWeight.w600, color: Color.fromRGBO(37, 112, 252, 1)),
          //  )),

          // gallery
           SizedBox(height: 40),
           Material(
             borderRadius: BorderRadius.circular(10),
            //  color: Color(0xFF979797),
             color: Color.fromRGBO(239,242,248, 1),
             child: Padding(
               padding: const EdgeInsets.all(8.0),
               child: Row(
                 crossAxisAlignment: CrossAxisAlignment.center,
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                  Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                     children: [
                       CircleAvatar(
                         
                       ), 
                      SizedBox(width: 15),
                      Text('Gallery', 
                      style: 
                      TextStyle( fontWeight: FontWeight.w600, fontSize: 20 )
                      ),
                     ],
                   ),
                   IconButton(icon: Icon(Icons.arrow_forward_ios),
                  onPressed: (){
                     // move to the gallery screen
                       Navigator.pushNamed(context, GalleryScreen.routeName);
                  }, 
                  iconSize: 15,)
                 ],
               ),
             ),
             ),  

              // account
               SizedBox(height: 20),
           Material(
             borderRadius: BorderRadius.circular(10),
            //  color: Color(0xFF979797),
             color: Color.fromRGBO(239,242,248, 1),
             child: Padding(
               padding: const EdgeInsets.all(8.0),
               child: Row(
                 crossAxisAlignment: CrossAxisAlignment.center,
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                  Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                     children: [
                       CircleAvatar(
                         
                       ), 
                      SizedBox(width: 15),
                      Text('Account', 
                      style: 
                      TextStyle( fontWeight: FontWeight.w600, fontSize: 20 )
                      ),
                 
                     ],
                   ),
                   IconButton(icon: Icon(Icons.arrow_forward_ios), onPressed: (){}, iconSize: 15,)
                 ],
               ),
             ),
             ),

             // logout
             Spacer(),
             RaisedButton.icon(
               elevation: 0,
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: MediaQuery.of(context).size.width/4.5),
              color: Color(0xFF189AD3),
              onPressed: (){
                // move to the splash screen
                  Navigator.pushNamed(context, SplashScreen.routeName);
              },
              label: 
              Text('Logout', 
              style: Theme.of(context).textTheme.button?.copyWith(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),), 
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)), 
              icon: Icon(IconData(0xe3b3, fontFamily: 'MaterialIcons'), color: Colors.white,
              ),
             ), 
             SizedBox(height: 35),
      ],
      ),
      ),
    );
  }
}