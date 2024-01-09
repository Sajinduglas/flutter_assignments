import 'package:flutter/material.dart';
import 'package:flutter_assignments/assignment2/Homepage.dart';
import 'package:flutter_assignments/assignment2/signup.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String email = "sajin@gmail.com";
    String password = 'sajin123';

    final emailController = TextEditingController();
    final Password_controller = TextEditingController();

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height:20,
            ),
            Text(
              "Login",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Welcome back! Login ",
              style: TextStyle(
                  color: Colors.black45,
                  fontSize: 10,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                    hintText: "Email",
                    labelText: "Email",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(1))),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: TextField(
                controller: Password_controller,
                decoration: InputDecoration(
                    hintText: "Password",
                    labelText: "Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(1))),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            MaterialButton(
              onPressed: () {
                if (email == emailController.text &&
                    password == Password_controller.text) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Homepage()));
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text(
                      "Invalid Email or password",
                      style: TextStyle(color: Colors.black),
                    ),
                    backgroundColor: Colors.red,
                  ));
                }
                emailController.text ="";
                Password_controller.text="";
              },
              color: Colors.red,
              shape: StadiumBorder(),
              child: Text(
                "LOGIN",
                style: TextStyle(color: Colors.black),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Signup()));
              },
              child: RichText(
                  text: TextSpan(
                      style: TextStyle(color: Colors.black),
                      children: [
                    TextSpan(),
                    TextSpan(text: "Dont have an account?"),
                    TextSpan(
                        text: "signup",
                        style: TextStyle(fontWeight: FontWeight.bold))
                  ])),
            )
          ],
        ),
      ),
    );
  }
}
