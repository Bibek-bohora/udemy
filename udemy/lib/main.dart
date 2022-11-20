//I am rich app
//moduale_1;

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: IamRich()));
}

class IamRich extends StatelessWidget {
  const IamRich({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[900],
          title: Text("I am rich"),
          centerTitle: true,
          actions: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Hello(),
                    ));
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Icon(Icons.settings),
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              // Container(
              //   width: double.maxFinite,
              //   height: 80,
              //   decoration: BoxDecoration(
              //     color: Color.fromARGB(255, 230, 29, 15),
              //     border: Border.all(
              //         style: BorderStyle.solid,
              //         strokeAlign: StrokeAlign.center,
              //         width: 3.0,
              //         color: Color.fromARGB(255, 10, 186, 10)),
              //     borderRadius: BorderRadius.circular(20),
              //   ),
              // ),
              Image(
                image: NetworkImage(
                    "https://yt3.ggpht.com/ytc/AMLnZu8oKErv2C88eNdFG6ucuVOtLtpxsG-4ckUymaCy=s900-c-k-c0x00ffffff-no-rj"),
              ),
              Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDENWjNXUpxuPTRGDgQE_xFDA7G1sWnKyIvg&usqp=CAU"),
              ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context)
                        .showMaterialBanner(MaterialBanner(
                      backgroundColor: Colors.red,
                      content: Text("hello from messanger"),
                      actions: [
                        TextButton(
                            onPressed: () {
                              debugPrint("helloo");
                              ScaffoldMessenger.of(context)
                                  .hideCurrentMaterialBanner();
                            },
                            child: Text("quite"))
                      ],
                    ));
                  },
                  child: Text("helloo"))
            ],
          ),
        ));
  }
}

class Hello extends StatelessWidget {
  const Hello({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 20, 130, 185),
        title: Text("Setting"),
        centerTitle: true,
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Icon(Icons.home),
            ),
          )
        ],
      ),
      body: Center(
        child: Container(
          width: 100,
          height: 500,
          child: Text("hello from hello"),
        ),
      ),
    );
  }
}
