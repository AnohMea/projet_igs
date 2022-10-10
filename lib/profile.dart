import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:projet_igs/detail.dart';
import 'package:projet_igs/list_produit.dart';

import 'my_drawer_header.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  bool coulor = true;
  Widget mafonction(text, coulor) {
    return Container(
      padding: const EdgeInsets.fromLTRB(23, 0, 23, 0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(23),
          color: coulor ? Colors.blue : Colors.grey),
      child: Center(
          child: Text(
        '$text',
        style: TextStyle(color: coulor ? Colors.white : Colors.black),
      )),
    );
  }

  String? text;
  int? price;
  String? imagePath;

  Widget maliste(text, imagePath, price) {
    return Container(
      decoration: BoxDecoration(border: Border.all(color: Colors.grey,),borderRadius:BorderRadius.circular(10) ),
      
      child: SizedBox(
        width: 150,
        height: 200,
        child: Column(
          children: [
            Material(
            
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                   return const Dateil();
                  },));
                },
                child: Container(
                 
                  margin: EdgeInsets.all(8),
                  height: (120),
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: const Color.fromRGBO(228, 225, 225, 1)),
                  child: Image.asset(
                    '$imagePath',
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text('$text', style: const TextStyle(fontWeight: FontWeight.bold)),
            const Padding(padding: EdgeInsets.all(10.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('$price', style: const TextStyle(color: Colors.blue)),
                Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: const Color.fromRGBO(228, 225, 225, 1)),
                    child: const Icon(Icons.shopping_cart_outlined))
              ],
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2.0,
        actions: const [
          Icon(Icons.notifications_none),
          SizedBox(
            width: 9,
          ),
          Icon(Icons.shopping_cart_outlined),
          SizedBox(
            width: 12,
          ),
        ],

        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        //title: Text('Drawer'),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 6,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Container(
                      width: 315,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromRGBO(228, 225, 225, 1),
                      ),
                      child: TextField(
                        textAlign: TextAlign.left,
                        decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.search),
                            hintText: 'Search',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: const BorderSide(),
                            )),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Stack(children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: const Color.fromRGBO(228, 225, 225, 1),
                        ),
                        width: 40,
                        height: 40,
                      ),
                      Image.asset(
                        'assets/fil2.png',
                        height: 20,
                        width: 20,
                      ),
                    ], alignment: Alignment.center),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'TRADING PRODUCTS',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Container(
                        width: 150,
                        height: 1,
                        color: Color.fromARGB(255, 235, 233, 233),
                        child: const Divider()),
                    const Text(
                      'Seen All',
                      style: TextStyle(color: Colors.blue),
                    )
                  ],
                ),
              ),
              const SizedBox(
                width: 20,
              ),

              // Debut de ma 1eR liste de produits

              Container(
                height: 230,
                padding: EdgeInsets.only(left: 10),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    maliste(
                        'Canape en cuir', 'assets/fteuilVert.png', '\$ 2000'),
                    const SizedBox(
                      width: 20,
                    ),
                    maliste('Fauteil en cuir', 'assets/canape.png', '\$ 2500'),
                    const SizedBox(
                      width: 20,
                    ),
                    maliste(
                        'Fauteil de bureau', 'assets/fauteils.png', '\$ 2500')
                  ],
                ),
              ),

              // FIN de ma 1eR liste de produits

              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Text(
                    'POPULAR CARTEGORIES',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 30,
                    height: 30,
                  ),
                  Text(
                    'Seen All',
                    style: TextStyle(color: Colors.blue),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 30,
                width: 1000,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    mafonction('All', coulor = true),
                    const SizedBox(
                      width: 20,
                    ),
                    mafonction('Electronic And Apllication', coulor = false),
                    const SizedBox(
                      width: 20,
                    ),
                    mafonction('Shirt ', coulor = false),
                    const SizedBox(
                      width: 20,
                    ),
                    mafonction('Habit', coulor = false),
                  ],
                ),
              ),

              // Debut de ma 2e liste de produits

              const SizedBox(
                height: 15,
              ),

              Container(
                height: 230,
                padding: const EdgeInsets.only(left: 10),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    maliste(
                        'Canape en cuir', 'assets/fteuilVert.png', '\$ 2000'),
                    const SizedBox(
                      width: 20,
                    ),
                    maliste('Fauteil en cuir', 'assets/canape.png', '\$ 2500'),
                    const SizedBox(
                      width: 20,
                    ),
                    maliste(
                        'Fauteil de bureau', 'assets/fauteils.png', '\$ 2500')
                  ],
                ),
              ),

              // FIN de ma 2e liste de produits
            ],
          ),
        ),
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const MyHeaderDrawer(),
              MyDrawerList(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.camera_alt), label: 'Camera'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profil'),
      ]),
    );
  }

  Widget MyDrawerList() {
    return Container(
      padding: const EdgeInsets.only(top: 15),
      child: Column(
        children: [
          menuItem(),
        ],
      ),
    );
  }

  Widget menuItem() {
    return Material(
      child: InkWell(
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            children: const [
              Expanded(
                child: Icon(
                  Icons.home,
                  size: 20,
                  color: Colors.black,
                ),
              ),
              Expanded(
                flex: 1,
                child: Text(
                  'Home',
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

