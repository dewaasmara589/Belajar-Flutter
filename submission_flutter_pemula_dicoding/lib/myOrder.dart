import 'package:flutter/material.dart';
import "package:intl/intl.dart";
import 'package:submission_flutter_pemula_dicoding/data.dart';
import 'package:submission_flutter_pemula_dicoding/dataModel.dart';
import 'package:submission_flutter_pemula_dicoding/detail.dart';

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
        child: Content(),
      )
    );
  }
}

class Content extends StatefulWidget{
  Content();

  @override
  _Content createState() => _Content();

}

class _Content extends State<Content> {
  @override
  Widget build(BuildContext context) {
    List<dataModel> adjustData = [];
    List<int> getTotal = [];
    mapDataDetail.forEach((key, value) {
      for (var item in listDataModel) {
        if (key == item.id){
          adjustData.add(dataModel(id: item.id, image: item.image,
              title: item.title, subTitle: item.subTitle,
              rating: item.rating, duration: item.duration,
              price: item.price, type: item.type, desc: item.desc));
          late int total = 0;
          for (var i in value) {
            total += i;
          }
          getTotal.add(total);
        }
      }
    });

    NumberFormat currencyFormatter = NumberFormat.currency(
      locale: 'id',
      symbol: 'Rp ',
      decimalDigits: 0,
    );

    return Column(
      children: [
        Center(
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 10.0),
            child : Column (
                children: [
                  const Text(
                    "My Order",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24.0,
                      color: Colors.brown,
                    ),
                  ),
                  const SizedBox(height: 5.0,),
                  Container(
                    height: 450.0,
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemCount: mapDataDetail.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            height: 120,
                            margin: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                            child: Row(
                              children: [
                                ClipRRect(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(5.0)
                                  ),
                                  child: Center(
                                    child: Image.asset(
                                      adjustData[index].image,
                                      width: 170,
                                      height: 120,
                                      fit: BoxFit.fill,
                                    ),
                                  )
                                ),
                                Expanded(
                                    child: Container(
                                      padding : EdgeInsets.symmetric(vertical: 10.0),
                                      child: Column(
                                        children: [
                                          Text(adjustData[index].title,
                                            textAlign: TextAlign.center,
                                            style: const TextStyle(
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(adjustData[index].subTitle,
                                            textAlign: TextAlign.center,
                                            style: const TextStyle(
                                              color: Colors.grey,
                                              fontSize: 12.0,
                                            ),
                                          ),
                                          SizedBox(height: 10,),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              const Text('Total : ',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontSize: 16.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Text(getTotal[index].toString(),
                                                textAlign: TextAlign.center,
                                                style: const TextStyle(
                                                  fontSize: 16.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 10,),
                                          Text(currencyFormatter.format(adjustData[index].price*getTotal[index]).toString(),
                                            textAlign: TextAlign.center,
                                            style: const TextStyle(
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                  ),
                                )
                              ],
                            ),
                          );
                        }
                    ),
                  )
                ]
            ),
          ),
        )
      ],
    );
  }

}