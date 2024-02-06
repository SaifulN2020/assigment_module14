import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:photo_from_api/PhotosData.dart';
import 'package:photo_from_api/photo_details.dart';
import 'package:http/http.dart' as http;

class PhotoDisplay extends StatefulWidget {
  const PhotoDisplay({Key? key}) : super(key: key);

  @override
  State<PhotoDisplay> createState() => _PhotoDisplayState();
}

class _PhotoDisplayState extends State<PhotoDisplay> {
  List<PhotosData> postList = [];
  Future<List<PhotosData>> getApiPost() async {
    final response = await http
        .get(Uri.parse("https://jsonplaceholder.typicode.com/photos"));
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body.toString());
      for (Map i in data) {
        postList.add(PhotosData.fromJson(i));
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
      body: ListView.builder(itemBuilder: (context, index) {
        return ListTile(
          leading: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PhotoDetails()));
              },
              child: const Image(image: AssetImage("images/laptop.jpg"))),
          title: const Text("Title"),
          subtitle: const Text("This is subtitle"),
        );
      }),
    );
  }
}
