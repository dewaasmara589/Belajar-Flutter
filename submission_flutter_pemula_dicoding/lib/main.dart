import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home:  MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.brown,
        title: const Text('WM Spesial Wuenak'),
      ),
      body: Container(
        height: 200.0,
        margin: const EdgeInsets.all(10.0),
        decoration: const BoxDecoration(
          color: Colors.grey,
        ),
        child: const Row(
          children: <Widget>[
            Expanded(child: Text("data")),
            Expanded(child: Text("data")),
          ],
        ),
      ),
    );
  }
}
