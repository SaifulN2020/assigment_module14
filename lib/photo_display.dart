import 'package:flutter/material.dart';
import 'package:photo_from_api/photo_details.dart';

class PhotoDisplay extends StatefulWidget {
  const PhotoDisplay({Key? key}) : super(key: key);

  @override
  State<PhotoDisplay> createState() => _PhotoDisplayState();
}

class _PhotoDisplayState extends State<PhotoDisplay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Photo Gallary App"),),
      body: ListView.builder(itemBuilder: (context,index){
        return ListTile(
          leading: ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const PhotoDetails()));
          }, child: const Image(image: AssetImage("images/laptop.jpg"))),
          title: const Text("Title"),
          subtitle: const Text("This is subtitle"),
          
        );
      }),
    );
  }
}
