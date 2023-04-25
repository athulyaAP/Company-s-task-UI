import 'package:flutter/material.dart';
import 'package:ui_task_by_company/third.dart';

class ForthPage extends StatelessWidget {
  const ForthPage({super.key});

  @override
  Widget build(BuildContext context) {
    List plist = [
      ['My Wallet', Icons.wallet],
      ['Terms & Policies', Icons.message_rounded],
      ['About', Icons.info_outline_rounded],
      ['Logout', Icons.logout],
    ];
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
        appBar: AppBar(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(22),
                  bottomRight: Radius.circular(22))),
          leading: const Icon(
            Icons.arrow_back_outlined,
            color: Colors.black87,
          ),
          backgroundColor: Colors.white,
          toolbarHeight: 24,
          elevation: 1,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(350),
            child: Center(
                child: Column(children: [
              const Text(
                "Account",
                style: TextStyle(fontSize: 17),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Container(
                    width: 130,
                    height: 130,
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0, 2),
                          blurRadius: 10,
                          spreadRadius: -3,
                        ),
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(width: 2, color: Colors.white),
                    ),
                    child: Card(
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      child: Image.asset(
                        'assets/images/email.jpg',
                        width: 120,
                        height: 120,
                        fit: BoxFit.cover,
                      ),
                    )),
              ),
              const Text(
                "Anna Dennis",
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Wrap(children: [
                  Icon(
                    Icons.email,
                    size: 20,
                    color: Colors.indigo[900],
                  ),
                  const Text(
                    "\tannadennis9694@gmail.com",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black87,
                    ),
                  )
                ]),
              ),
              Padding(
                padding: const EdgeInsets.all(6),
                child: Wrap(children: [
                  Icon(
                    Icons.phone_android_rounded,
                    size: 20,
                    color: Colors.indigo[900],
                  ),
                  const Text(
                    "\t+44 24278 8941",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black87,
                    ),
                  )
                ]),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 21),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      gradient: const LinearGradient(colors: [
                        Color.fromARGB(255, 27, 36, 126),
                        Color.fromARGB(255, 3, 111, 199)
                      ])),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 9, bottom: 9, left: 15, right: 15),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => const ThirdPage())));
                      },
                      child: const Text(
                        "Edit Profile",
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ])),
          ),
        ),
        body: SingleChildScrollView(
          child: Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(
                  4,
                  (index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                                offset: Offset(-2, 2),
                                blurRadius: 2,
                                color: Color.fromARGB(31, 177, 177, 177))
                          ],
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.white)),
                      child: ListTile(
                        leading: Icon(
                          plist[index][1],
                          color: Colors.indigo[900],
                        ),
                        title: Text(
                          plist[index][0],
                          style: const TextStyle(
                            color: Colors.black87,
                          ),
                        ),
                        trailing: const Icon(
                          Icons.arrow_forward_ios,
                          color: Color.fromARGB(255, 29, 39, 141),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedFontSize: 1,
          unselectedFontSize: 1,
          unselectedIconTheme: const IconThemeData(color: Colors.grey),
          selectedIconTheme: IconThemeData(color: Colors.indigo[900]),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "\t"),
            BottomNavigationBarItem(icon: Icon(Icons.widgets), label: "\t"),
            BottomNavigationBarItem(
                icon: Icon(Icons.card_giftcard_outlined), label: "\t"),
            BottomNavigationBarItem(icon: Icon(Icons.person_pin), label: "\t"),
          ],
          currentIndex: 3,
        ),
      ),
    );
  }
}
