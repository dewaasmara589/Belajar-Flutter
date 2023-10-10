import 'package:flutter/material.dart';
import "package:intl/intl.dart";
import 'package:submission_flutter_pemula_dicoding/data.dart';
import 'package:submission_flutter_pemula_dicoding/dataModel.dart';
import 'package:submission_flutter_pemula_dicoding/detail.dart';
import 'package:submission_flutter_pemula_dicoding/main.dart';

void main() => runApp(const myOrder());

class myOrder extends StatelessWidget{
  const myOrder({super.key});

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
            SizedBox(height: 10.0,),
            const Center(
              child: Text(
                "My Order",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                  color: Colors.brown,
                ),
              ),
            ),
            mapDataDetail.isEmpty ?
            const Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "~ Belum ada Pesanan ~",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                        color: Colors.grey,
                      )
                    )
                  ],
                )
            )
                : const Content()
          ]
        ),
      )
    );
  }
}

class Content extends StatefulWidget{
  const Content({super.key});

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

    late int totalHargaSemua = 0;
    for (int x = 0; x < adjustData.length; x++){
      late int totalHarga = adjustData[x].price * getTotal[x];
      totalHargaSemua += totalHarga;
    }

    var ppn = totalHargaSemua / 10;
    var layanan = 2000;

    var totalPembayaran = totalHargaSemua + ppn + layanan;

    return Column(
      children: [
        Center(
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 10.0),
            child : Column (
                children: [
                  const SizedBox(height: 5.0,),
                  SizedBox(
                    height: 450.0,
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemCount: mapDataDetail.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            height: 120,
                            margin: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
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
                                      padding : const EdgeInsets.symmetric(vertical: 10.0),
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
                                          const SizedBox(height: 10,),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              const Text('Harga : ',
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
                                          const SizedBox(height: 10,),
                                          Text(currencyFormatter.format(adjustData[index].price * getTotal[index]).toString(),
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
                  ),
                  Container(
                    height: 1.0,
                    margin: const EdgeInsets.symmetric(vertical: 5.0),
                    color: Colors.black,
                  ),
                  Row(
                    children: [
                      const SizedBox(width: 10,),
                      const Expanded(
                        child: Text('Total',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          )
                        )
                      ),
                      Expanded(
                        child: Text(currencyFormatter.format(totalHargaSemua).toString(),
                            textAlign: TextAlign.end,
                            style: const TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            )
                        )
                      ),
                      const SizedBox(width: 10,),
                    ],
                  ),
                  const SizedBox(height: 5.0,),
                  Row(
                    children: [
                      const SizedBox(width: 10,),
                      const Expanded(
                          child: Text('PPN (10%)',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              )
                          )
                      ),
                      Expanded(
                          child: Text(currencyFormatter.format(ppn).toString(),
                              textAlign: TextAlign.end,
                              style: const TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              )
                          )
                      ),
                      const SizedBox(width: 10,),
                    ],
                  ),
                  const SizedBox(height: 5.0,),
                  Row(
                    children: [
                      const SizedBox(width: 10,),
                      const Expanded(
                          child: Text('Biaya Layanan',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              )
                          )
                      ),
                      Expanded(
                          child: Text(currencyFormatter.format(layanan).toString(),
                              textAlign: TextAlign.end,
                              style: const TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              )
                          )
                      ),
                      const SizedBox(width: 10,),
                    ],
                  ),
                  const SizedBox(height: 5.0,),
                  Row(
                    children: [
                      const SizedBox(width: 10,),
                      const Expanded(
                          child: Text('Total Pembayaran',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              )
                          )
                      ),
                      Expanded(
                          child: Text(currencyFormatter.format(totalPembayaran).toString(),
                              textAlign: TextAlign.end,
                              style: const TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              )
                          )
                      ),
                      const SizedBox(width: 10,),
                    ],
                  ),
                  const SizedBox(height: 15.0,),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10.0),
                    width: double.infinity,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Stack(
                        children: <Widget>[
                          Positioned.fill(
                            child: Container(
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                  colors: <Color>[
                                    Color(0xFF78921d),
                                    Color(0xFFCBD394),
                                    Color(0xFF6F8817),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          TextButton(
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.black,
                              padding: const EdgeInsets.symmetric(
                                vertical: 10.0,
                              ),
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              textStyle: const TextStyle(fontSize: 14),
                            ),
                            onPressed: () {
                              setState(() {
                                mapDataDetail.clear();
                                streamController.add(mapDataDetail.length);
                              });

                              Navigator.of(context, rootNavigator: true).pop(context);
                            },
                            child: const Center(
                              child: Text(
                                'Bayar',
                                style: TextStyle(
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )
                          ),
                        ],
                      ),
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