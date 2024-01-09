import 'dart:math';

import 'package:flutter/material.dart';

class GridViewAsnOne extends StatelessWidget {
  var icons = [

    Icons.home,
    Icons.alarm,
    Icons.camera_alt_outlined,
    Icons.star,
    Icons.alarm,
    Icons.animation_sharp,
    Icons.abc_outlined,
    Icons.phone,
    Icons.camera_alt_outlined,
    Icons.home,
    Icons.alarm,
    Icons.camera_alt_outlined,

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8, top: 15, bottom: 15),
        child: GridView.builder(
            itemCount: 12,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 100,
                mainAxisSpacing: 15,
                crossAxisSpacing: 15,
                crossAxisCount: 2),
            itemBuilder: (context, index) {
              return Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                color:
                Colors.primaries[Random().nextInt(Colors.primaries.length)],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(icons[index], size: 35),
                    Text(
                      "Heart \nShaker",
                      style:
                      TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              );
            }),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GridViewAsnOne(),
      ));
}
