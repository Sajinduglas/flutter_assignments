import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: trsmHome(),
    debugShowCheckedModeBanner: false,
  ));
}

class trsmHome extends StatefulWidget {
  @override
  State<trsmHome> createState() => _trsmHomeState();
}

class _trsmHomeState extends State<trsmHome> {
  var images = [
    'assets/images/germany.jpg',
    'assets/images/italy.jpg',
    'assets/images/france.jpg',
    'assets/images/india.jpg'
  ];
  var destination = ['Germany', 'Italy', 'France', 'India'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
        ),
        body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding:  EdgeInsets.only(right: 300,top: 10,bottom: 10),
                  child: Text(
                    'Popular',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Container(
                      height: 190.0,
                      width: MediaQuery.of(context).size.width - 5.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.blue,
                          image:  DecorationImage(
                              image: AssetImage("assets/images/finland.jpeg"),
                              fit: BoxFit.fill)),
                      child:  Padding(
                        padding: const EdgeInsets.only(top: 150,left: 15),
                        child: Text('Finland',style: TextStyle(fontWeight: FontWeight.w900,color: Colors.white, fontSize: 20),),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Container(
                      height: 190.0,
                      width: MediaQuery.of(context).size.width - 5.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.blue,
                          image:  DecorationImage(
                              image: AssetImage('assets/images/london.jpeg'),
                              fit: BoxFit.fill)),
                      child:  Padding(
                        padding: const EdgeInsets.only(top: 150,left: 15),
                        child: Text('Italy',style: TextStyle(fontWeight: FontWeight.w900,color: Colors.white, fontSize: 20)),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Container(
                      height: 190.0,
                      width: MediaQuery.of(context).size.width - 5.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.blue,
                          image:  DecorationImage(
                              image: AssetImage("assets/images/taj mahal.jpeg"),
                              fit: BoxFit.fill)),
                      child:  Padding(
                        padding: const EdgeInsets.only(top: 150,left: 15),
                        child: Text('India',style: TextStyle(fontWeight: FontWeight.w900,color: Colors.white, fontSize: 20)),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Container(
                      height: 190.0,
                      width: MediaQuery.of(context).size.width - 5.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.blue,
                          image:  DecorationImage(
                              image: AssetImage('assets/images/great wall.jpeg'),
                              fit: BoxFit.fill)),
                      child:  Padding(
                        padding: const EdgeInsets.only(top: 150,left: 15),
                        child: Text('china',style: TextStyle(fontWeight: FontWeight.w900,color: Colors.white, fontSize: 20)),
                      ),
                    ),
                  ),
                ),
                // ListView.builder(
                //     itemCount: 4,
                //     itemBuilder: (context, index) {
                //       return Stack(
                //         children: [
                //           Image.asset(images[index]),
                //           Positioned(child: Text(destination[index]))
                //         ],
                //       );
                //     })
              ],
            ),
            ));
    }
}
