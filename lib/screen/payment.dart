import 'package:food_delivery_app/widget/creditcard.dart';
import 'package:food_delivery_app/widget/textfield_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Payment_page extends StatefulWidget {
  const Payment_page({super.key});

  @override
  State<Payment_page> createState() => _Payment_pageState();
}

class _Payment_pageState extends State<Payment_page> {
  TextEditingController cardnum = TextEditingController();
  TextEditingController cardname = TextEditingController();
  TextEditingController carddate = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    cardnum.addListener(updatecard);
    cardname.addListener(updatecard);
    carddate.addListener(updatecard);
  }

  void updatecard() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff6f5f5),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
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
              Text(
                'Credit/Debit card',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
              ),
              CreditCard(
                cardnum: cardnum.text,
                cardname: cardname.text,
                carddate: carddate.text,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 374,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.camera_alt),
                ),
              ),
              textfieldwidget(
                title: 'Name of the Card',
                width: 374,
                height: 70,
                controller: cardname,
              ),
              SizedBox(
                height: 20,
              ),
              textfieldwidget(
                title: 'Card Number',
                width: 374,
                height: 70,
                isSuffixIcon: true,
                icon: Icons.credit_card,
                controller: cardnum,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  textfieldwidget(
                    title: 'Expiry date',
                    width: 176,
                    height: 69,
                    controller: carddate,
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  textfieldwidget(
                    title: 'CVC',
                    width: 176,
                    height: 69,
                    controller: cardnum,
                  ),
                ],
              ),
              SizedBox(
                height: 35,
              ),
              Container(
                height: 56,
                width: 380,
                child: Center(
                  child: Text(
                    'USE THIS CARD',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Color(0xff0BCE83),
                  border: Border.all(color: Color(0xffD9D0E3)),
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
