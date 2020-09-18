import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flynnstagram/constants/common_size.dart';
import 'package:flynnstagram/widgets/comment.dart';
import 'package:flynnstagram/widgets/rounded_avatar.dart';

import 'my_progress_indicator.dart';

class Post extends StatelessWidget {
  final int index;
  Size size;

  Post(
    this.index, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (size == null) size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _postHeader(),
        _postImage(),
        _postActions(),
        _postLikes(),
        _postCaption(),
      ],
    );
  }

  Widget _postCaption() {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: common_gap, vertical: common_xxs_gap),
      child: Comment(
        showImage: false,
        username: 'testingUser',
        text: 'I have money',
      ),
    );
  }

  Padding _postLikes() {
    return Padding(
      padding: const EdgeInsets.all(common_gap),
      child: Text(
        '12000 likes',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }

  Row _postActions() {
    return Row(
      children: [
        IconButton(
          onPressed: null,
          icon: Icon(Icons.favorite_border),
          color: Colors.black87,
        ),
        IconButton(
          onPressed: null,
          icon: Icon(Icons.reply),
          color: Colors.black87,
        ),
        IconButton(
          onPressed: null,
          icon: Icon(Icons.share),
          color: Colors.black87,
        ),
        Spacer(),
        IconButton(
          onPressed: null,
          icon: ImageIcon(AssetImage('assets/images/bookmark.png')),
          color: Colors.black87,
        ),
      ],
    );
  }

  Widget _postHeader() {
    return Row(children: <Widget>[
      Padding(
        padding: const EdgeInsets.all(common_xxs_gap),
        child: RoundedAvatar(),
      ),
      Expanded(child: Text('username')),
      IconButton(
        onPressed: null,
        icon: Icon(Icons.more_horiz),
      ),
    ]);
  }

  CachedNetworkImage _postImage() {
    return CachedNetworkImage(
      imageUrl: 'https://picsum.photos/id/$index/200/200',
      placeholder: (context, url) {
        return MyProgressIndicator(
          containerSize: size.width,
        );
      },
      imageBuilder: (context, imageProvider) {
        return AspectRatio(
            aspectRatio: 1,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
              ),
            ));
      },
    );
  }
}
