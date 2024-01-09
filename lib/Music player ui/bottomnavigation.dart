import 'package:flutter/material.dart';
import 'package:flutter_assignments/Music%20player%20ui/Home%20page.dart';

import 'Music_search.dart';



void main(){
  runApp(MaterialApp(
    home: MusicApp(),
    debugShowCheckedModeBanner: false,
  ));
}
class MusicApp extends StatefulWidget {
  const MusicApp({super.key});

  @override
  State<MusicApp> createState() => _MusicAppState();
}

class _MusicAppState extends State<MusicApp> {
  int index = 0;
var screen =[MusicHomePage(),SearchPage(),Text("hey"),Text("hello"),];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons .home,color: Colors.pinkAccent),label: "Home",),
            BottomNavigationBarItem(icon: Icon(Icons .search,color: Colors.pinkAccent),label: "Search"),
            BottomNavigationBarItem(icon: Icon(Icons .person,color: Colors.pinkAccent),label: "Playlist"),
            BottomNavigationBarItem(icon: Icon(Icons .horizontal_split_sharp,color: Colors.pinkAccent),label: "More"),
          ],
          onTap: (tapindex) {
            setState(() {
              index = tapindex;
            });
          },
          currentIndex:index ,
        selectedItemColor: Colors.pinkAccent,
          ),
      body: screen[index],
    );
  }
}
