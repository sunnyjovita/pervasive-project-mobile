import 'package:flutter/material.dart';

// import 'package:pervasiveproject/constant.dart';

class GalleryScreen extends StatelessWidget {
  static String routeName = "/gallery";
  // static String routeName = "/gallery";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
         centerTitle: true,
        title: Text(
          "Gallery", 
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
            ),
            ),
      ),

      body: ListView(
         children: [
          SizedBox(height: 25),
          Center(child:Text('...', style: 
          TextStyle( fontWeight: FontWeight.bold, fontSize: 20 ),
          // Theme.of(context).textTheme.bodyText1, 
          )),

          SizedBox(height:8),

          // Center(child: Text('Sunnyjo', style: Theme.of(context).textTheme.bodyText1?.copyWith(color:Color.fromRGBO(37,112,252,1),
          //  fontWeight: FontWeight.w600, fontSize: 18),
          //  )),

          //  // create button locked and unlocked
          //  SizedBox(height:15),
          //  Center(
          //    child: MaterialButton(onPressed: (){}, shape: RoundedRectangleBorder(
          //      borderRadius: BorderRadius.circular(90) 
          //      ),
          //      height: 150,
          //      minWidth: 150,
          //      color: Color(0xFF189AD3),
          //      child: Column(
          //        children: [
          //          Icon(Icons.power_settings_new, color: Colors.white, size: 50),
          //          SizedBox(height: 10),
          //          Text('Locked', style: Theme.of(context).textTheme.bodyText2?.copyWith(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 18),),

          //        ],
          //      ),
          //      ),
          //  ),


          //  SizedBox(height: 10),
          //  Center(child: Text('00.00.01', style: Theme.of(context).textTheme.bodyText2?.copyWith(fontWeight: FontWeight.w600, color: Color.fromRGBO(37, 112, 252, 1)),
          //  )),

          // // gallery
          //  SizedBox(height: 50),
          //  Material(
          //    borderRadius: BorderRadius.circular(10),
          //   //  color: Color(0xFF979797),
          //    color: Color.fromRGBO(239,242,248, 1),
          //    child: Padding(
          //      padding: const EdgeInsets.all(8.0),
          //      child: Row(
          //        crossAxisAlignment: CrossAxisAlignment.center,
          //        mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //        children: [
          //         Wrap(
          //           crossAxisAlignment: WrapCrossAlignment.center,
          //            children: [
          //              CircleAvatar(
                         
          //              ), 
          //             SizedBox(width: 15),
          //             Text('Gallery', 
          //             style: 
          //             TextStyle( fontWeight: FontWeight.w600, fontSize: 20 )
          //             ),
          //            ],
          //          ),
          //          IconButton(icon: Icon(Icons.arrow_forward_ios),
          //         onPressed: (){
          //            // move to the gallery screen
          //              Navigator.pushNamed(context, GalleryScreen.routeName);
          //         }, 
          //         iconSize: 15,)
          //        ],
          //      ),
          //    ),
          //    ),  

          //     // account
          //      SizedBox(height: 20),
          //  Material(
          //    borderRadius: BorderRadius.circular(10),
          //   //  color: Color(0xFF979797),
          //    color: Color.fromRGBO(239,242,248, 1),
          //    child: Padding(
          //      padding: const EdgeInsets.all(8.0),
          //      child: Row(
          //        crossAxisAlignment: CrossAxisAlignment.center,
          //        mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //        children: [
          //         Wrap(
          //           crossAxisAlignment: WrapCrossAlignment.center,
          //            children: [
          //              CircleAvatar(
                         
          //              ), 
          //             SizedBox(width: 15),
          //             Text('Account', 
          //             style: 
          //             TextStyle( fontWeight: FontWeight.w600, fontSize: 20 )
          //             ),
                 
          //            ],
          //          ),
          //          IconButton(icon: Icon(Icons.arrow_forward_ios), onPressed: (){}, iconSize: 15,)
          //        ],
          //      ),
          //    ),
          //    ),

      ],
      ),
      
    );
  }
}
