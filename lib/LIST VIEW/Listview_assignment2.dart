import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Listview_assignment2(),
  ));
}

class Listview_assignment2 extends StatelessWidget {
  var producticon = [
    "assets/icons/Apple-icon.png",
    "assets/icons/headphone-icon.png",
    "assets/icons/Banana-icon.png",
    "assets/icons/Mango-icon.png",
    "assets/icons/Grape-icon.png",
    "assets/icons/kiwi-icon.png",
    "assets/icons/orange-icon.png",
    "assets/icons/watermelon-icon.png",
  ];
  var productname = [
    "Apple",
    "Headset",
    "Banana",
    "Mango",
    "Grapes",
    "kiwi",
    "Orange",
    "Watermelon"
  ];
  var unit = [
    "Kg",
    "Pcs",
    "Kg",
    "Doz",
    "Kg",
    "Kg",
    "Kg",
    "Kg",
  ];
  var price = [
    "220",
    '400',
    "300",
    "220",
    "150",
    "310",
    '160',
    "140",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        title: Text("Product list",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart))
        ],
      ),
      body: ListView.custom(
          childrenDelegate: SliverChildBuilderDelegate(
              childCount: 8,
              (context, index) => Card(
                    color: Colors.blueGrey,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(producticon[index],
                            height: 80, width: 90),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 17),
                                  children: [
                                    TextSpan(text: "Name :"),
                                    TextSpan(
                                        text: productname[index],
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold)),
                                  ]),
                            ),
                            RichText(
                              text: TextSpan(
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 20),
                                  children: [
                                    TextSpan(text: "Unit :"),
                                    TextSpan(
                                        text: unit[index],
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold)),
                                  ]),
                            ),
                            RichText(
                              text: TextSpan(
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 20),
                                  children: [
                                    TextSpan(text: "Price :"),
                                    TextSpan(
                                        text:"${price[index]} Rs  ",
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold)),
                                  ]),
                            )
                          ],
                        ),
                        MaterialButton(
                          onPressed: () {},
                          shape: RoundedRectangleBorder(),
                          color: Colors.black87,
                          child: Text("Add to cart",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize:15)),
                        )
                      ],
                    ),
                  ))),
    );
  }
}
