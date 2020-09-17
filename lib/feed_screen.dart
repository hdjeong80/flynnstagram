import 'package:flutter/material.dart';

class FeedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Flynnstagram',
          style: TextStyle(
            fontFamily: 'VeganStyle',
            color: Colors.black87,
          ),
        ),
      ),
      // body: ListView.builder(itemBuilder: null),
    );
  }
}
