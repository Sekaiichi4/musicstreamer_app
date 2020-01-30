import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Music Streamer',
      theme: ThemeData(),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color(0xFF212121),
      child: Stack(
        children: <Widget>[
          Center(
            // Round Middle
            child: Container(
              height: 250,
              width: 250,
              decoration: BoxDecoration(
                  color: const Color(0xFF242424),
                  shape: BoxShape.circle,
                  boxShadow: const <BoxShadow>[
                    BoxShadow(
                        //Highlight
                        offset: Offset(-3, -3),
                        color: Color(0xFF2d2d2d),
                        blurRadius: 5),
                    BoxShadow(
                        //Shadow
                        offset: Offset(5, 5),
                        color: Color(0xFF1b1b1b),
                        blurRadius: 5),
                  ]),
            ),
          ),
          Center(
            // Round Middle Hole
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: const Color(0xFF191919),
                shape: BoxShape.circle,
                boxShadow: const <BoxShadow>[
                  BoxShadow(
                      //Upper Shadow
                      offset: Offset(-0, -0),
                      color: Color(0xFF121212),
                      blurRadius: 3,
                      spreadRadius: 1),
                  BoxShadow(
                      //Shadow
                      offset: Offset(3, 3),
                      color: Color(0xFF262626),
                      blurRadius: 5,
                      spreadRadius: 3),
                ],
              ),
            ),
          ),
          Center(
            // Round Middle Hole Button
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: const Color(0xFF191919),
                shape: BoxShape.circle,
                boxShadow: const <BoxShadow>[
                  BoxShadow(
                      //Shadow
                      offset: Offset(3, 3),
                      color: Color(0xFF121212),
                      blurRadius: 5,
                      spreadRadius: 5),
                  BoxShadow(
                    //highlight
                    offset: Offset(-1, -1),
                    color: Color(0xFF404040),
                    blurRadius: 2,
                  ),
                ],
              ),
              child: Icon(
                Icons.file_download,
                color: Color(0xFF303030),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
