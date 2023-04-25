import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    var num = ["26", "02", "31", "52", "14", "12", "09", "48", "13", "34"];
    var order = [
      "78362786722",
      "89782786756",
      "12332786724",
      "72346867222",
      "99027866512",
      "23457860987",
      "78362781212",
      "12342278123",
      "43234281226",
      "54568886722",
      "87687368625",
      "43457867224",
      "98927869884",
    ];
    var valid = [
      "oct 31 2023",
      "feb 3 2024",
      "aug 22 2023",
      "jan 1 2024",
      "apr 24 2023",
      "jan 3 2024",
      "may 3 2023",
      "may 27 2023",
      "feb 20 2023",
      "june 6 2023",
    ];

    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Container(
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
          body: Padding(
            padding: const EdgeInsets.only(top: 38, left: 15),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Wrap(children: [
                    Icon(Icons.arrow_back_ios_new,
                        size: 18, color: Colors.indigo[900]),
                    Text("\tRewards Wallet\n",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                            color: Colors.indigo[900])),
                  ]),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(9),
                                gradient: const LinearGradient(colors: [
                                  Color.fromARGB(255, 27, 36, 126),
                                  Color.fromARGB(255, 3, 111, 199)
                                ])),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  right: 18, top: 13, bottom: 17, left: 24),
                              child: Column(
                                children: [
                                  const Text(
                                    "Total Balance",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.white),
                                  ),
                                  Row(
                                    children: [
                                      const Text(
                                        "14,325",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 24,
                                            color: Colors.white),
                                      ),
                                      Image.asset(
                                        "assets/icons/coin.png",
                                        width: 50,
                                        height: 50,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Image.asset(
                        "assets/icons/cart.png",
                        width: 150,
                        height: 150,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 100,
                        height: 80,
                        decoration: BoxDecoration(
                          color: Colors.white60,
                          borderRadius: BorderRadius.circular(9),
                          border: Border.all(
                              width: 1,
                              color: const Color.fromARGB(255, 186, 184, 184)),
                        ),
                        child: Column(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Main Account Deposits",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 13, color: Colors.grey[600]),
                            ),
                          ),
                          Wrap(children: [
                            Text(
                              "12,000",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.indigo[900]),
                            ),
                            Image.asset(
                              "assets/icons/coin.png",
                              width: 30,
                              height: 30,
                            ),
                          ])
                        ]),
                      ),
                      Container(
                        width: 100,
                        height: 80,
                        decoration: BoxDecoration(
                          color: Colors.white60,
                          borderRadius: BorderRadius.circular(9),
                          border: Border.all(
                              width: 1,
                              color: const Color.fromARGB(255, 186, 184, 184)),
                        ),
                        child: Column(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Bonus Price Collected",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 13, color: Colors.grey[600]),
                            ),
                          ),
                          Wrap(children: [
                            Text(
                              "3500",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
                                  color: Colors.indigo[900]),
                            ),
                            Image.asset(
                              "assets/icons/coin.png",
                              width: 30,
                              height: 30,
                            ),
                          ])
                        ]),
                      ),
                    ],
                  ),
                  Container(
                      decoration: const BoxDecoration(color: Colors.white60),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: TabBar(
                            labelColor: Colors.indigo[900],
                            labelStyle: TextStyle(
                                fontSize: 15,
                                color: Colors.indigo[900],
                                fontWeight: FontWeight.w700),
                            labelPadding: EdgeInsets.zero,
                            indicatorSize: TabBarIndicatorSize.label,
                            unselectedLabelColor: Colors.grey[800],
                            unselectedLabelStyle: TextStyle(
                                fontSize: 15,
                                color: Colors.grey[600],
                                fontWeight: FontWeight.w700),
                            tabs: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width * .5,
                                child: const Tab(
                                    child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(
                                      Icons.card_giftcard,
                                      size: 16,
                                    ),
                                    Text(
                                      "\tRewards",
                                      style: TextStyle(fontSize: 15),
                                    )
                                  ],
                                )),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * .5,
                                child: const Tab(
                                    child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(
                                      Icons.currency_exchange,
                                      size: 16,
                                    ),
                                    Text(
                                      "\tTransactions",
                                      style: TextStyle(fontSize: 15),
                                    )
                                  ],
                                )),
                              ),
                            ]),
                      )),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: double.infinity,
                      height: 27,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    width: 1,
                                    color: const Color.fromARGB(
                                        255, 25, 33, 122))),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                  left: 10, right: 10, top: 6, bottom: 6),
                              child: Text(
                                'All',
                                style: TextStyle(fontSize: 10),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    width: 1,
                                    color: const Color.fromARGB(
                                        255, 25, 33, 122))),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                  left: 10, right: 10, top: 6, bottom: 6),
                              child: Text(
                                'Direct Rewards',
                                style: TextStyle(fontSize: 10),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    width: 1,
                                    color: const Color.fromARGB(
                                        255, 25, 33, 122))),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                  left: 10, right: 10, top: 6, bottom: 6),
                              child: Text(
                                'Indirect Rewards',
                                style: TextStyle(fontSize: 10),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    width: 1,
                                    color: const Color.fromARGB(
                                        255, 25, 33, 122))),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                  left: 10, right: 10, top: 6, bottom: 6),
                              child: Text(
                                'Offers',
                                style: TextStyle(fontSize: 10),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: 10,
                        itemBuilder: (context, i) {
                          return Padding(
                            padding: const EdgeInsets.all(5),
                            child: Container(
                              width: 100,
                              decoration: BoxDecoration(
                                  color: Colors.white70,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Row(
                                textBaseline: TextBaseline.alphabetic,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(13),
                                    child: Text(
                                      num[i],
                                      style: const TextStyle(
                                          fontSize: 24,
                                          color: Colors.blue,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Text(
                                    'Order ID-${order[i]}',
                                    style: const TextStyle(
                                        fontSize: 14,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(width: 20),
                                  Text(
                                    'Valid Till\n-${valid[i]}',
                                    textAlign: TextAlign.justify,
                                    style: const TextStyle(
                                        fontSize: 11,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                  )
                ],
              ),
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            selectedFontSize: 1,
            unselectedFontSize: 1,
            unselectedIconTheme: const IconThemeData(color: Colors.grey),
            selectedIconTheme: IconThemeData(color: Colors.indigo[900]),
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_filled), label: "\t"),
              BottomNavigationBarItem(icon: Icon(Icons.widgets), label: "\t"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.card_giftcard_outlined), label: "\t"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_pin), label: "\t"),
            ],
            currentIndex: 2,
          ),
        ),
      ),
    );
  }
}
