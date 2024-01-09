import 'package:flutter/material.dart';

class MusicHomePage extends StatelessWidget {
  const MusicHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var imag1 = [
      "assets/images/ar rahman hits.jpeg",
      "assets/images/pradeep kumar.jpeg",
      "assets/images/96.jpeg",
    ];
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Musify.",
            style: TextStyle(
                color: Colors.pinkAccent,
                fontSize: 35,
                fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 25,
              ),
              Text('Suggested playlist',
                  style: TextStyle(
                      color: Colors.pinkAccent,
                      fontSize: 25,
                      fontWeight: FontWeight.bold)),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                    height: 200,
                    width: 500,
                    child: ListView.builder(
                        itemCount: 3,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Card(
                            child: Image.asset(imag1[index]),
                            shape: OutlineInputBorder(),
                          );
                        })),
              ),
              SizedBox(
                height: 20,
              ),
              Text("Recommended for you",
                  style: TextStyle(
                      color: Colors.pinkAccent,
                      fontSize: 25,
                      fontWeight: FontWeight.bold)),
              SingleChildScrollView(
                child: Container(
                    height: 500,
                    width: 500,
                    child: ListView.builder(
                        itemCount: 9,
                        itemBuilder: (context, index) {
                          return ListTile(
                           // tileColor: Colors.white,
                            leading: Image.asset("assets/images/96.jpeg"),
                            title: Text("Thabangale",
                                style: TextStyle(
                                    color: Colors.pinkAccent,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold)),
                            subtitle: Text("Govind vasantha",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold)),
                            trailing: Wrap(
                              children: [
                                Icon(Icons.star_border_outlined,color:Colors.pinkAccent ,),
                                Icon(Icons.download,color:Colors.pinkAccent ,),
                              ],

                            )

                            // trailing: Column(
                            //   children: [
                            //         Icon(Icons.star_border_outlined,color:Colors.pinkAccent ,),
                            //          SizedBox(height: 5,),
                            //          Icon(Icons.download,color:Colors.pinkAccent ,),
                            //   ],
                            // ),
                          );
                        })),
              )
            ],
          ),
      ),

    );
  }
}
