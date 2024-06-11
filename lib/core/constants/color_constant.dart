import 'package:flutter/material.dart';

/// * Uygulama içi renklerinize tek bir yerden erişmek ve sabit değerlerimizi tutmak için constantlar kullanırız.
class ColorConstant {
  static ColorConstant instance = ColorConstant._init();
  ColorConstant._init();

  final Color maroon = const Color(0xff49243E);
  final Color warm = const Color(0xffDBAFA0);
  final Color white = Colors.white;
  final Color black = Colors.black;
}
