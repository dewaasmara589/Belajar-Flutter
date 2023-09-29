import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget{
  const MyApp({super.key});

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
        centerTitle: true,
        backgroundColor: Colors.brown,
        title: const Text('WM Spesial Wuenak'),
      ),
      body: Column(
        children: <Widget> [
          Container(
            height: 200.0,
            margin: const EdgeInsets.all(10.0),
            decoration: const BoxDecoration(
              color: Colors.grey,
            ),
            child: Row(
              children: <Widget>[
                Flexible(
                  flex: 1,
                  fit: FlexFit.tight,
                  child: Container(
                    alignment: Alignment.center,
                    height: 120,
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(
                            bottom: 1, // Space between underline and text
                          ),
                          decoration: const BoxDecoration(
                              border: Border(bottom: BorderSide(
                                color: Colors.black,
                                width: 1.0, // Underline thickness
                              ))
                          ),
                          child: const Text(
                            "Menerima Pesanan",
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10.0,),
                        const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children : [
                              Icon(
                                Icons.add_call,
                                size: 14.0,
                              ),
                              SizedBox(width: 5.0,),
                              Text(
                                "081234567898",
                                style: TextStyle(fontSize: 12.0),
                              ),
                            ]
                        ),
                        const SizedBox(height: 5.0,),
                        const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children : [
                              Icon(
                                Icons.email,
                                size: 14.0,
                              ),
                              SizedBox(width: 5.0,),
                              Text(
                                "spesialwuenak@gmail.com",
                                style: TextStyle(fontSize: 12.0),
                              ),
                            ]
                        ),
                        const SizedBox(height: 15.0,),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Stack(
                            children: <Widget>[
                              Positioned.fill(
                                child: Container(
                                  decoration: const BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: <Color>[
                                        Color(0xFFFF8B17),
                                        Color(0xFFFF9E3D),
                                        Color(0xFFF7AE65),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              TextButton(
                                style: TextButton.styleFrom(
                                  foregroundColor: Colors.white,
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 20.0,
                                    vertical: 5.0,
                                  ),
                                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                  textStyle: const TextStyle(fontSize: 14),
                                ),
                                onPressed: () {},
                                child: const Text('Order Now'),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Flexible(
                  flex: 1,
                  fit: FlexFit.tight,
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      child: Image(
                        image: AssetImage('assets/images/content1.jpg'),
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Text(
            "Categories",
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height : 10.0),
          Container(
            
          ),
        ],
      ),
    );
  }
}
