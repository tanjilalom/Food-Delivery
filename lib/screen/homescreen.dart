import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery_app/screen/categories.dart';
import 'package:food_delivery_app/screen/checkout.dart';
import 'package:food_delivery_app/screen/payment.dart';
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
    PaymentPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentindex,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: [
              BottomNavigationBarItem(
                  backgroundColor: Colors.pinkAccent,
                  icon: SvgPicture.asset(
                    'assets/icons/home.svg',
                    height: 20.0,
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    'assets/icons/shopping-cart.svg',
                    height: 20.0,
                  ), label: ''),
              BottomNavigationBarItem(icon: SvgPicture.asset(
                'assets/icons/user.svg',
                height: 20.0,
              ), label: ''),
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
