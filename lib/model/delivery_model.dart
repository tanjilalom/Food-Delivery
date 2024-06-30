import 'package:flutter/material.dart';

class delivarymodel {
  Icon icon;
  String text;

  delivarymodel({
    required this.icon,
    required this.text,
  });
}

List<delivarymodel> delivery = [
  delivarymodel(icon: Icon(Icons.directions_walk), text: "I'll pick it up myself",),
  delivarymodel(icon: Icon(Icons.directions_bike), text: 'By Courier',),
  delivarymodel(icon: Icon(Icons.airplanemode_active), text: 'By Plane',),
];
