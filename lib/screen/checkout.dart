import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Checkout extends StatelessWidget {
  const Checkout({super.key});

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
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                Text('CHANGE'),
              ],
            ),
            SizedBox(height: 8, ),
            Row(
              children: [
                Icon(Icons.credit_card),
                SizedBox(width: 8,),
                Text('**** **** **** 4747'),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Delivery address', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
                Text('CHANGE'),
              ],
            ),
            SizedBox(height: 8,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.home_outlined),
                Container(
                  width: 300,
                  child: Text('Alexandra Smith \n'
                      'cesu 31 k-2 5.st, SIA Chili \n'
                      'Riga \n'
                      'LV-1012 \n'
                      'Latvia'),
                )
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Delivery option', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
                Text('CHANGE'),
              ],
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      leading: Icon(Icons.man),
                      title: Text("I'll Pick it up myself"),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
