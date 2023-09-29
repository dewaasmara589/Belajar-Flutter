import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FirstScreen"),
      ),
      // body: Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //   // mainAxisAlignment: MainAxisAlignment.spaceAround,
      //   // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //   // mainAxisAlignment: MainAxisAlignment.start,
      //   // mainAxisAlignment: MainAxisAlignment.center,
      //   // mainAxisAlignment: MainAxisAlignment.end,
      //   children: <Widget>[
      //     Icon(Icons.share),
      //     Icon(Icons.thumb_up),
      //     Icon(Icons.thumb_down),
      //   ],
      // ),

      body: Column(
        children: <Widget>[
          Text(
            "Sebuah Judul",
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          Text("Lorem ipsum dolor sit amet")
        ],
      ),
    );
  }
}
