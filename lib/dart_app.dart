import 'package:flutter/material.dart';
import 'package:photo_from_api/photo_display.dart';

class DartApp extends StatefulWidget {
  const DartApp({Key? key}) : super(key: key);

  @override
  State<DartApp> createState() => _DartAppState();
}

class _DartAppState extends State<DartApp> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
theme: ThemeData(
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.blue,
    titleTextStyle: TextStyle(fontSize: 24,color: Colors.white)
  )
),
      home: PhotoDisplay(),
    );

  }
}
