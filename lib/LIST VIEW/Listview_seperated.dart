import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Listview_seperated(),
  ));
}

class Listview_seperated extends StatelessWidget {
  var month = [
    "january",
    "february",
    "march",
    "april",
    "may",
    "june",
    "july",
    "august",
    "september",
    "october",
    "november",
    "december"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List view seperated"),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return Card(
              child: Text(month[index], style: TextStyle(fontSize: 30)),
              color: Colors.white,
            );
          },
          separatorBuilder: (context, index) {
            if (index % 3 == 0) {
              return Card(
                color: Colors.red,
                child: Text("Advertisement", style: TextStyle(fontSize: 30)),
              );
            } else {
              return SizedBox();
            }
          },
          itemCount: 12),
    );
  }
}
