import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:ui_task_by_company/second.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => const MaterialApp(
      useInheritedMediaQuery: true,
      title: 'company',
      home: MyWidget(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [
            Color.fromARGB(255, 244, 229, 247),
            Color.fromARGB(255, 220, 235, 246),
            Color.fromARGB(255, 244, 225, 231),
            Color.fromARGB(255, 253, 242, 224),
            Color.fromARGB(255, 220, 235, 246),
          ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 35, bottom: 45, left: 18),
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      elevation: 1,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusDirectional.circular(9))),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 6, bottom: 6),
                    child: Icon(Icons.arrow_back_ios_new,
                        color: Colors.indigo[900]),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Text("Enter the invoice number",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                      color: Colors.indigo[900])),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white70,
                ),
                child: const Padding(
                  padding: EdgeInsets.only(bottom: 15, top: 15, right: 70),
                  child: Text("\t\tEg.0089654735",
                      style: TextStyle(fontSize: 17, color: Colors.grey)),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 70),
                child: Image.asset("assets/icons/bag.png",
                    width: 350, height: 350),
              ),
            ),
          ],
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.white60,
                    borderRadius: BorderRadius.circular(9)),
                child: Padding(
                  padding: const EdgeInsets.only(
                      bottom: 17, top: 17, left: 37, right: 38),
                  child: Wrap(children: [
                    const Icon(Icons.arrow_back_ios_new, size: 16),
                    Text(
                      "\tBack",
                      style: TextStyle(fontSize: 15, color: Colors.indigo[900]),
                    )
                  ]),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9),
                    gradient: const LinearGradient(colors: [
                      Color.fromARGB(255, 27, 36, 126),
                      Color.fromARGB(255, 3, 111, 199)
                    ])),
                child: Padding(
                  padding: const EdgeInsets.only(
                      bottom: 13, top: 10, left: 36, right: 30),
                  child: Wrap(children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const SecondPage()));
                      },
                      child: const Text(
                        "Next",
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 9),
                      child: Icon(Icons.arrow_forward_ios_sharp,
                          size: 15, color: Colors.white),
                    )
                  ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
