import 'package:flutter/material.dart';
import 'package:submission_flutter_pemula_dicoding/dataModel.dart';

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

List<dataModel> listDataModel = [
  dataModel(id: 1, image: "assets/images/content2.jpg",
      title: "French Croquette", subTitle: "Kroket", rating: 4.7,
      duration: "10 min", price: "Rp 36.000", type: "Main Course",
      desc: "French Croquette atau di Indonesia lebih dikenal dengan "
          "sebutan kroket adalah makanan berbahan dasar kentang. "
          "Selain kentang, di dalamnya dicampurkan juga daging lalu "
          "dibentuk sedemikian rupa kemudian dibaluri tepung roti dan "
          "digoreng. Makanan ringan yang populer pada masa penjajahan "
          "Belanda ini biasanya dibungkus menggunakan kertas krep"),
  dataModel(id: 2, image: "assets/images/content3.jpg",
      title: "Gulai", subTitle: "Ikan Patin", rating: 4.8,
      duration: "30 min", price: "Rp 30.000", type: "Main Course",
      desc: "Seperti namanya, gulai yang satu ini berbahan dasar ikan patin "
          "yang diberi bumbu-bumbu dan rempah kemudian dimasak. Tak hanya "
          "lezat, makanan ini juga kaya akan gizi.Gulai ikan patin cocok "
          "dijadikan pelengkap makan yang disajikan dengan taburan bawang "
          "goreng dan nasi putih."),
  dataModel(id: 3, image: "assets/images/content4.jpg",
      title: "Mie", subTitle: "Bangka", rating: 4.9,
      duration: "10 min", price: "Rp 36.000", type: "Main Course",
      desc: "Mi Bangka atau dikenal juga dengan nama bakmi Bangka "
          "merupakan hidangan tradisional dari Provinsi Bangka Belitung. "
          "Kuliner ini biasanya ditambah dengan aneka topping seperti "
          "bakso sapi, udang, irisan ayam, dan lainnya."),
  dataModel(id: 4, image: "assets/images/content5.jpg",
      title: "Ayam", subTitle: "Betutu", rating: 5.0,
      duration: "90 min", price: "Rp 52.000", type: "Main Course",
      desc: "Ayam betutu merupakan hidangan khas Bali, terbuat dari daging "
          "ayam utuh dan dimasak dengan bumbu base genep."),
  dataModel(id: 5, image: "assets/images/content6.jpg",
      title: "Ayam", subTitle: "Taliwang", rating: 4.9,
      duration: "80 min", price: "Rp 55.000", type: "Main Course",
      desc: "Ayam Taliwang adalah makanan khas yang berasal dari Karang "
          "Taliwang, Mataram, Nusa Tenggara Barat. Makanan ini berbahan "
          "dasar daging ayam."),
  dataModel(id: 6, image: "assets/images/content7.jpg",
      title: "Soto", subTitle: "Banjar", rating: 4.8,
      duration: "15 min", price: "Rp 25.000", type: "Main Course",
      desc: "Soto Banjar adalah soto ayam berempah yang lahir di tengah "
          "masyarakat suku Banjar di Kalimantan Selatan. Bisa dibilang juga "
          "bahkan hidangan ini adalah salah satu masakan terpopuler "
          "dari Kalimantan. Berbahan dasar ayam kampung, soto ini memiliki "
          "keunikan, yaitu bumbunya diperkaya dengan rempah-rempah biji pala, "
          "cengkih, dan kayu manis. Ada pula yang menambahkan beberapa butir "
          "kapulaga ke dalam air rebusan kuah soto yang semakin gurih berkat "
          "Royco Kaldu Ayam. Selain berkuah bening, ada juga yang menambahkan "
          "susu ke dalam kaldunya sehinga kuah soto nampak lebih keruh."),
  dataModel(id: 7, image: "assets/images/content8.jpg",
      title: "Soto", subTitle: "Betawi", rating: 4.8,
      duration: "17 min", price: "Rp 28.000", type: "Main Course",
      desc: "Soto Betawi merupakan salah satu jenis soto khas Nusantara "
          "yang paling digemari. Berkuah putih dan cukup kental, soto Betawi "
          "ada yang terbuat dari santan kelapa atau susu."),
  dataModel(id: 8, image: "assets/images/content9.jpg",
      title: "Turkish Baklava", subTitle: "with Turkish Tea", rating: 4.6,
      duration: "10 min", price: "Rp 23.000", type: "Dessert",
      desc: "sejenis makanan ringan di kawasan Turki dan daerah-daerah "
          "tempat mantan kekuasaan Kesultanan Utsmaniyah. Makanan ini "
          "terdiri dari kacang walnut atau pistache yang dicincang dan "
          "diberi pemanis (gula atau madu) dan dibungkus adonan roti tipis"),
  dataModel(id: 9, image: "assets/images/content10.jpg",
      title: "Salad", subTitle: "Buah, Yoghurt", rating: 4.8,
      duration: "5 min", price: "Rp 28.000", type: "Appetizer",
      desc: "Jika Anda sedang ingin memaksimalkan program diet, salad buah "
          "yoghurt merupakan salah satu menu yang pas disantap sebagai "
          "hidangan penutup Anda."),
  dataModel(id: 10, image: "assets/images/content11.jpg",
      title: "Gudeg", subTitle: "Yogyakarta", rating: 5.0,
      duration: "30 min", price: "Rp 40.000", type: "Main Course",
      desc: "Gudeg merupakan masakan yang berbahan utama nangka muda atau "
          "oleh warga lokal disebut gori. Dalam prosesnya, potongan daging "
          "nangka ini direbus dengan gula merah dan santan dengan api kecil "
          "selama beberapa jam. Percaya atau tidak, gudeg akan lebih nikmat "
          "rasanya dimasak dengan menggunakan periuk tanah liat di atas "
          "tungku. Gudeg Yogyakarta ini berjenis kering atau disajikan tanpa "
          "kuah dan tampak lebih coklat, serta terasa lebih manis."),
];

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
          const MenuText(titleMenu: ['All', 'Appetizer', 'Main Course', 'Dessert']),
          const SizedBox(height: 5.0,),

          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
              crossAxisSpacing: 0.0,
              mainAxisSpacing: 0.0,
              children: listDataModel.map((data) => Card(
                child: Container(
                  alignment: Alignment.center,// use aligment
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    // border: Border.all(color: Colors.black),
                  ),
                  child: InkWell(
                    onTap: (){
                      print('Clicked : ' + data.id.toString());
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.all(
                              Radius.circular(5.0)
                          ),
                          child : Image.asset(
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
                            color : Colors.grey,
                            fontSize: 12.0,
                          ),
                        ),
                        const SizedBox(height: 3,),
                        Row(
                          crossAxisAlignment : CrossAxisAlignment.center,
                          mainAxisAlignment : MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.star,
                              color: Colors.orange,
                              size: 15.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 2.0),
                              child : Text(data.rating.toString(), style: const TextStyle(fontSize: 12.0),),
                            ),
                            const Text('|'),
                            const SizedBox(width: 2.0,),
                            const Icon(
                              Icons.delivery_dining_sharp,
                              color: Colors.orange,
                              size: 15.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 2.0),
                              child : Text(data.duration, style: const TextStyle(fontSize: 12.0),),
                            ),
                          ],
                        ),
                        const SizedBox(height: 3,),
                        Text(data.price,
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
              ),).toList(),
            ),
          ),

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
  bool menuTextIsPressed = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      height: 40.0,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: widget.titleMenu.length, itemBuilder: (context, index) {
        return Container(
          width: 85.0,
          child: Card(
            color: Colors.brown,
            child: Center(
                child: Text(widget.titleMenu[index].toString(),
                  style: const TextStyle(color: Colors.white, fontSize: 12.0),
                )
            ),
          ),
        );
      }),
    );
  }
}
