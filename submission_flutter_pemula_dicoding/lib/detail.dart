import 'package:flutter/material.dart';
import 'package:submission_flutter_pemula_dicoding/data.dart';

void main() => runApp(detail(idSelectedListMakanan: null, nameSelectedListMakanan: null));

class detail extends StatelessWidget{
  var idSelectedListMakanan;
  var nameSelectedListMakanan;

  detail({Key ? key, required this.idSelectedListMakanan, required this.nameSelectedListMakanan}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var imageSelected;
    var subTitleSelected;
    var ratingSelected;

    for (var item in listDataModel) {
      if (idSelectedListMakanan.toString() == item.id.toString()){
        imageSelected = item.image;
        subTitleSelected = item.subTitle;
        ratingSelected = item.rating.toString();
      }
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home:  Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.brown,
          title: const Text('WM Spesial Wuenak'),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                child : Column (
                  children: [
                    Text(
                      nameSelectedListMakanan,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Colors.brown,
                      ),
                    ),
                    Text(
                      '(' + subTitleSelected + ')',
                      style: const TextStyle(
                        fontSize: 14.0,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 230.0,
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 10.0),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(
                      Radius.circular(5.0)
                  ),
                  child : Image.asset(
                    imageSelected,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 40.0,),
              Container(
                margin: const EdgeInsets.fromLTRB(10.0, 0, 0, 0),
                child: Row(
                  children: [
                    const Text(
                      "Food Details",
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(width: 20.0,),
                    const Icon(
                      Icons.star,
                      color: Colors.orange,
                      size: 20.0,
                    ),
                    const SizedBox(width: 2.0,),
                    Text(
                      '(' + ratingSelected + ')',
                      style: const TextStyle(
                        fontSize: 15.0,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}