import 'package:food_delivery_app/model/delivery_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Checkout extends StatefulWidget {
  const Checkout({super.key});

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  bool isSwitched = false;
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkout'),
        centerTitle: true,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(CupertinoIcons.back),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Payment method',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff2D0C57)),
                ),
                Text(
                  'CHANGE',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff2D0C57)),
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Icon(Icons.credit_card),
                SizedBox(
                  width: 25,
                ),
                Text(
                  '**** **** **** 4747',
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff9586A8)),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Delivery address',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff2D0C57)),
                ),
                Text(
                  'CHANGE',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff2D0C57)),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.home_outlined),
                SizedBox(
                  width: 25,
                ),
                Container(
                  width: 197,
                  height: 127,
                  child: Text(
                    'Alexandra Smith \n'
                    'cesu 31 k-2 5.st, SIA Chili'
                    'Riga\n'
                    'LV-1012\n'
                    'Latvia',
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff9586A8)),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Delivery options',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff2D0C57)),
                ),
                Text(
                  'CHANGE',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff2D0C57)),
                ),
              ],
            ),
            SizedBox(
              height: 180,
              child: ListView.builder(
                  itemCount: delivery.length,
                  itemBuilder: (BuildContext context, int index) {
                    var itemname = delivery[index];
                    return ListTile(
                      leading: itemname.icon,
                      title: Text(itemname.text),
                    );
                  }),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Non-contact-delivery',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff2D0C57)),
                ),
                Switch(
                  // This bool value toggles the switch.
                  value: isSwitched,
                  activeColor: Colors.deepPurple[100],
                  onChanged: (value) {
                    setState(() {
                      isSwitched = value;
                    });
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
