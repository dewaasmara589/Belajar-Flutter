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
    var descriptionSelected;
    var priceSelected;

    for (var item in listDataModel) {
      if (idSelectedListMakanan.toString() == item.id.toString()){
        imageSelected = item.image;
        subTitleSelected = item.subTitle;
        ratingSelected = item.rating.toString();
        descriptionSelected = item.desc.toString();
        priceSelected = item.price.toString();
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
              Spacer(),
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
              const SizedBox(height: 3.0,),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10.0),
                child : Text(
                  descriptionSelected,
                  style: const TextStyle(
                    fontSize: 12.0,
                    color: Colors.blueGrey,
                  ),
                ),
              ),
              const Spacer(flex: 2,),
              Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox.fromSize(
                        size: const Size(30, 30),
                        child: ClipOval(
                          child: Material(
                            color: Colors.orange,
                            child: InkWell(
                                splashColor: Colors.yellow,
                                onTap: () {

                                },
                                child: const Center(
                                  child: Text(
                                    "-",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 26.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 12,),
                      const Text(
                        "1",
                        style: TextStyle(
                          fontSize: 22.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(width: 12,),
                      SizedBox.fromSize(
                        size: const Size(30, 30),
                        child: ClipOval(
                          child: Material(
                            color: Colors.orange,
                            child: InkWell(
                                splashColor: Colors.yellow,
                                onTap: () {},
                                child: const Center(
                                  child: Text(
                                    "+",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 23.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 20,),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: Text(
                            priceSelected,
                            style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 22.0,
                            ),
                          ),
                        ),
                        Container(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Stack(
                              children: <Widget>[
                                Positioned.fill(
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      color: Colors.orange,
                                    ),
                                  ),
                                ),
                                TextButton(
                                  style: TextButton.styleFrom(
                                    foregroundColor: Colors.white,
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 45.0,
                                      vertical: 10.0,
                                    ),
                                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                    textStyle: const TextStyle(fontSize: 14),
                                  ),
                                  onPressed: () {},
                                  child: const Text(
                                    'Add to Cart',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16.0,
                                    ),),
                                ),
                              ],
                            ),
                          )
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }


}