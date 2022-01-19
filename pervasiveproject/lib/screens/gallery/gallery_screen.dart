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
            List data = snapShot.data;
            // print(data[0]['url']);
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
                              // '${data["hits"][index]['userImageURL']}'
                               '${data[index]['download_url']}'
                               
                            ),
                          ),
                        )
                      ],
                    );
                    
                  }
                 
                  ),
              );
            }else{
              return new Center(child: CircularProgressIndicator()); 
            }
            
       
        }),
    );
  }
}
var apiKey = '9443505-db0b1bdc3709bafd4c6cebb87';
Future<List> getPics() async{
  var url = Uri.parse('https://picsum.photos/v2/list');
  // var url = Uri.parse('https://pixabay.com/api/?key=$apiKey&q=cars&image_type=photo&pretty=true');
  http.Response response = await http.get(url);
  return json.decode(response.body);

}




