import 'package:deliveryapp_ui/widget/creditcard.dart';
import 'package:flutter/material.dart';

class Payment_page extends StatelessWidget {
  const Payment_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Credit/Debit card', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),),
            CreditCard(),






          ],
        ),
      ),
    );
  }
}
