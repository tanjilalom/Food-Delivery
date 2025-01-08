import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:food_delivery_app/widget/creditcard.dart';
import 'package:food_delivery_app/widget/textfield_widget.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  final TextEditingController cardNumberController = TextEditingController();
  final TextEditingController cardNameController = TextEditingController();
  final TextEditingController expiryDateController = TextEditingController();
  final TextEditingController cvcController = TextEditingController();

  @override
  void initState() {
    super.initState();
    cardNumberController.addListener(_updateCard);
    cardNameController.addListener(_updateCard);
    expiryDateController.addListener(_updateCard);
  }

  void _updateCard() {
    setState(() {});
  }

  @override
  void dispose() {
    cardNumberController.dispose();
    cardNameController.dispose();
    expiryDateController.dispose();
    cvcController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff6f5f5),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(CupertinoIcons.back, color: Colors.black),
        ),
        backgroundColor: const Color(0xfff6f5f5),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Credit/Debit Card',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            CreditCard(
              cardnum: cardNumberController.text,
              cardname: cardNameController.text,
              carddate: expiryDateController.text,
            ),
            const SizedBox(height: 20),
            Align(
              alignment: Alignment.center,
              child: IconButton(
                onPressed: () {
                  // Camera functionality
                },
                icon: SvgPicture.asset('assets/icons/camera.svg', height: 30.0),
              ),
            ),
            const SizedBox(height: 20),
            textfieldwidget(
              title: 'Name on Card',
              width: double.infinity,
              height: 70,
              controller: cardNameController,
              inputFormatters: [],
            ),
            const SizedBox(height: 20),
            textfieldwidget(
              title: 'Card Number',
              width: double.infinity,
              height: 70,
              controller: cardNumberController,
              inputFormatters: [
                LengthLimitingTextInputFormatter(19),
                FilteringTextInputFormatter.digitsOnly,
                _CardNumberInputFormatter(),
              ],
              isSuffixIcon: true,
              icon: SvgPicture.asset(
                'assets/icons/credit-card.svg',
                height: 20.0,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: textfieldwidget(
                    title: 'Expiry Date',
                    width: double.infinity,
                    height: 70,
                    controller: expiryDateController,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(5),
                    ],
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: textfieldwidget(
                    title: 'CVC',
                    width: double.infinity,
                    height: 70,
                    controller: cvcController,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(3),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Payment action
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff0BCE83),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  'USE THIS CARD',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Custom formatter to add a space after every 4 digits in a card number
class _CardNumberInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    final newText = newValue.text.replaceAll(' ', '');
    final buffer = StringBuffer();
    for (int i = 0; i < newText.length; i++) {
      buffer.write(newText[i]);
      final isLastChar = i == newText.length - 1;
      if ((i + 1) % 4 == 0 && !isLastChar) {
        buffer.write(' '); // Add space after every 4 characters
      }
    }
    return TextEditingValue(
      text: buffer.toString(),
      selection: TextSelection.collapsed(offset: buffer.length),
    );
  }
}
