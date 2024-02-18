import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Color appPrimaryColor = Color(0xFF406a65);
Color appPrimaryColor2 = Color(0xFF70938b);

double get_scale_factor(BuildContext context){
  double screenWidth = MediaQuery.of(context).size.width;
  return screenWidth / 375.0;
}

TextStyle logoTextStyle(BuildContext context) {
  return TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 20 * get_scale_factor(context),
  );
}