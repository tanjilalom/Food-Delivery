import 'package:flutter/material.dart';

class textfieldwidget extends StatelessWidget {
  textfieldwidget({
    super.key,
    required this.title,
    required this.width,
    required this.height,
    this.icon,
    this.isSuffixIcon,
    required this.controller,
  });

  final String title;
  final double width;
  final double height;
  final bool? isSuffixIcon;
  final IconData? icon;

  TextEditingController controller;


  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title),
          TextFormField(
            controller: controller,
            onTapOutside: (event) => FocusScope.of(context).unfocus(),
            decoration: InputDecoration(
              suffixIcon:
                  isSuffixIcon == true ? Icon(icon) : null,
              contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
