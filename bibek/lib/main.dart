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
              const Text("Bibek Bohora(avatar)",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                      fontFamily: "Pacifico")),
              const Text(
                "Flutter Developer",
                style: TextStyle(
                    fontFamily: "Sono",
                    fontSize: 22.0,
                    color: Color.fromARGB(255, 248, 249, 250)),
              ),
              SizedBox(
                height: 10,
                width: 320,
                child: Divider(
                  color: Colors.white,
                  thickness: 0.5,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Card(
                margin: EdgeInsets.only(left: 10.2, right: 10.2),
                shadowColor: Colors.red,
                elevation: 5,
                child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ListTile(
                      leading: Icon(Icons.contact_phone, color: Colors.teal),
                      title: Text(
                        "+977-9843111113",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.teal,
                            fontFamily: "Sono"),
                      ),
                    )),
              ),
              const SizedBox(
                height: 10,
              ),
              Card(
                margin: EdgeInsets.only(left: 10.2, right: 10.2),
                shadowColor: Colors.red,
                surfaceTintColor: Colors.red,
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: ListTile(
                    autofocus: true,
                    leading: Icon(Icons.mail, color: Colors.teal),
                    title: Text(
                      "isavtar0977@gmail.com",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.teal,
                          fontSize: 18,
                          fontFamily: "Sono"),
                    ),
                  ),
                ),
              ),
            ])),
      ),
    );
  }
}

//gggg