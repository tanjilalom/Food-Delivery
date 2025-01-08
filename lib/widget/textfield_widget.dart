import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class textfieldwidget extends StatelessWidget {
  textfieldwidget({
    super.key,
    required this.title,
    required this.width,
    required this.height,
    this.icon,
    this.isSuffixIcon,
    required this.controller,
    this.inputFormatters,
  });

  final String title;
  final double width;
  final double height;
  final bool? isSuffixIcon;
  final SvgPicture? icon;
  final TextEditingController controller;
  final List<TextInputFormatter>? inputFormatters; // Add this line

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title),
          TextFormField(
            controller: controller,
            inputFormatters: inputFormatters,
            // Pass inputFormatters here
            onTapOutside: (event) => FocusScope.of(context).unfocus(),
            decoration: InputDecoration(
              suffixIcon: isSuffixIcon == true ? icon : null,
              contentPadding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
