import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flynnstagram/widgets/post.dart';

class FeedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        leading: IconButton(
          onPressed: () => print('camera'),
          icon: ImageIcon(
            AssetImage('assets/images/actionbar_camera.png'),
            color: Colors.black87,
          ),
        ),
        middle: Text(
          'Flynnstagram',
          style: TextStyle(
            fontFamily: 'VeganStyle',
            color: Colors.black87,
          ),
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              icon: Icon(Icons.message),
              onPressed: () => print('message'),
            ),
          ],
        ),
      ),
      body: ListView.builder(
        itemBuilder: feedListBuilder,
        itemCount: 30,
      ),
    );
  }

  Widget feedListBuilder(BuildContext context, int index) {
    return Post(index);
  }
}
