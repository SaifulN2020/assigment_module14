import 'dart:convert';
import 'package:photo_from_api/PhotosData.dart';
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

class PhotoDisplay extends StatefulWidget {
  const PhotoDisplay({Key? key}) : super(key: key);

  @override
  State<PhotoDisplay> createState() => _PhotoDisplayState();
}

class _PhotoDisplayState extends State<PhotoDisplay> {
  List<Photosdata2> postList = [];
  Future<List<Photosdata2>> getApiPost() async {
    final response = await http
        .get(Uri.parse("https://jsonplaceholder.typicode.com/photos"));
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body.toString());
      for (Map i in data) {
        postList.add(Photosdata2.fromJson(i));
      }
      return postList;
    } else {
      return postList;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Photo Gallary App"),
      ),
      body: Column(
        children: [
          FutureBuilder(
            future: getApiPost(),
            builder: (BuildContext context,
              AsyncSnapshot<List<Photosdata2>> snapshot) {
              if(!snapshot.hasData){
                return Center(
                  child: Text("Loading"),
                );
              }
              else{
                return ListView.builder(
                    itemCount: postList.length,
                    itemBuilder: (context,index)
                    {return Text(index.toString());});
              }
          },

          )
        ],
      ),
    );
  }
}
