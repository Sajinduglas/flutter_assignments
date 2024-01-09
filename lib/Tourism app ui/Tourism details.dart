import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: trsmdetail(),
    debugShowCheckedModeBanner: false,
  ));
}

class trsmdetail extends StatelessWidget {
  const trsmdetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
            children: [
              Container(
                height: 200.0,
                width: MediaQuery.of(context).size.width - 2.0,
               // width: 700,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                            'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcTa4AvEZrQAfXBC9X8G_zixS2va5H-WNu-a_yjufnUzr-itk8pH'))),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 330, top: 10, bottom: 10),
                child: Container(
                  child: Column(children: [
                    Text('Italy',
                        style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                    'Italy is a boot-shaped peninsula that juts out of southern Europe into the Adriatic Sea, Tyrrhenian Sea, Mediterranean Sea, and other waters. Its location has played an important role in its history.The sea surrounds Italy, and mountains crisscross the interior, dividing it into regions. The Alps cut across the top of the country and are streaked with long, thin glacial lakes. From the western end of the Alps, the Apennines mountains stretch south down the entire peninsula.West of the Apennines are wooded hills that are home to many of Italys historic cities, including Rome. In the south are hot, dry coastlands and fertile plains where olives, almonds, and figs are grown.'),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 270, top: 10, bottom: 10),
                child: Container(
                  child: Column(children: [
                    Text('Place to Visit',
                        style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  ]),
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                      height: 130,
                      width: 110,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/finland.jpeg')),
                        shape: BoxShape.rectangle,
                      )),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                      height: 130,
                      width: 110,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/london.jpeg')),
                        shape: BoxShape.rectangle,
                      )),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                      height: 130,
                      width: 110,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/finland.jpeg')),
                        shape: BoxShape.rectangle,
                      )),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
              MaterialButton(
                minWidth: MediaQuery.of(context).size.width - 5.0,
                onPressed: () {},
                child: Text('Press to Explore'),
                shape: StadiumBorder(),
                color: Colors.deepPurple,
              )
            ],
            ),
        );
    }
}