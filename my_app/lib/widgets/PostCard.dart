import 'package:flutter/material.dart';

class PostCard extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _PostCardState();
  }
}

class _PostCardState extends State<PostCard> {

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(left: 15.0, right: 15.0, top: 10.0),
      elevation: 2,
      child: Column(
        children: <Widget>[
          // A //
          Row(
            children: <Widget>[
              /* whats inside the roll */
              //1. this is the avater, a stack
              new Container(
                margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 20.0, bottom: 10.0),
                width: 50.0,
                height: 50.0,
                decoration: new BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xff7c94b6),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/profileimages/user_01.jpg'),
                  )
                ),
              ),
              Column( //2.this is the user name and bio
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // this is the user name
                  Text('User Name', style: TextStyle(fontWeight: FontWeight.bold)),
                  //this is the bio/discription 
                  Text('addtional information')
                ],
              ),
              //3. this is a button of more actions: first row finished 
              Spacer(),
              IconButton(
                icon: Icon(Icons.arrow_drop_down),
                onPressed: (){},
              ),
            ],
          ),


          // B //
          /* a module of text content */

          Row(
            children: <Widget>[
              //1. text content,
              Flexible(
                flex: 3,
                child: Container(
                  margin: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
                  child: Text(
                    'This is the sample content of this card This is the sample content of this card This is the sample content of this card',
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.justify,
                    maxLines: 5,
                    ),
                )
              ),
              //2. text button : full text
            ],
          ),

          // C //
          /* gird of images */
          GridView.count(
            shrinkWrap: true,
            primary: false,
            padding: const EdgeInsets.all(5),
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
            crossAxisCount: 3,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text('He\'d have you all unravel at the'),
                color: Colors.teal[100],
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text('Heed not the rabble'),
                color: Colors.teal[200],
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text('Sound of screams but the'),
                color: Colors.teal[300],
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text('Who scream'),
                color: Colors.teal[400],
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text('Revolution is coming...'),
                color: Colors.teal[500],
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text('Revolution, they...'),
                color: Colors.teal[600],
              ),
            ],
          ),

          /* A line between */
          Divider(),

          // D //
          /* 3 containers of three action button */
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              //repost
              FlatButton(
                onPressed: () => {},
                padding: EdgeInsets.all(10.0),
                child: Row( // Replace with a Row for horizontal icon + text
                  children: <Widget>[
                    Icon(Icons.replay),
                    Text("999")
                  ],
                ),
              ),

              //comments
              FlatButton(
                onPressed: () => {},
                padding: EdgeInsets.all(10.0),
                child: Row( // Replace with a Row for horizontal icon + text
                  children: <Widget>[
                    Icon(Icons.mode_comment),
                    Text("999")
                  ],
                ),
              ),

              //comments
              FlatButton(
                onPressed: () => {},
                padding: EdgeInsets.all(10.0),
                child: Row( // Replace with a Row for horizontal icon + text
                  children: <Widget>[
                    Icon(Icons.favorite_border),
                    Text("999")
                  ],
                ),
              ),
              
            ],
          )

        ],
      ),
    );
  }
}