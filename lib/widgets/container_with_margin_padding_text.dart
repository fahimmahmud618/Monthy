import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:monthy/styles.dart';

Widget ContainerWithMarginPaddingText(BuildContext context, int margin, int padding, String text) {
  return Container(
    alignment: Alignment.center,
    margin: EdgeInsets.all(margin * get_scale_factor(context)),
    padding: EdgeInsets.all(padding * get_scale_factor(context)),
    child: Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
    decoration: BoxDecoration(
        color: appPrimaryColor2, borderRadius: BorderRadius.circular(7)),
  );
}
