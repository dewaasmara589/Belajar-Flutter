import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FirstScreen(), //Panggil FirstScreen disini
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        title: Text('First Screen'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        child: Text('Hi', style: TextStyle(fontSize: 40)),
        decoration: BoxDecoration(
            color: Colors.red,
            // shape: BoxShape.circle
            // boxShadow: [
            //   BoxShadow(color: Colors.black,
            //   offset: Offset(2, 6),
            //   blurRadius: 10)
            // ],
            border: Border.all(color: Colors.green, width: 3),
            borderRadius: BorderRadius.circular(10)),
        // width: 200,
        // height: 100,
        // padding: EdgeInsets.all(30),
        margin: EdgeInsets.all(30),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}
