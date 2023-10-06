import 'package:flutter/material.dart';
import "package:intl/intl.dart";
import 'package:submission_flutter_pemula_dicoding/data.dart';
import 'package:submission_flutter_pemula_dicoding/dataModel.dart';
import 'package:submission_flutter_pemula_dicoding/myOrder.dart';
import 'package:submission_flutter_pemula_dicoding/orderNow.dart';
import 'package:submission_flutter_pemula_dicoding/detail.dart';

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
        backgroundColor: Colors.brown,
        title: const Text('WM Spesial Wuenak'),
        actions: [
          Padding(
              padding: EdgeInsets.fromLTRB(0, 5, 10, 0),
              child: Visibility(
                child: Badge(
                  alignment: AlignmentDirectional.topEnd,
                  label: Text('1'),
                  child: Container(
                    padding: const EdgeInsets.all(0.0),
                    width: 30.0,
                    child: IconButton(
                        padding: EdgeInsets.zero,
                        icon: const Icon(Icons.shopping_cart, color: Colors.orange,),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => myOrder()));
                        }
                    ),
                  ),
                ),
                // visible: jumlahOrder > 0 ? true : false,
              )
          )
        ],
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
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => orderNow()),
                                  );
                                },
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
          const MenuText(titleMenu: ['All', 'Appetizer', 'Main Course', 'Dessert']),
        ],
      ),
    );
  }
}

class MenuText extends StatefulWidget {
  final List<String> titleMenu;

  const MenuText({Key ? key, required this.titleMenu}) : super(key: key);

  @override
  State<MenuText> createState() => _MenuText();
}

class _MenuText extends State<MenuText> {
  Map<int, bool> menuTextIsPressed = {
    0 : true,
    1 : false,
    2 : false,
    3 : false
  };

  var getKey = 0;
  var selectedValue = 'All';

  late List<dataModel> newDataList = [];

  NumberFormat currencyFormatter = NumberFormat.currency(
    locale: 'id',
    symbol: 'Rp ',
    decimalDigits: 0,
  );

  @override
  Widget build(BuildContext context) {
    if (selectedValue == 'All'){
      newDataList.clear();
      newDataList = List.from(listDataModel);
    }
    return Column(
      children: [
        Container(
        height: 30.0,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: widget.titleMenu.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget> [
                      Container(
                          margin: const EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(
                            border: Border.all(width: 2, color: getKey == index? Colors.brown : Colors.transparent,),
                            color: getKey == index ? const Color.fromRGBO(128, 128, 128, 0.2) : Colors.transparent,
                            borderRadius: const BorderRadius.all(Radius.circular(5)),
                          ),
                          child : Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5.0),
                              child: Text(
                                widget.titleMenu[index].toString(),
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 14.0,
                                ),
                              )
                          )
                      )
                    ],
                  ),
                  onTap : () {
                    menuTextIsPressed.updateAll((key, value){
                      if(key == index){
                        return true;
                      }else{
                        return false;
                      }
                    });


                    // Trigger MenuText
                    var trueKey = menuTextIsPressed.keys.firstWhere((k) => menuTextIsPressed[k] == true);

                    setState(() {
                      selectedValue = widget.titleMenu[index].toString();
                      getKey = trueKey;

                      if (selectedValue == 'All'){
                        newDataList.clear();
                        newDataList = List.from(listDataModel);
                      }else{
                        newDataList.clear();
                        for (var item in listDataModel) {
                          if (selectedValue == item.type){
                            newDataList.add(dataModel(id: item.id, image: item.image,
                                title: item.title, subTitle: item.subTitle,
                                rating: item.rating, duration: item.duration,
                                price: item.price, type: item.type, desc: item.desc));
                          }
                        }
                      }
                    });
                  }
              );
            }
          )
        ),
        const SizedBox(height : 10.0),
        Container(
          height: 398.0,
          child: GridView.count(
            crossAxisCount: 2,
            padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
            crossAxisSpacing: 0.0,
            mainAxisSpacing: 0.0,
            children: newDataList.map((data) =>
            Card(
              child: Container(
                alignment: Alignment.center, // use aligment
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  // border: Border.all(color: Colors.black),
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => detail(
                            idSelectedListMakanan: data.id.toString(),
                            nameSelectedListMakanan: data.title.toString(),
                        )),
                    );
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.all(
                            Radius.circular(5.0)
                        ),
                        child: Image.asset(
                          data.image,
                          height: 85,
                          fit: BoxFit.fill,
                        ),
                      ),
                      const SizedBox(height: 3,),
                      Text(data.title,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(data.subTitle,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 12.0,
                        ),
                      ),
                      const SizedBox(height: 3,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.star,
                            color: Colors.orange,
                            size: 15.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 2.0),
                            child: Text(data.rating.toString(),
                              style: const TextStyle(fontSize: 12.0),),
                          ),
                          const Text('|'),
                          const SizedBox(width: 2.0,),
                          const Icon(
                            Icons.delivery_dining_sharp,
                            color: Colors.orange,
                            size: 15.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 2.0),
                            child: Text(data.duration,
                              style: const TextStyle(fontSize: 12.0),),
                          ),
                        ],
                      ),
                      const SizedBox(height: 3,),
                      Text(currencyFormatter.format(data.price),
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )).toList(),
          ),
        )
      ],
    );
  }
}