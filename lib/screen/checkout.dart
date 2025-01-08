import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery_app/model/delivery_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Checkout extends StatefulWidget {
  Checkout({super.key});

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  bool isSwitched = false;

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
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Payment method section
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
            SizedBox(height: 8),
            Row(
              children: [
                SvgPicture.asset(
                  'assets/icons/credit-card.svg',
                  height: 20.0,
                ),
                SizedBox(width: 15),
                Text(
                  '**** **** **** 4747',
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff9586A8)),
                ),
              ],
            ),
            SizedBox(height: 20),

            // Delivery address section
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
            SizedBox(height: 16),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SvgPicture.asset(
                  'assets/icons/home.svg',
                  height: 20.0,
                ),
                SizedBox(width: 15),
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Alexandra Smith\n',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff2D0C57),
                          ),
                        ),
                        TextSpan(
                          text: 'cesu 31 k-2 5.st, SIA Chili\n',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff9586A8),
                          ),
                        ),
                        TextSpan(
                          text: 'Riga\n',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff9586A8),
                          ),
                        ),
                        TextSpan(
                          text: 'LV-1012\n',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff9586A8),
                          ),
                        ),
                        TextSpan(
                          text: 'Latvia',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff9586A8),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 20),

            // Delivery options section
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
            SizedBox(height: 16),
            SizedBox(
              height: 160,
              child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: delivery.length,
                itemBuilder: (BuildContext context, int index) {
                  var itemname = delivery[index];
                  return ListTile(
                    leading: itemname.icon, // SvgPicture, not Icon
                    title: Text(itemname.text),
                    contentPadding: EdgeInsets.symmetric(vertical: 2),
                  );
                },
              ),
            ),

            SizedBox(height: 20),

            // Non-contact delivery switch
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
                  value: isSwitched,
                  activeColor: Colors.deepPurple[100],
                  onChanged: (value) {
                    setState(() {
                      isSwitched = value;
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
