import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
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

// Image.network
/*class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: Center(
        child: Image.network(
          'https://picsum.photos/200/300',
          width: 200,
          height: 200,
          errorBuilder: (context, exception, stackTrace) {
            return Text('Gagal memuat gambar...');
          },
        ),
      ),
    );
  }
}*/

// Image.asset
class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gambar Buku'),
      ),
      body: Column(
        children: <Widget>[
          Text(
            'Buku SideKicks',
            style: TextStyle(
              fontFamily: 'Oswald',
              fontSize: 30,
            ),
          ),
          Image.asset('images/buku.png', width: 200, height: 200),
        ],
      ),
    );
  }
}
