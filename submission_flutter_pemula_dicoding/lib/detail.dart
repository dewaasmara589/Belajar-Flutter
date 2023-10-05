import 'package:flutter/material.dart';

void main() => runApp(detail(idSelectedListMakanan: null, nameSelectedListMakanan: null));

class detail extends StatelessWidget{
  var idSelectedListMakanan;
  var nameSelectedListMakanan;

  detail({Key ? key, required this.idSelectedListMakanan, required this.nameSelectedListMakanan}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home:  Scaffold(
        body: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                idSelectedListMakanan,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
              Text(
                nameSelectedListMakanan,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}