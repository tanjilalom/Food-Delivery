import 'package:deliveryapp_ui/widget/textfield_widget.dart';
import 'package:flutter/material.dart';

class CreditCard extends StatefulWidget {
  CreditCard({
    required this.cardnum,
    required this.cardname,
    required this.carddate,
  });

  String cardnum;
  String cardname;
  String carddate;

  @override
  State<CreditCard> createState() => _CreditCardState();
}

class _CreditCardState extends State<CreditCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      height: 240,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.center,
          colors: [
            Color(0xffb993d6),
            Color(0xff8ca6db),
          ],
        ),
      ),
      child: Stack(
        //clipBehavior: Clip.none,
        children: [
          Positioned(
            top: -50,
            right: -100,
            child: Container(
              height: 331,
              width: 335,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.2),
                shape: BoxShape.circle,
              ),
            ),
          ),

          Positioned(
            top: 20,
            right: 25,
            child: Image.asset(
              'assets/bank_logo.png',
              height: 60,
              alignment: Alignment.topRight,
            ),
          ),

          Positioned(
            top: 100,
            left: 50,
            child: Text(
              //'XXXX XXXX XXXX XXXX'
              widget.cardnum,
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
          ),

          Positioned(
            left: 25,
            bottom: 35,
            child: Text(
              //'Name Of The card',
              widget.cardname,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ),

          Positioned(
            right: 25,
            bottom: 35,
            child: Text(
              //'12/23',
              widget.carddate,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
