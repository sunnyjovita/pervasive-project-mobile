import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class GalleryScreen extends StatefulWidget {
  static String routeName = "/gallery";
  @override
  _GalleryScreenState createState() => _GalleryScreenState();
}

class _GalleryScreenState extends State<GalleryScreen> {
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

      body: new FutureBuilder(

        future: getPics(),
        builder: (context, AsyncSnapshot snapShot)
        {
          print('Building with snapshot = $snapShot');
            Map data = snapShot.data;
            if(snapShot.hasError){
              print(snapShot.error);
              return Text('Failed to get response from the server',
              style: TextStyle(color: Colors.red,
              fontSize: 22.0),
              );

            }else if(snapShot.hasData){
              return new Center(
                child: new ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (context, index){
                    return new Column(
                      children: <Widget> [
                        new Padding(padding: const EdgeInsets.all(5.0)),
                        new Container(
                          child: new InkWell(
                            child: new Image.network(
                              '${data[index]['url']}'
                            ),
                          ),
                        )
                      ],
                    );
                    
                  }
                 
                  ),
              );
            }else if(!snapShot.hasData){
              return new Center(child: CircularProgressIndicator(),); 
            }
            
       
        }),
    );
  }
}

Future<Map> getPics() async{
  var url = Uri.parse('https://picsum.photos/v2/list');
  http.Response response = await http.get(url);
  return json.decode(response.body);

}

// class GalleryScreen extends StatelessWidget {
//   static String routeName = "/gallery";
//   // static String routeName = "/gallery";
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//          centerTitle: true,
//         title: Text(
//           "Gallery", 
//           style: TextStyle(
//             color: Colors.black,
//             fontSize: 18,
//             fontWeight: FontWeight.bold,
//             ),
//             ),
//       ),

//       body: Center(
//         child: Container(
//           child: Image.network
//           // ("https://i.pinimg.com/originals/0c/5d/9c/0c5d9c58a9f6d522e51f0fdda7bcf525.png"),
//           ("https://miro.medium.com/max/1000/1*NLnnf_M4Nlm4p1GAWrWUCQ.gif"),
//           width: 380,
//           height: 500,

//         ),
//       )
      
//     );
//   }
// }


