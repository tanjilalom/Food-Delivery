import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Checkout extends StatelessWidget {
  const Checkout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
              children: [Text('Payment method'), Text('CHANGE')],
            ),
            Row(
              children: [Icon(Icons.credit_card), Text('**** **** **** 4747')],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text('Delivery address'), Text('CHANGE')],
            ),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text('Delivery option'), Text('CHANGE')],
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
