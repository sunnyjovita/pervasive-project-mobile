import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:xml/xml.dart';

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

      body: 
      // Column(
      //   children: <Widget>[
      //     Image.network("https://i.imgur.com/CmWA8kf.png"), 
      //   ],
      // )
      new FutureBuilder(

        future: getPics(),
        builder: (context, AsyncSnapshot snapShot)
        {
          print('Building with snapshot = $snapShot');
            List data = snapShot.data;
            // XmlDocument url = XmlDocument.parse('https://pseimages.blob.core.windows.net/images?comp=list&restype=container&sp=racwdli&st=2022-01-26T16:46:03Z&se=2022-01-27T00:46:03Z&spr=https&sv=2020-08-04&sr=c&sig=YGZIUkmdul4ex3RpX2ilG8ISLHj28ncvN3I%2FHpXgSdk%3D');
            // print(data[0]);
            // print(url.getElement("Blobs")!.firstElementChild!.getElement("Blob")!.getElement("Name")!.text);
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
  // var url = Uri.parse(' https://pseimages.blob.core.windows.net/images?comp=list&restype=container&sp=racwdli&st=2022-01-26T16:46:03Z&se=2022-01-27T00:46:03Z&spr=https&sv=2020-08-04&sr=c&sig=YGZIUkmdul4ex3RpX2ilG8ISLHj28ncvN3I%2FHpXgSdk%3D');
  http.Response response = await http.get(url);
  return json.decode(response.body);

}




