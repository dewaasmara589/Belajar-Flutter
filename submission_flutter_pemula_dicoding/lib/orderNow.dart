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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              margin: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
              padding: const EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 20.0),
              decoration: BoxDecoration(
                color: Colors.grey,
              ),
              child: FloatingActionButton.extended(
                onPressed: () {},
                label: Text('Email'),
                icon: Icon(
                  Icons.email_outlined,
                  size: 24.0,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 10.0),
              padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 40.0),
              decoration: BoxDecoration(
                color: Colors.grey,
              ),
              child: FloatingActionButton.extended(
                backgroundColor: Colors.green,
                onPressed: () {},
                label: Text('Whatssapp'),
                icon: Image(
                  image: AssetImage('assets/images/ic_wa.png'),
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}