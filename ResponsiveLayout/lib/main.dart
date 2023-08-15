import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }

}

// MediaQuery
/* class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    Orientation orientation = MediaQuery.of(context).orientation;

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Screen width : ${screenSize.width.toStringAsFixed(2)}',
            style: const TextStyle(color: Colors.white, fontSize: 18),
            textAlign: TextAlign.center,
          ),
          Text(
            'Orientasi : $orientation',
            style: const TextStyle(color: Colors.white, fontSize: 18),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
} */

// LayoutBuilder
/*class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Row(
        children: [
          Expanded(
              child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constrains){
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'MediaQuery : ${screenSize.width.toStringAsFixed(2)}',
                        style: const TextStyle(color: Colors.white, fontSize: 18),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'LayoutBuilder : ${constrains.maxWidth}',
                        style: const TextStyle(color: Colors.white, fontSize: 18),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  );
                },
              ),
          ),
          Expanded(
            flex: 3,
              child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constrains){
                  return Container(
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'MediaQuery : ${screenSize.width.toStringAsFixed(2)}',
                          style: const TextStyle(color: Colors.blueGrey, fontSize: 18),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          'LayoutBuilder : ${constrains.maxWidth}',
                          style: const TextStyle(color: Colors.blueGrey, fontSize: 18),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  );
                },
              )
          )
        ],
      ),
    );
  }
}*/

//ResponsivePage
class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constrains){
          if(constrains.maxWidth < 600){
            return ListView(
              children: _generateConstraints(),
            );
          }else if(constrains.maxWidth < 900){
            return GridView.count(
              crossAxisCount: 2,
              children: _generateConstraints(),
            );
          }else{
            return GridView.count(
              crossAxisCount: 6,
              children: _generateConstraints(),
            );
          }
        },
      )
    );
  }

  List<Widget> _generateConstraints(){
    return List<Widget>.generate(20, (index){
      return Container(
        margin: const EdgeInsets.all(8),
        color: Colors.blueGrey,
        height: 200,
      );
    });
  }
}