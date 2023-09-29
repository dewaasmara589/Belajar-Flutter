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
      home: Scaffold(
        appBar: AppBar(
          title: Text("First Screen"),
        ),
        body: Container(
          margin: EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Container(
                child: ElevatedButton(
                  onPressed: () {
                    // Aksi ketika button diklik
                  },
                  child: Text("Tombol"),
                ),
              ),
              Container(
                child: TextButton(
                  onPressed: () {
                    // Aksi ketika button diklik
                  },
                  child: Text('Text Button'),
                ),
              ),
              Container(
                child: OutlineButton(
                  onPressed: () {
                    // Aksi ketika button diklik
                  },
                  child: Text('Outline Button'),
                ),
              ),
              Container(
                child: IconButton(
                  icon: Icon(Icons.volume_up),
                  tooltip: 'Increase volume by 10',
                  onPressed: () {
                    // Aksi ketika button diklik
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
