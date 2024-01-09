import 'package:flutter/material.dart';
import 'package:flutter_assignments/assignment2/login.dart';
import 'package:flutter_assignments/assignment2/signup.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Login_Signup(),
  ));
}

class Login_Signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Text(
              "Hello There !",
              style: TextStyle(
                fontSize: 50,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 30),
            Text(
              "Automatic identify verification which enable you to \n verify your identity",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black),
            ),
            SizedBox(
              height: 100,
            ),
            Image(
              image: NetworkImage(
                  "https://i0.wp.com/worldenglishblog.com/wp-content/uploads/2022/04/6-Working-at-desk-min.png?resize=512%2C342&ssl=1"),
              height: 300,
              width: 300,
            )
            // Image.asset("assets/images/new image.jpg",height:10,width: 10,),
            ,
            MaterialButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Login()));
              },
              color: Colors.grey,
              shape: StadiumBorder(),
              child: Text(
                "LOGIN",
                style: TextStyle(color: Colors.black),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Signup()));
              },
              color: Colors.red,
              shape: StadiumBorder(),
              child: Text(
                "SIGN UP",
                style: TextStyle(color: Colors.black),
              ),
            )
          ],
        ),
      ),
    );
  }
}
