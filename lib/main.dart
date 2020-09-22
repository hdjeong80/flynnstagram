import 'package:flutter/material.dart';
import 'package:flynnstagram/constants/material_white.dart';
import 'package:flynnstagram/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      theme: ThemeData(
        primarySwatch: white,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
