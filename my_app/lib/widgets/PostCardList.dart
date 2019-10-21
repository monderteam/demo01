import 'package:flutter/material.dart';
import 'PostCard.dart';

class PostCardList extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _PostCardListState();
  }
}

class _PostCardListState extends State<PostCardList> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          child: PostCard(),
        ),
        Container(
          child: PostCard(),
        ),
      ],
    );
  }
}