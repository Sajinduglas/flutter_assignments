import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Listview_assignment1(),
  ));
}

class Listview_assignment1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var image = [
      "assets/images/india gate.jpeg",
      "assets/images/finland.jpeg",
      "assets/images/great wall.jpeg",
      "assets/images/taj mahal.jpeg",
      "assets/images/london.jpeg"
    ];
    var place = ["Delhi", "Finland", "Huairou", "Agra", "London"];
    var Country = ["India", "Europe", "china", "India", "UK"];
    var Population = [
      "150.64million",
      "55.61million",
      "130.64million",
      "150.64million",
      "22.54million"
    ];
    return Scaffold(
        appBar: AppBar(toolbarHeight: 80,
          backgroundColor: Colors.deepOrange,
          title: Text("Cities Around World",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold)),
          centerTitle: true,
        ),
        body: ListView.builder(
            itemCount: 5,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(
                     top: 10, bottom: 10),
                child: Card(
                  color: Colors.orange,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // SizedBox(
                      //   width:5,
                      // ),
                      Image.asset(image[index], width:200, height:130),
                      // SizedBox(
                      //   width: 30,
                      // ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(place[index],
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold)),
                          SizedBox(
                            height: 22,
                          ),
                          Text(Country[index],
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                          SizedBox(
                            height: 1,
                          ),
                          Text(Population[index],
                              style: TextStyle(
                                  fontSize:15, fontWeight: FontWeight.normal)),
                        ],
                      )
                    ],
                  ),
                ),
              );
            }));
  }
}
