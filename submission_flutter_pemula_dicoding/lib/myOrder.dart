import 'package:flutter/material.dart';

void main() => runApp(myOrder());

class myOrder extends StatelessWidget{
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
          icon: const Icon(Icons.arrow_back_sharp),
        ),
        centerTitle: true,
        backgroundColor: Colors.brown,
        title: const Text('WM Spesial Wuenak'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 10.0),
                  child : const Column (
                      children: [
                        Text(
                          "My Order",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24.0,
                            color: Colors.brown,
                          ),
                        ),
                      ]
                  ),
              ),
            )
          ],
        )
      ),
    );
  }
}