//Mi card
//modual_06

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Myapps(),
  ));
}

class Myapps extends StatelessWidget {
  const Myapps({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Container(
            width: double.maxFinite,
            height: double.maxFinite,
            color: Colors.teal,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              CircleAvatar(
                  backgroundColor: Color.fromARGB(0, 232, 217, 217),
                  radius: 80,
                  backgroundImage: AssetImage("assets/images/bibek.jpg")),
              SizedBox(
                height: 15,
              ),
              Text("Bibek Bohora(avatar)",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                      fontFamily: "Pacifico")),
              Text(
                "Flutter Developer",
                style: TextStyle(
                    fontFamily: "Sono",
                    fontSize: 22.0,
                    color: Color.fromARGB(255, 248, 249, 250)),
              ),
              Container(
                height: 1,
                margin: EdgeInsets.all(10.2),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 248, 246, 245),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white),
                height: 60,
                padding: EdgeInsets.only(left: 50, right: 50),
                margin: EdgeInsets.only(left: 11, right: 11),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.call,
                        color: Colors.red,
                      ),
                      // Expanded(child: Container()),
                      Text(
                        " +977-9843111113",
                        style: TextStyle(),
                      )
                    ]),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white),
                height: 60,
                padding: EdgeInsets.only(left: 50, right: 50),
                margin: EdgeInsets.only(left: 11, right: 11),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.mail, color: Colors.red),
                      // Expanded(child: Container()),
                      Text(
                        "isavtar0977@gmail.com",
                        style: TextStyle(),
                      )
                    ]),
              ),
            ])),
      ),
    );
  }
}
