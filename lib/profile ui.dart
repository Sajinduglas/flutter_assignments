import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Profile_Ui(),
    debugShowCheckedModeBanner: false,
  ));
}

class Profile_Ui extends StatelessWidget {
  const Profile_Ui({super.key});

  @override
  Widget build(BuildContext context) {
    var headicon = [
      Icon(Icons.privacy_tip_outlined),
      Icon(Icons.history),
      Icon(Icons.help),
      Icon(Icons.settings),
      Icon(Icons.person_add_sharp),
      Icon(Icons.logout)
    ];
    var name = [
      "Privacy",
      "Purchase History",
      "Help & Support",
      "Settings",
      "Invite a friend",
      "Logout"
    ];
    var tailicon = [
      Icon(Icons.chevron_right),
      Icon(Icons.chevron_right),
      Icon(Icons.chevron_right),
      Icon(Icons.chevron_right),
      Icon(Icons.chevron_right),
      Icon(Icons.chevron_right)
    ];
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Icon(Icons.arrow_back, color: Colors.black54),
        actions: [
          Icon(
            Icons.more_horiz,
            color: Colors.black54,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //SizedBox(height: 50),
              CircleAvatar(
                backgroundImage: AssetImage("assets/images/sajin.jpeg"),
                radius: 80,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/images/linkedin.png"),
                    radius: 20,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/images/github.jpg"),
                    radius: 20,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/images/twitter.png"),
                    radius: 20,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/images/fb.jpeg"),
                    radius: 20,
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Sajin",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 35,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "@sajinduglas",
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 15,
                    fontWeight: FontWeight.normal),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Mobile App Developer",
                style: TextStyle(
                    color: Colors.black54,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SingleChildScrollView(
                child: Container(
                  //color: Colors.grey,
                  height: 350,
                  width: 300,///
                  child: ListView.builder(
                      itemCount: 6,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(
                              left: 15, right: 15, top: 15, bottom: 15),
                          child: ListTile(
                            onTap: () {},
                            //   style:color,
                            shape: StadiumBorder(),
                            leading: headicon[index],
                            title: Text(name[index], style: TextStyle(
                                fontSize: 20)),
                            trailing: tailicon[index],
                            tileColor: Colors.black12,
                          ),
                        );
                      }
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

    );
  }
}
