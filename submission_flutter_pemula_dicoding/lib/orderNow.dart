import 'package:flutter/material.dart';

void main() => runApp(orderNow());

class orderNow extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home:  const MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context, rootNavigator: true).pop(context);
          },
          icon: Icon(Icons.arrow_back_sharp),
        ),
        centerTitle: true,
        backgroundColor: Colors.orange,
        title: const Text('Order Now'),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(10.0),
            height: 35.0,
            decoration: BoxDecoration(
              color: Colors.orange,
            ),
          )
        ],
      ),
    );
  }
}