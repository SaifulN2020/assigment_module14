import 'package:flutter/material.dart';

class PhotoDetails extends StatefulWidget {
  const PhotoDetails({Key? key}) : super(key: key);

  @override
  State<PhotoDetails> createState() => _PhotoDetailsState();
}

class _PhotoDetailsState extends State<PhotoDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Photo Details"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 100,
              color: Colors.pinkAccent,
              child: const Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text("600*600")],
                ),
              ),
            ),
            const Text("Title :"),
            const Text("ID :")
          ],
        ),
      ),
    );
  }
}
