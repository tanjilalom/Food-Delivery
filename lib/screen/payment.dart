import 'package:deliveryapp_ui/widget/creditcard.dart';
import 'package:deliveryapp_ui/widget/textfield_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Payment_page extends StatelessWidget {
  const Payment_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff6f5f5),
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){},
          icon: Icon(CupertinoIcons.back),
        ),
        backgroundColor: Color(0xfff6f5f5),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Credit/Debit card', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),),
              CreditCard(),
              SizedBox(height: 25,),
              textfieldwidget(text: 'Name of the Card', width: 374, height: 70,),
              SizedBox(height: 25,),
              textfieldwidget(text: 'Card Number', width: 374, height: 70,),
              SizedBox(height: 25,),
              Row(
                children: [
                  textfieldwidget(text: 'Expiry date', width: 176, height: 69,),
                  SizedBox(width: 25,),
                  textfieldwidget(text: 'CVC', width: 176, height: 69,),
                ],
              )
        
        
        
        
        
            ],
          ),
        ),
      ),
    );
  }
}
