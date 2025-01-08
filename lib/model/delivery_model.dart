import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

class delivarymodel {
  SvgPicture icon;
  String text;

  delivarymodel({
    required this.icon,
    required this.text,
  });
}

List<delivarymodel> delivery = [
  delivarymodel(
    icon: SvgPicture.asset(
      'assets/icons/home.svg',
      height: 20.0,
    ),
    text: "I'll pick it up myself",
  ),
  delivarymodel(
    icon: SvgPicture.asset(
      'assets/icons/home.svg',
      height: 20.0,
    ),
    text: 'By Courier',
  ),
  delivarymodel(
    icon: SvgPicture.asset(
      'assets/icons/cycle.svg',
      height: 20.0,
    ),
    text: 'By Plane',
  ),
];
