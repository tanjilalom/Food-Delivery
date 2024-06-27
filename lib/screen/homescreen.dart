import 'package:deliveryapp_ui/screen/categories.dart';
import 'package:deliveryapp_ui/screen/checkout.dart';
import 'package:deliveryapp_ui/screen/vegetables.dart';
import 'package:flutter/material.dart';


class homepage extends StatefulWidget {
  const homepage({super.key});
  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {



  var _currentindex = 0;
  final pages = [
    Categories(),
    Checkout(),
    Checkout(),
  ];


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentindex,
            items: [
              BottomNavigationBarItem(
                  backgroundColor: Colors.pinkAccent,
                  icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart), label: "Checkout"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: "Profile"),
            ],
            onTap: (index) {
              setState(() {
                _currentindex = index;
              });
            },
          ),
          body: pages[_currentindex],
        ),
      ),
    );
  }
}
