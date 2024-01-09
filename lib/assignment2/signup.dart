import 'package:flutter/material.dart';
import 'package:flutter_assignments/assignment2/Homepage.dart';
import 'package:flutter_assignments/assignment2/login.dart';

class Signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String email = "sajin@123";
    String password = '123';
    String confirmPassword = '1234';
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    final confirmPasswordcontroller = TextEditingController();
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 8,
              ),
              Text(
                "Sign up",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              SizedBox(
                height: 12,
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
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                      hintText: "Password",
                      labelText: "Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(1))),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: TextField(
                  controller: confirmPasswordcontroller,
                  decoration: InputDecoration(
                      hintText: "Confirm password",
                      labelText: "Confirm password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(1))),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              MaterialButton(
                onPressed: () {
                  if (email == emailController &&
                      password == passwordController &&
                      confirmPassword == confirmPasswordcontroller &&
                      passwordController == confirmPasswordcontroller) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Homepage()));
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text("wrong confim password"),
                      backgroundColor: Colors.red,
                    ));
                  }
                },
                color: Colors.blue,
                shape: StadiumBorder(),
                child: Text(
                  "Sign up",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login()));
                },
                child: RichText(
                    text: TextSpan(
                        style: TextStyle(color: Colors.black),
                        children: [
                      TextSpan(),
                      TextSpan(text: "Already have an account?"),
                      TextSpan(
                          text: "login",
                          style: TextStyle(fontWeight: FontWeight.bold))
                    ])),
              )
            ],
          ),
        ));
  }
}
