import 'package:flutter/material.dart';

class CreditCard extends StatefulWidget {
  CreditCard({
    required this.cardnum,
    required this.cardname,
    required this.carddate,
  });

  final String cardnum;
  final String cardname;
  final String carddate;

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
        borderRadius: BorderRadius.circular(16),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xff283c86),
            Color(0xff45a247),
          ],
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Stack(
        children: [
          // Background circular decoration
          Positioned(
            top: -60,
            right: -80,
            child: Container(
              height: 250,
              width: 250,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.1),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            bottom: -60,
            left: -80,
            child: Container(
              height: 250,
              width: 250,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.1),
                shape: BoxShape.circle,
              ),
            ),
          ),

          // Bank logo
          Positioned(
            top: 20,
            right: 20,
            child: Image.asset(
              'assets/bank_logo.png',
              height: 50,
              alignment: Alignment.topRight,
            ),
          ),

          // Chip icon
          Positioned(
            top: 60,
            left: 30,
            child: Image.asset(
              'assets/chip.png', // Add a chip image in assets
              height: 55,
            ),
          ),

          // Card number
          Positioned(
            top: 115,
            left: 50,
            child: Text(
              widget.cardnum.isEmpty ? 'XXXX XXXX XXXX XXXX' : widget.cardnum,
              style: TextStyle(
                fontSize: 22,
                letterSpacing: 2,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ),

          // Cardholder name
          Positioned(
            bottom: 25,
            left: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'CARDHOLDER',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                    color: Colors.white.withOpacity(0.7),
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  widget.cardname.isEmpty ? 'FULL NAME' : widget.cardname,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),

          // Expiry date
          Positioned(
            bottom: 25,
            right: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'VALID THRU',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                    color: Colors.white.withOpacity(0.7),
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  widget.carddate.isEmpty ? 'MM/YY' : widget.carddate,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
