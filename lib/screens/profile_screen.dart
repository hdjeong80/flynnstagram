import 'package:flutter/material.dart';
import 'package:flynnstagram/constants/common_size.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black87,
      body: Column(
        children: [
          _customAppBar(),
        ],
      ),
    );
  }

  Widget _customAppBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: common_xxs_gap, vertical: common_gap),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
              icon: Icon(Icons.add_outlined), onPressed: () => print('add')),
          Expanded(child: Text('username')),
          IconButton(icon: Icon(Icons.menu), onPressed: () => print('menu')),
        ],
      ),
    );
  }
}
