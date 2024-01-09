import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  HomePage({super.key});

  var imaage1 = [
    "assets/images/hotel1.jpg",
    "assets/images/hotel2.jpg",
    "assets/images/hotel1.jpg",
  ];
  var image2 = [
    "assets/images/hotel2.jpg",
    "assets/images/hotel1.jpg",
    "assets/images/hotel1.jpg",
    "assets/images/hotel2.jpg",

    "assets/images/hotel2.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello sajin \n Find your favourite hotel",
            style: TextStyle(color: Colors.black)),
        actions: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset("assets/images/sajin.jpeg", fit: BoxFit.cover),
          ),
          SizedBox(
            width: 20,
          )
          // CircleAvatar(
          //   backgroundImage: AssetImage("assets/images/sajin.jpeg"),
          //   // radius: 45,
          // )
        ],
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      fillColor: Colors.grey[200],
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "Search for hotel",
                      prefixIcon: Icon(Icons.search)),
                ),
              ),
              ListTile(
                leading: Text(
                  "Popular hotel",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                    // color: Colors.grey,
                    height: 200,
                    width: 600,
                    child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 200),
                        itemCount: 3,
                        itemBuilder: (context, index) => Card(
                              color: Colors.white,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 95,
                                      width: 190,
                                      child: Image.asset(imaage1[index],
                                          fit: BoxFit.fitWidth),
                                    ),
                                    Text(
                                      "Hotel ASADO",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "A five star hotel in kollam",
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal),
                                    ),
                                    ListTile(
                                      title: Text("Rate\$ 300"),
                                      trailing: Wrap(children: [
                                        Text("4.5",
                                            style: TextStyle(fontSize: 15)),
                                        SizedBox(
                                          width: 3,
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 18,
                                        )
                                      ]),
                                    )
                                  ],
                                ),
                              ),
                            ))),
              ),
              ListTile(
                title: Text("Hotel packages",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
                trailing: Text("View all",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.blueAccent)),
              ),
              SingleChildScrollView(
                child: SizedBox(
                  width: 550,
                  height: 400,
                  //color: Colors.grey,
                  child: ListView.builder(
                      itemCount: 5,
                      itemBuilder: (context, index) => Card(
                            child: SizedBox(
                              height: 90,
                              width: 50,
                              child: Row(
                                children: [
                                  Image.asset(
                                    image2[index],
                                    fit: BoxFit.fitHeight,
                                  ),
                                  // SizedBox(
                                  //   width: 5,
                                  // ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Hotel Hill VIEW",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text('A five-star Hotel in Kollam'),
                                      Text('Rate \$300'),
                                      Wrap(
                                        children: [
                                          Icon(Icons.car_crash_rounded),
                                          Icon(Icons.wifi),
                                          Icon(Icons.emoji_food_beverage)
                                        ],
                                      )
                                    ],
                                  ),
                                  Expanded(
                                      child: TextButton(
                                    onPressed: () {},
                                    child: Text("Book ",
                                        style: TextStyle(
                                            color: Colors.blueAccent)),
                                  ))
                                ],
                              ),
                            ),
                          )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
