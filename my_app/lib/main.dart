// export PATH="$PATH:~/Desktop/flutter/bin"
import 'package:flutter/material.dart';
import 'package:my_app/widgets/PostCard.dart';

import 'widgets/PostCardList.dart';
import 'widgets/BottomNavyBar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: DefaultTabController(
        length: 5,
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/logo.png'),
              fit: BoxFit.fill
            )
          ),
          child: MyHomePage(title: 'Monder'),
        ),
      ), 
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        leading: Icon(Icons.photo_camera),
        title: TabBar(
          isScrollable: true,
          indicatorColor: Colors.orange,
          indicator: UnderlineTabIndicator(
            borderSide: BorderSide(color: Colors.orange, width: 5.0),
            insets: EdgeInsets.symmetric(horizontal:20.0)
          ),

          tabs: <Widget>[
            Container(
              alignment: Alignment.bottomCenter,
              margin: EdgeInsets.only(bottom:15.0),
              child: Row(
                children: <Widget>[
                  Text('Following'),
                  Icon(Icons.arrow_drop_down),
                ],
              )
            ),
            Text('Outfit'),
            Text('Beauty'),
            Text('Travel'),
            Text('Cosmetics'),
          ],
        ),
      ),



      body: TabBarView(
        children: <Widget>[
          PostCardList(),
          Container(
            color: Colors.amberAccent,
          ),
          Container(
            color: Colors.yellow,
          ),
          Container(
            color: Colors.blue,
          ),
          Container(
            color: Colors.green,
          ),
        ],
      ),
      
      bottomNavigationBar: BottomNavyBar(),

    );
  }
}
